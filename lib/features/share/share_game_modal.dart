import 'package:flutter/material.dart';

import '../../foundation/i18n/translations.g.dart';
import '../../foundation/ui/spacing.dart';

class ShareGameModal extends StatelessWidget {
  const ShareGameModal({
    super.key,
    required this.onImage,
    required this.onCode,
  });

  final VoidCallback onImage;
  final VoidCallback onCode;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.x8,
              vertical: Spacing.x8,
            ),
            child: Column(children: [
              ListTile(
                title: Text(t.image),
                leading: const Icon(Icons.image),
                onTap: () {
                  onImage();
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                title: Text(t.code),
                leading: const Icon(Icons.tag),
                onTap: () {
                  onCode();
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: Spacing.x16),
            ]),
          ),
        ],
      ),
    );
  }
}
