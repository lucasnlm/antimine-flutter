import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/alert/game_alert.dart';
import '../../../common/models/game_settings.dart';
import '../../../common/models/skins/skin.dart';
import '../../../common/models/themes/game_theme.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/side_effect/side_effect_bloc.dart';
import '../../../foundation/side_effect/side_effect_event.dart';
import '../../dialogs/game_over_dialog.dart';
import '../../dialogs/victory_dialog.dart';
import '../../share/share_game_modal.dart';
import '../bloc/game_bloc.dart';
import '../bloc/game_side_effect.dart';
import '../bloc/game_state.dart';
import '../logic/dimension_manager.dart';
import '../flame/game_renderer.dart';
import '../widgets/action_switcher.dart';
import '../widgets/game_loading_indicator.dart';
import '../widgets/game_preview_button_bar.dart';
import '../widgets/game_timer.dart';
import '../widgets/highlight_container.dart';
import '../widgets/initial_label.dart';
import '../widgets/mine_counter.dart';
import '../widgets/trailing_action.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({
    super.key,
    required this.skin,
    required this.theme,
    required this.dimensionManager,
    required this.settings,
  });

  final Skin skin;
  final GameTheme theme;
  final DimensionManager dimensionManager;
  final GameSettings settings;

  @override
  State<StatefulWidget> createState() {
    return _GameScreenState();
  }
}

class _GameScreenState extends State<GameScreen> {
  late GameRenderer _gameRenderer;

  @override
  void initState() {
    super.initState();
    _gameRenderer = GameRenderer(
      skin: widget.skin,
      theme: widget.theme,
      areaSize: widget.dimensionManager.calcAreaSize(),
      gameBloc: context.read<GameBloc>(),
      sideEffectBloc: context.read<SideEffectBloc>(),
      settings: widget.settings,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) => previous.params != current.params,
      builder: (context, state) {
        final isPortrait =
            MediaQuery.of(context).orientation == Orientation.portrait;

        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: BackButton(onPressed: () => _backNavigate(context)),
            actions: [
              if (!state.params.isPreview)
                TrailingAction(settings: widget.settings),
            ],
            centerTitle: true,
            title: HighlightContainer(
              children: [
                if (widget.settings.showClock) const GameTimer(),
                const MineCounter(),
              ],
            ),
            elevation: 0,
            backgroundColor: widget.theme.background.withAlpha(127),
          ),
          extendBody: true,
          bottomNavigationBar:
              [
                if (state.params.isPreview && state.params.saveId == null)
                  const GamePreviewBottomBar(),
              ].firstOrNull,
          body: BlocListener<SideEffectBloc, SideEffectEvent?>(
            listener: (context, state) => _handleSideEffect(context, state),
            child: Builder(
              builder: (context) {
                _gameRenderer.updateGame(
                  state.params,
                  isPortrait,
                  widget.dimensionManager.appBarHeight(context),
                );

                return Stack(
                  children: [
                    GameWidget(game: _gameRenderer),
                    const GameLoadingIndicator(),
                    if (!state.params.isPreview) const InitialLabel(),
                    if (!state.params.isPreview ||
                        (state.params.isPreview && state.params.saveId != null))
                      ActionSwitcher(
                        isPortrait: isPortrait,
                        controlTypeId: widget.settings.controlType,
                      ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _backNavigate(BuildContext context) {
    final params = context.read<GameBloc>().state.params;
    if (!params.isPreview) {
      context.read<GameBloc>()
        ..stopMusic()
        ..saveGame();
    }
    context.pop();
  }

  void _handleSideEffect(BuildContext context, SideEffectEvent? event) {
    final gameBloc = context.read<GameBloc>();

    if (event is VictoryEffect) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder:
            (_) => VictoryDialog(
              outContext: context,
              bloc: gameBloc,
              settings: widget.settings,
            ),
      );
    } else if (event is GameOverEffect) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder:
            (_) => GameOverDialog(
              outContext: context,
              bloc: gameBloc,
              settings: widget.settings,
            ),
      );
    } else if (event is NoMoreHintsEffect) {
      showGameAlert(
        context: context,
        title: t.help,
        content: t.cant_do_it_now,
        primaryAction: t.ok,
      );
    } else if (event is ShareFailedEffect) {
      showGameAlert(
        context: context,
        title: t.error,
        content: t.fail_to_share,
        primaryAction: t.ok,
      );
    } else if (event is ShareGameRequestEffect) {
      showModalBottomSheet(
        context: context,
        showDragHandle: true,
        builder: (context) {
          return ShareGameModal(
            onImage: () {
              gameBloc.shareGameImage();
            },
            onCode: () {
              gameBloc.shareCode();
            },
          );
        },
      );
    }
  }
}
