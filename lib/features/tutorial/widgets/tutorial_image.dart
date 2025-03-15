import 'package:flutter/material.dart';

import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/ui/spacing.dart';

class TutorialImage extends StatelessWidget {
  const TutorialImage({
    super.key,
    required this.asset,
  });

  final String asset;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.shortestSide - Spacing.x32;
    final constraint = isTablet ? width * 0.25 : width * 0.45;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Spacing.x24,
      ),
      child: SizedBox(
        width: constraint,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Spacing.x8),
          child: SizedBox(
            width: constraint,
            child: Image.asset(
              asset,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
