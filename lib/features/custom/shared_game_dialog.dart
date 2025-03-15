import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/minefield/minefield_manager.dart';
import '../../common/models/difficulty.dart';
import '../../common/settings/settings_manager.dart';
import '../../foundation/i18n/translations.g.dart';
import '../../foundation/ui/game_button.dart';
import '../../foundation/ui/game_button_align.dart';
import '../../foundation/ui/game_container.dart';
import '../../foundation/ui/spacing.dart';
import '../dialogs/view/game_dialog.dart';
import '../game/game_route.dart';
import 'bloc/custom_bloc.dart';
import 'bloc/custom_state.dart';

class SharedGameDialog extends StatefulWidget {
  const SharedGameDialog({
    super.key,
    required this.context,
    required this.settingsManager,
    required this.minefieldManager,
  });

  final MinefieldManager minefieldManager;
  final SettingsManager settingsManager;
  final BuildContext context;

  @override
  State<StatefulWidget> createState() {
    return _SharedGameDialogState();
  }
}

class _SharedGameDialogState extends State<SharedGameDialog> {
  late TextEditingController _minefieldController;
  late TextEditingController _seedController;

  @override
  void initState() {
    super.initState();
    final state = context.read<CustomBloc>().state;
    _minefieldController = TextEditingController()..text = state.hashBase;
    _seedController = TextEditingController()..text = state.hashSeed;
    final hash = "${state.hashBase}:${state.hashSeed}";
    context.read<CustomBloc>().setHash(hash);
  }

  @override
  void dispose() {
    _minefieldController.dispose();
    _seedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    late double dialogWidth;
    if (screenHeight > screenWidth) {
      dialogWidth = screenWidth * 0.8;
    } else {
      dialogWidth = screenHeight * 0.8;
    }

    final bloc = context.read<CustomBloc>();

    return Center(
      child: GameDialog(
        child: BlocConsumer<CustomBloc, CustomState>(
          listenWhen: (prev, current) {
            return prev.fromClipboard != current.fromClipboard;
          },
          listener: (prev, current) {
            final gameHash = current.gameHash;
            if (gameHash != null) {
              _minefieldController.text = gameHash.hashBase;
              _seedController.text = gameHash.hashSeed;
            }
            bloc.clearClipboard();
          },
          builder: (context, state) {
            final minefield = state.gameHash?.minefield;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: dialogWidth - Spacing.x16,
                  child: AppBar(
                    leading: IconButton(
                      icon: const Icon(Icons.paste),
                      onPressed: () {
                        bloc.pasteHash();
                      },
                    ),
                    backgroundColor: Colors.transparent,
                    surfaceTintColor: Colors.transparent,
                    elevation: 0.0,
                    title: Text(t.new_game),
                    actions: const [CloseButton()],
                  ),
                ),
                const SizedBox(height: Spacing.x16),
                SizedBox(
                  width: dialogWidth - Spacing.x16,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GameContainer(
                        padding: const EdgeInsets.all(Spacing.x16),
                        child: Text(t.shared_game_description),
                      ),
                      const SizedBox(height: Spacing.x24),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: TextField(
                              contextMenuBuilder: null,
                              textCapitalization: TextCapitalization.characters,
                              maxLines: 1,
                              controller: _minefieldController,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9a-zA-Z]'),
                                ),
                              ],
                              autofocus: true,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              onChanged: (value) {
                                bloc.setHashBase(value);
                              },
                              decoration: InputDecoration(
                                isDense: true,
                                border: const OutlineInputBorder(),
                                labelText: t.code,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Spacing.x8,
                              vertical: Spacing.x8,
                            ),
                            child: Text(':', style: TextStyle(fontSize: 24)),
                          ),
                          Flexible(
                            child: TextField(
                              contextMenuBuilder: null,
                              textCapitalization: TextCapitalization.characters,
                              controller: _seedController,
                              maxLines: 1,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9a-zA-Z]'),
                                ),
                              ],
                              autofocus: false,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              onChanged: (value) {
                                bloc.setHashSeed(value);
                              },
                              decoration: InputDecoration(
                                isDense: true,
                                border: const OutlineInputBorder(),
                                labelText: t.seed,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: Spacing.x24),
                GameButton(
                  isPrimary: true,
                  label: t.start,
                  align: GameButtonAlign.center,
                  onPressed:
                      state.validHash && state.isValid && minefield != null
                          ? () async {
                            bloc.saveHashes();
                            Navigator.of(context).pop();

                            final difficulty = widget.minefieldManager
                                .fromMinefield(minefield);

                            if (difficulty == Difficulty.custom) {
                              bloc.setWidth(minefield.width);
                              bloc.setHeight(minefield.height);
                              bloc.setMines(minefield.mines);
                              bloc.saveCustom();
                            }

                            Vector2? initPos = Vector2(
                              state.gameHash?.initX.toDouble() ?? -1,
                              state.gameHash?.initY.toDouble() ?? -1,
                            );

                            if (initPos.x == -1 || initPos.y == -1) {
                              initPos = null;
                            }

                            GameRoute.open(
                              widget.context,
                              difficulty,
                              state.gameHash?.minefield.seed,
                              initPos,
                            );
                          }
                          : null,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
