/// Generated file. Do not edit.
///
/// Source: external/l10n/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 39
/// Strings: 6084 (156 per locale)
///
/// Built on 2025-03-14 at 18:30 UTC

// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

import 'translations_ar.g.dart' deferred as l_ar;
import 'translations_be.g.dart' deferred as l_be;
import 'translations_bg.g.dart' deferred as l_bg;
import 'translations_ca.g.dart' deferred as l_ca;
import 'translations_cs.g.dart' deferred as l_cs;
import 'translations_da.g.dart' deferred as l_da;
import 'translations_de.g.dart' deferred as l_de;
import 'translations_el.g.dart' deferred as l_el;
import 'translations_es.g.dart' deferred as l_es;
import 'translations_eu.g.dart' deferred as l_eu;
import 'translations_fi.g.dart' deferred as l_fi;
import 'translations_fil.g.dart' deferred as l_fil;
import 'translations_fr.g.dart' deferred as l_fr;
import 'translations_hi.g.dart' deferred as l_hi;
import 'translations_hu.g.dart' deferred as l_hu;
import 'translations_in.g.dart' deferred as l_in;
import 'translations_it.g.dart' deferred as l_it;
import 'translations_iw.g.dart' deferred as l_iw;
import 'translations_ja.g.dart' deferred as l_ja;
import 'translations_ko.g.dart' deferred as l_ko;
import 'translations_ku.g.dart' deferred as l_ku;
import 'translations_lt.g.dart' deferred as l_lt;
import 'translations_lv.g.dart' deferred as l_lv;
import 'translations_nl.g.dart' deferred as l_nl;
import 'translations_no.g.dart' deferred as l_no;
import 'translations_pl.g.dart' deferred as l_pl;
import 'translations_pt_BR.g.dart' deferred as l_pt_BR;
import 'translations_pt_PT.g.dart' deferred as l_pt_PT;
import 'translations_ro.g.dart' deferred as l_ro;
import 'translations_ru.g.dart' deferred as l_ru;
import 'translations_sk.g.dart' deferred as l_sk;
import 'translations_sv.g.dart' deferred as l_sv;
import 'translations_th.g.dart' deferred as l_th;
import 'translations_tr.g.dart' deferred as l_tr;
import 'translations_uk.g.dart' deferred as l_uk;
import 'translations_vi.g.dart' deferred as l_vi;
import 'translations_zh_CN.g.dart' deferred as l_zh_CN;
import 'translations_zh_TW.g.dart' deferred as l_zh_TW;
part 'translations_en.g.dart';

