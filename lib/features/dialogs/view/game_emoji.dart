import 'package:flutter/material.dart';

import '../../../foundation/ui/spacing.dart';

class GameEmoji extends StatefulWidget {
  const GameEmoji({super.key, required this.emojis});

  final List<String> emojis;

  String randomEmoji({String? filter}) {
    final list = List.castFrom(emojis);
    list.shuffle();
    if (filter != null) {
      return list.where((emoji) => filter != emoji).first;
    } else {
      return list.first;
    }
  }

  @override
  State<StatefulWidget> createState() {
    return _GameEmojiState();
  }
}

class _GameEmojiState extends State<GameEmoji> {
  late String _emoji;

  @override
  void initState() {
    super.initState();
    widget.emojis.shuffle();
    _emoji = widget.randomEmoji();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: Spacing.x48,
      icon: Text(_emoji, style: const TextStyle(fontSize: Spacing.x48)),
      onPressed: () {
        setState(() {
          _emoji = widget.randomEmoji(filter: _emoji);
        });
      },
    );
  }
}
