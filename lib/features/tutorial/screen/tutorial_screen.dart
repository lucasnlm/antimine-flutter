import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/models/difficulty.dart';
import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/game_button.dart';
import '../../../foundation/ui/game_button_align.dart';
import '../../../foundation/ui/spacing.dart';
import '../../game/game_route.dart';
import '../widgets/tutorial_container.dart';
import '../widgets/tutorial_image.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({super.key});

  Future<void> _launchVideoTutorial() async {
    final locale = LocaleSettings.currentLocale.languageCode;
    final videoUrlMap = {
      'en': _defaultVideoUrl,
      'es': 'https://www.youtube.com/watch?v=2lP-jlfrba0',
      'pt': 'https://www.youtube.com/shorts/6ymh9qfkDK4',
    };
    final targetUrl = videoUrlMap[locale] ?? _defaultVideoUrl;

    final uri = Uri.tryParse(targetUrl);
    if (uri != null && !await launchUrl(uri)) {
      debugPrint('Could not launch video tutorial.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(t.tutorial),
        actions: [
          IconButton(
            icon: const Icon(Icons.help),
            tooltip: t.help,
            onPressed: () async {
              await _launchVideoTutorial();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: Spacing.x16,
              horizontal: isTablet ? Spacing.x128 : 0.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                TutorialContainer(text: t.tutorial_basic),
                const TutorialImage(asset: 'assets/tutorial/tutorial_1.png'),
                TutorialContainer(text: t.tutorial_text1),
                const TutorialImage(asset: 'assets/tutorial/tutorial_2.png'),
                TutorialContainer(text: t.tutorial_text2),
                const TutorialImage(asset: 'assets/tutorial/tutorial_3.png'),
                TutorialContainer(text: t.tutorial_text3),
                TutorialContainer(
                  text: t.tutorial_text4,
                  leftIcon: Icons.refresh_rounded,
                ),
                Padding(
                  padding: const EdgeInsets.all(Spacing.x16),
                  child: GameButton(
                    isPrimary: true,
                    icon: Icons.school,
                    label: 'YouTube',
                    onPressed: () async {
                      await _launchVideoTutorial();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: Spacing.x8,
            horizontal: isTablet ? Spacing.x128 : Spacing.x8,
          ),
          child: GameButton(
            isPrimary: true,
            align: GameButtonAlign.center,
            label: t.start,
            onPressed: () {
              GameRoute.open(context, Difficulty.beginner);
            },
          ),
        ),
      ),
    );
  }

  static const _defaultVideoUrl = 'https://www.youtube.com/watch?v=2kxM87neXRw';
}
