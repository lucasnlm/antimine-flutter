import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/global/global_settings_bloc.dart';
import '../../../common/settings/settings_manager.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../models/language_item.dart';
import 'language_state.dart';

class LanguageBloc extends Cubit<LanguageState> {
  LanguageBloc({
    required this.settingsManager,
    required this.globalBloc,
  }) : super(
          const LanguageState(loading: true),
        );

  final SettingsManager settingsManager;
  final GlobalSettingsBloc globalBloc;

  void load() {
    final supported = AppLocaleUtils.supportedLocales.map(
      (e) => e.countryCode == null
          ? e.languageCode
          : '${e.languageCode}_${e.countryCode}',
    );

    final languages = _localeMap.entries
        .where((e) => supported.contains(e.key))
        .map(getLanguageItem)
        .toList();

    final locale = Platform.localeName;
    final systemLocale = locale.split('_').firstOrNull ?? locale;
    final selected = settingsManager.cache.locale ?? systemLocale;

    emit(
      state.copyWith(
        loading: false,
        languages: languages,
        selected: selected,
      ),
    );
  }

  void select(String locale) {
    globalBloc.changeLocale(locale);
    settingsManager.setLocale(locale);
    emit(
      state.copyWith(
        selected: locale,
      ),
    );
  }

  static LanguageItem getLanguageItem(
    MapEntry<String, String> entry,
  ) {
    return LanguageItem(
      name: entry.value,
      locale: entry.key,
    );
  }

  static const Map<String, String> _localeMap = {
    'af': 'Afrikaans',
    'ar': 'العربية',
    'be': 'беларуская',
    'bg': 'български',
    'ca': 'Català',
    'cs': 'Čeština',
    'da': 'Dansk',
    'de': 'Deutsch',
    'en': 'English',
    'eo': 'Esperanto',
    'es': 'Español',
    'eu': 'Euskara',
    'fa': 'فارسی',
    'fi': 'Suomi',
    'fil': 'Filipino',
    'fr': 'Français',
    'he': 'עברית',
    'hi': 'हिन्दी',
    'hu': 'Magyar',
    'id': 'Bahasa Indonesia',
    'it': 'Italiano',
    'ja': '日本語',
    'ko': '한국어',
    'ku': 'Kurdî',
    'lt': 'Lietuvių',
    'lv': 'Latviešu',
    'nl': 'Nederlands',
    'no': 'Norsk',
    'pl': 'Polski',
    'pt_BR': 'Português (Brasil)',
    'pt_PT': 'Português (Portugal)',
    'ro': 'Română',
    'ru': 'Русский',
    'si': 'සිංහල',
    'sk': 'Slovenčina',
    'sv': 'Svenska',
    'ta': 'தமிழ்',
    'th': 'ไทย',
    'tr': 'Türkçe',
    'uk': 'Українська',
    'vec': 'Vèneto',
    'vi': 'Tiếng Việt',
    'zh_CN': '汉语',
    'zh_TW': '漢語',
  };
}
