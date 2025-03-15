import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef DialogCallback = void Function(BuildContext);

void showGameAlert({
  required BuildContext context,
  required String content,
  required String primaryAction,
  DialogCallback? onPrimary,
  bool barrierDismissible = false,
  bool isDestructiveAction = false,
  bool isDefaultAction = true,
  String? title,
}) {
  if (Platform.isIOS) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return AlertDialog(
          title: title != null ? Text(title) : null,
          content: Text(content),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: isDefaultAction,
              isDestructiveAction: isDestructiveAction,
              onPressed: onPrimary != null
                  ? () => onPrimary(context)
                  : () => Navigator.of(context).pop(),
              child: Text(primaryAction),
            ),
          ],
        );
      },
    );
  } else {
    showDialog<String>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) => AlertDialog(
        title: title != null ? Text(title) : null,
        content: Text(content),
        actions: [
          TextButton(
            onPressed: onPrimary != null
                ? () => onPrimary(context)
                : () => Navigator.of(context).pop(),
            child: Text(primaryAction),
          ),
        ],
      ),
    );
  }
}
