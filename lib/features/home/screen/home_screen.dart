import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/side_effect/side_effect_bloc.dart';
import '../../../foundation/side_effect/side_effect_event.dart';
import '../../../foundation/ui/game_button.dart';
import '../../../foundation/ui/home_container.dart';
import '../../../foundation/ui/spacing.dart';
import '../../about/about_route.dart';
import '../../controls/controls_route.dart';
import '../../game/game_route.dart';
import '../../history/history_route.dart';
import '../../languages/language_route.dart';
import '../../settings/settings_route.dart';
import '../../stats/stats_route.dart';
import '../../themes/themes_router.dart';
import '../../tutorial/tutorial_route.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_side_effects.dart';
import '../bloc/home_state.dart';
import '../widgets/game_title.dart';
import '../widgets/home_difficulty_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollBehavior = ScrollConfiguration.of(context);
    return BlocListener<SideEffectBloc, SideEffectEvent?>(
      listener: (context, state) => _handleSideEffect(context, state),
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(title: const GameTitle()),
        body: ScrollConfiguration(
          behavior: scrollBehavior.copyWith(scrollbars: false),
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.x24,
                vertical: Spacing.x16,
              ),
              child: SafeArea(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        HomeContainer(
                          children: [
                            GameButton(
                              isPrimary: true,
                              onPressed: () {
                                context.read<HomeBloc>().startGame();
                              },
                              icon: Icons.play_arrow,
                              label:
                                  state.setShowContinueGame
                                      ? t.continue_game
                                      : t.start,
                            ),
                            if (!state.newGameExpanded)
                              GameButton(
                                onPressed: () {
                                  context.read<HomeBloc>().expandNewGame();
                                },
                                icon: Icons.add,
                                label: t.new_game,
                              ),
                            if (state.newGameExpanded)
                              const HomeDifficultyPanel(),
                          ],
                        ),
                        HomeContainer(
                          children: [
                            GameButton(
                              onPressed: () async {
                                await ThemesRoute.open(context);
                              },
                              icon: Icons.format_paint,
                              label: t.themes,
                            ),
                            GameButton(
                              onPressed: () {
                                ControlsRoute.open(context);
                              },
                              icon: Icons.gamepad_rounded,
                              label: t.control,
                            ),
                            GameButton(
                              onPressed: () async {
                                await StatsRoute.open(context);
                              },
                              icon: Icons.bar_chart,
                              label: t.events,
                            ),
                            if (state.setShowContinueGame)
                              GameButton(
                                onPressed: () => HistoryRoute.open(context),
                                icon: Icons.history,
                                label: t.previous_games,
                              ),
                            GameButton(
                              onPressed: () => SettingsRoute.open(context),
                              icon: Icons.settings,
                              label: t.settings,
                            ),
                          ],
                        ),
                        HomeContainer(
                          children: [
                            GameButton(
                              onPressed: () async {
                                await TutorialRoute.open(context);
                              },
                              icon: Icons.school,
                              label: t.tutorial,
                            ),
                            GameButton(
                              onPressed: () => LanguageRoute.open(context),
                              icon: Icons.translate,
                              label: t.language,
                            ),
                            GameButton(
                              onPressed: () => AboutRoute.open(context),
                              icon: Icons.info,
                              label: t.about,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleSideEffect(BuildContext context, SideEffectEvent? state) async {
    if (state is StartNewGameSideEffect) {
      GameRoute.open(context, state.difficulty);
      context.read<HomeBloc>().newGameStarted();
    }
  }
}