/// Supported locales.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en'),
	ar(languageCode: 'ar'),
	be(languageCode: 'be'),
	bg(languageCode: 'bg'),
	ca(languageCode: 'ca'),
	cs(languageCode: 'cs'),
	da(languageCode: 'da'),
	de(languageCode: 'de'),
	el(languageCode: 'el'),
	es(languageCode: 'es'),
	eu(languageCode: 'eu'),
	fi(languageCode: 'fi'),
	fil(languageCode: 'fil'),
	fr(languageCode: 'fr'),
	hi(languageCode: 'hi'),
	hu(languageCode: 'hu'),
	india(languageCode: 'in'),
	it(languageCode: 'it'),
	iw(languageCode: 'iw'),
	ja(languageCode: 'ja'),
	ko(languageCode: 'ko'),
	ku(languageCode: 'ku'),
	lt(languageCode: 'lt'),
	lv(languageCode: 'lv'),
	nl(languageCode: 'nl'),
	no(languageCode: 'no'),
	pl(languageCode: 'pl'),
	ptBr(languageCode: 'pt', countryCode: 'BR'),
	ptPt(languageCode: 'pt', countryCode: 'PT'),
	ro(languageCode: 'ro'),
	ru(languageCode: 'ru'),
	sk(languageCode: 'sk'),
	sv(languageCode: 'sv'),
	th(languageCode: 'th'),
	tr(languageCode: 'tr'),
	uk(languageCode: 'uk'),
	vi(languageCode: 'vi'),
	zhCn(languageCode: 'zh', countryCode: 'CN'),
	zhTw(languageCode: 'zh', countryCode: 'TW');

	const AppLocale({
		required this.languageCode,
		this.scriptCode, // ignore: unused_element, unused_element_parameter
		this.countryCode, // ignore: unused_element, unused_element_parameter
	});

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;

	@override
	Future<Translations> build({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) async {
		switch (this) {
			case AppLocale.en:
				return TranslationsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ar:
				await l_ar.loadLibrary();
				return l_ar.TranslationsAr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.be:
				await l_be.loadLibrary();
				return l_be.TranslationsBe(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.bg:
				await l_bg.loadLibrary();
				return l_bg.TranslationsBg(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ca:
				await l_ca.loadLibrary();
				return l_ca.TranslationsCa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.cs:
				await l_cs.loadLibrary();
				return l_cs.TranslationsCs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.da:
				await l_da.loadLibrary();
				return l_da.TranslationsDa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.de:
				await l_de.loadLibrary();
				return l_de.TranslationsDe(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.el:
				await l_el.loadLibrary();
				return l_el.TranslationsEl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.es:
				await l_es.loadLibrary();
				return l_es.TranslationsEs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.eu:
				await l_eu.loadLibrary();
				return l_eu.TranslationsEu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.fi:
				await l_fi.loadLibrary();
				return l_fi.TranslationsFi(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.fil:
				await l_fil.loadLibrary();
				return l_fil.TranslationsFil(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.fr:
				await l_fr.loadLibrary();
				return l_fr.TranslationsFr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.hi:
				await l_hi.loadLibrary();
				return l_hi.TranslationsHi(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.hu:
				await l_hu.loadLibrary();
				return l_hu.TranslationsHu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.india:
				await l_in.loadLibrary();
				return l_in.TranslationsIn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.it:
				await l_it.loadLibrary();
				return l_it.TranslationsIt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.iw:
				await l_iw.loadLibrary();
				return l_iw.TranslationsIw(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ja:
				await l_ja.loadLibrary();
				return l_ja.TranslationsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ko:
				await l_ko.loadLibrary();
				return l_ko.TranslationsKo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ku:
				await l_ku.loadLibrary();
				return l_ku.TranslationsKu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.lt:
				await l_lt.loadLibrary();
				return l_lt.TranslationsLt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.lv:
				await l_lv.loadLibrary();
				return l_lv.TranslationsLv(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.nl:
				await l_nl.loadLibrary();
				return l_nl.TranslationsNl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.no:
				await l_no.loadLibrary();
				return l_no.TranslationsNo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.pl:
				await l_pl.loadLibrary();
				return l_pl.TranslationsPl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ptBr:
				await l_pt_BR.loadLibrary();
				return l_pt_BR.TranslationsPtBr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ptPt:
				await l_pt_PT.loadLibrary();
				return l_pt_PT.TranslationsPtPt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ro:
				await l_ro.loadLibrary();
				return l_ro.TranslationsRo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ru:
				await l_ru.loadLibrary();
				return l_ru.TranslationsRu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.sk:
				await l_sk.loadLibrary();
				return l_sk.TranslationsSk(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.sv:
				await l_sv.loadLibrary();
				return l_sv.TranslationsSv(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.th:
				await l_th.loadLibrary();
				return l_th.TranslationsTh(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.tr:
				await l_tr.loadLibrary();
				return l_tr.TranslationsTr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.uk:
				await l_uk.loadLibrary();
				return l_uk.TranslationsUk(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.vi:
				await l_vi.loadLibrary();
				return l_vi.TranslationsVi(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.zhCn:
				await l_zh_CN.loadLibrary();
				return l_zh_CN.TranslationsZhCn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.zhTw:
				await l_zh_TW.loadLibrary();
				return l_zh_TW.TranslationsZhTw(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	@override
	Translations buildSync({
		Map<String, Node>? overrides,
		PluralResolver? cardinalResolver,
		PluralResolver? ordinalResolver,
	}) {
		switch (this) {
			case AppLocale.en:
				return TranslationsEn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ar:
				return l_ar.TranslationsAr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.be:
				return l_be.TranslationsBe(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.bg:
				return l_bg.TranslationsBg(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ca:
				return l_ca.TranslationsCa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.cs:
				return l_cs.TranslationsCs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.da:
				return l_da.TranslationsDa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.de:
				return l_de.TranslationsDe(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.el:
				return l_el.TranslationsEl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.es:
				return l_es.TranslationsEs(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.eu:
				return l_eu.TranslationsEu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.fi:
				return l_fi.TranslationsFi(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.fil:
				return l_fil.TranslationsFil(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.fr:
				return l_fr.TranslationsFr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.hi:
				return l_hi.TranslationsHi(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.hu:
				return l_hu.TranslationsHu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.india:
				return l_in.TranslationsIn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.it:
				return l_it.TranslationsIt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.iw:
				return l_iw.TranslationsIw(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ja:
				return l_ja.TranslationsJa(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ko:
				return l_ko.TranslationsKo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ku:
				return l_ku.TranslationsKu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.lt:
				return l_lt.TranslationsLt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.lv:
				return l_lv.TranslationsLv(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.nl:
				return l_nl.TranslationsNl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.no:
				return l_no.TranslationsNo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.pl:
				return l_pl.TranslationsPl(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ptBr:
				return l_pt_BR.TranslationsPtBr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ptPt:
				return l_pt_PT.TranslationsPtPt(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ro:
				return l_ro.TranslationsRo(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.ru:
				return l_ru.TranslationsRu(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.sk:
				return l_sk.TranslationsSk(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.sv:
				return l_sv.TranslationsSv(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.th:
				return l_th.TranslationsTh(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.tr:
				return l_tr.TranslationsTr(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.uk:
				return l_uk.TranslationsUk(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.vi:
				return l_vi.TranslationsVi(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.zhCn:
				return l_zh_CN.TranslationsZhCn(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
			case AppLocale.zhTw:
				return l_zh_TW.TranslationsZhTw(
					overrides: overrides,
					cardinalResolver: cardinalResolver,
					ordinalResolver: ordinalResolver,
				);
		}
	}

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.getTranslations(this);
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(
		utils: AppLocaleUtils.instance,
		lazy: true,
	);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static Future<AppLocale> setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static Future<AppLocale> setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static Future<AppLocale> useDeviceLocale() => instance.useDeviceLocale();
	static Future<void> setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);

	// synchronous versions
	static AppLocale setLocaleSync(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocaleSync(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRawSync(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRawSync(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocaleSync() => instance.useDeviceLocaleSync();
	static void setPluralResolverSync({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolverSync(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(
		baseLocale: AppLocale.en,
		locales: AppLocale.values,
	);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}
