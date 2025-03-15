import 'package:flutter/cupertino.dart';

class ActionList extends StatelessWidget {
  const ActionList({
    super.key,
    required this.isPortrait,
    required this.children,
  });

  final bool isPortrait;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Flex(
      key: const Key('action_list'),
      direction: isPortrait ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: children,
    );
  }
}
