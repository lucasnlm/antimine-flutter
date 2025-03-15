import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/game_button.dart';
import '../../../foundation/ui/game_button_align.dart';
import '../../../foundation/ui/spacing.dart';
import '../widgets/about_icon.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(leading: const BackButton(), title: Text(t.about)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: Spacing.x24, bottom: Spacing.x16),
          ),
          const Align(alignment: Alignment.center, child: AboutIcon()),
          const SizedBox(height: Spacing.x8),
          SizedBox(
            height: Spacing.x32,
            child: Image.asset(
              './assets/title-only.png',
              fit: BoxFit.cover,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: Spacing.x16),
          FutureBuilder(
            future: PackageInfo.fromPlatform(),
            builder: (context, snapshot) {
              final data = snapshot.data;
              if (data != null) {
                return Text(
                  t.version_s.replaceAll('%1\$s', data.version),
                  textAlign: TextAlign.center,
                  style: textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withAlpha(
                      _titleAlphaColor,
                    ),
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          const SizedBox(height: Spacing.x48),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isTablet ? Spacing.x128 : Spacing.x32,
            ),
            child: Column(
              children: [
                GameButton(
                  isPrimary: true,
                  align: GameButtonAlign.center,
                  label: t.music_by.replaceAll('%1\$s', 'Tatyana Jacques'),
                  onPressed: () => _launchMusicLink(),
                ),
                const SizedBox(height: Spacing.x8),
                GameButton(
                  align: GameButtonAlign.center,
                  label: t.licenses,
                  onPressed: () {
                    showLicensePage(
                      context: context,
                      applicationName: t.app_name,
                    );
                  },
                ),
                const SizedBox(height: Spacing.x8),
                GameButton(
                  align: GameButtonAlign.center,
                  label: 'GitHub',
                  onPressed: () => _launchGitHub(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchGitHub() async {
    final uri = Uri.tryParse(_githubUrl);
    if (uri != null && !await launchUrl(uri)) {
      debugPrint('Could open link.');
    }
  }

  Future<void> _launchMusicLink() async {
    final uri = Uri.tryParse(_videoUrl);
    if (uri != null && !await launchUrl(uri)) {
      debugPrint('Could open link.');
    }
  }

  static final _titleAlphaColor = (255.0 * 0.5).toInt();
  static const _githubUrl = 'https://github.com/lucasnlm/antimine-android/';
  static const _videoUrl =
      'https://open.spotify.com/artist/5Z1PXKko20wSH0yFr9HtNr';
}
