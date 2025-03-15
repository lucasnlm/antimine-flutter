///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsAr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsAr _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'التدريب';
	@override String get tutorial_basic => 'قاعدة اللعبة بسيطة، الرقم الموجود على المربع يوضح عدد الألغام المجاورة لها وعليك وضع علامة على جميع الألغام.';
	@override String get tutorial_text1 => 'إذا كان الرقم يلامس نفس العدد من المربعات، فإن المربعات كلها ألغام.';
	@override String get tutorial_text2 => 'بعد وضع علامة على العلم الأول، راجع الأرقام وحلل المربع التالي.';
	@override String get tutorial_text3 => 'إذا كان المربع يحمل نفس العدد من الأعلام، فإن جميع المربعات المتبقية المجاورة له ليست ألغاما (السهم الأخضر).';
	@override String get tutorial_text4 => 'راجع الأرقام واستمر في فتح المربعات.';
	@override String get games => 'ألعاب';
	@override String get tap_to_begin => 'انقر للبدء';
	@override String get previous_games => 'الألعاب السابقة';
	@override String get minefield => 'الصعوبة';
	@override String get standard => 'اساسي';
	@override String get beginner => 'مبتدئ';
	@override String get intermediate => 'متوسط';
	@override String get expert => 'خبير';
	@override String get master => 'محترف';
	@override String get legend => 'أسطوري';
	@override String get open => 'فتح';
	@override String get settings => 'الإعدادات';
	@override String get control_settings => 'Control settings';
	@override String get default_button => 'الزر الافتراضي';
	@override String get shapes => 'أشكال';
	@override String get animations => 'الرسوم المتحركة';
	@override String get vibration => 'تغذية راجعة باللمس';
	@override String get about => 'حول';
	@override String get quit => 'خروج';
	@override String get events => 'إحصائيات';
	@override String get custom => 'مخصص';
	@override String get start => 'بدء';
	@override String get width => 'العرض';
	@override String get height => 'الارتفاع';
	@override String get mines => 'الألغام';
	@override String get seed => 'بَذْرَة';
	@override String get retry_sure => 'إذا بدأت لعبة جديدة،\nستفقد تقدمك الحالي.';
	@override String get show_licenses => 'إظهار التراخيص';
	@override String get new_game_request => 'هل تريد بدء لعبة جديدة؟';
	@override String get mines_remaining => '%d لغم';
	@override String get game_time => 'وقت اللعب';
	@override String get settings_general => 'عام';
	@override String get settings_gameplay => 'أسلوب اللعبة';
	@override String get export_settings => 'التصدير';
	@override String get import_settings => 'إستيراد';
	@override String get exported_success => 'تم تصدير الإعدادات!';
	@override String get imported_success => 'تم استيراد الإعدادات!';
	@override String get settings_accessibility => 'إمكانية الوصول';
	@override String get system => 'نظام';
	@override String get sign_in_failed => 'فشل تسجيل الدخول. يرجى التحقق من اتصال الشبكة والمحاولة مرة أخرى.';
	@override String get you_won => 'لقد فزت!';
	@override String get victories => 'الانتصارات';
	@override String get you_lost => 'لقد خسرت!';
	@override String get you_finished => 'تنتهي اللعبة';
	@override String get defeats => 'الهزائم';
	@override String get generic_game_over => 'حظاً سعيداً في لعبتك التالية.';
	@override String get generic_win => 'لقد وجدت %1\$d لغم في %2\$d ثانية.';
	@override String get fail_to_share => 'فشل مشاركة المقطوعة';
	@override String get version_s => 'الإصدار %1\$s';
	@override String get sound_effects => 'مؤثرات صوتية';
	@override String get music => 'موسيقى';
	@override String get music_by => 'الموسيقى بواسطة %1\$s';
	@override String get check_music => 'الاستماع على سبوتيفاي…';
	@override String get selected => 'مختارة';
	@override String get are_you_sure => 'هل أنت متأكد؟';
	@override String get enable_automatic_flags => 'تمكين وضع الأعلام تلقائياً';
	@override String get open_areas => 'المناطق المفتوحة';
	@override String get total_time => 'مجموع الوقت';
	@override String get average_time => 'معدل الزمن';
	@override String get shortest_time => 'أقل وقت';
	@override String get performance => 'الأداء';
	@override String get ok => 'موافق';
	@override String get use_question_mark => 'استخدام الإستفهام';
	@override String get no_guessing_mode => 'وضع "لا تخمين"';
	@override String get control => 'التحكم';
	@override String get control_types => 'نوع التحكم';
	@override String get single_click => 'ضغطة واحدة';
	@override String get double_click => 'نقر مزدوج';
	@override String get long_press => 'ضغط مطوّل';
	@override String get touch_sensibility => 'حساسية اللمس';
	@override String get open_tile => 'فتح';
	@override String get flag_tile => 'علم';
	@override String get retry => 'إعادة المحاولة';
	@override String get continue_game => 'إستمرار';
	@override String get empty => 'فارغ';
	@override String get cant_do_it_now => 'من المستحيل القيام بذلك الآن';
	@override String get mine_revealed => 'تم الكشف عن لغم';
	@override String get fail_to_load_ad => 'فشل التحميل';
	@override String get you_have_received => 'لقد استلمت: \$param1';
	@override String get help_win_a_game => 'للمزيد من المساعدة، يجب أن تفوز بلعبة.';
	@override String get unknown_error => 'خطأ غير معروف.';
	@override String get error => 'خطأ!';
	@override String get leaderboards => 'المتصدرين';
	@override String get cancel => 'الغاء';
	@override String get resume => 'استأنف';
	@override String get yes => 'نعم';
	@override String get unlock => 'فتح';
	@override String get unlock_all => 'فتح الكل';
	@override String get achievements => 'الإنجازات';
	@override String get no => 'لا';
	@override String get general => 'عام';
	@override String get more => 'المزيد';
	@override String get source_code => 'رمز المصدر';
	@override String get translation => 'الترجمة';
	@override String get language => 'اللغة';
	@override String get licenses => 'التراخيص';
	@override String get google_play_games => 'ألعاب Google Play';
	@override String get loading => 'جاري التحميل…';
	@override String get creating_valid_game => 'إنشاء لُعْبَة صالحة…';
	@override String get connect => 'الاتصال';
	@override String get connecting => 'جاري الاتصال…';
	@override String get disconnect => 'قطع الاتصال';
	@override String get disconnected => 'غير متصل';
	@override String get new_game => 'لعبة جديدة';
	@override String get share => 'مشاركة';
	@override String get share_menu => 'مشاركة…';
	@override String get no_network => 'لا يوجد اتصال بالإنترنت.';
	@override String get delete_all => 'مسح الكل';
	@override String get appearance => 'المظهر';
	@override String get themes => 'المظهر';
	@override String get delete_all_message => 'احذف جميع الأحداث نهائيًا.';
	@override String get remove_ad => 'إزالة الإعلانات';
	@override String get help => 'التلميح';
	@override String get back => 'رجوع';
	@override String get donation => 'التبرع';
	@override String get open_on_game => 'فتح على شاشة اللعبة';
	@override String get show_windows => 'إظهار النوافذ';
	@override String get select_language => 'اختر اللغة';
	@override String get switch_control => 'التبديل: العلامة والفتح';
	@override String get switch_control_desc => 'استخدم الزر للتبديل بين العلامة والفتح';
	@override String get app_description => 'يجب عليك مسح لوحة مستطيلة تحتوي على ألغام مخفية دون تفجير أي منها.';
	@override String get app_name => 'Antimine';
	@override String get do_you_know_how_to_play => 'هل تعرف كيف تلعب كانسة الألغام؟';
	@override String get close => 'أغلاق';
	@override String get open_tutorial => 'فتح البرنامج التعليمي';
	@override String get click_numbers => 'السماح بالنقر على الأرقام';
	@override String get flag_when_tap_numbers => 'وضع علامة عند النقر على الأرقام';
	@override String get tap_to_customize => 'انقر للتخصيص';
	@override String get no_guess_fail_warning => 'قد لا يكون حقل الألغام الحالي خاليًا من التخمين!';
	@override String get fixed_size => 'الجم الثابت';
	@override String get progressive => 'التقدمي';
	@override String get value_limit_min => 'الحد الأدنى هو %d';
	@override String get value_limit_max => 'الحد الأقصى هو %d';
	@override String get proportion_too_high => 'النسبة عالية جداً!';
	@override String get highlight_unsolved_numbers => 'تسليط الضوء على الأرقام غير المحلولة';
	@override String get show_clock => 'إظهار الساعة';
	@override String get donate_request => 'إذا أعجبك هذه اللعبة، فكر في تقديم تبرع.';
	@override String get donate_help => 'سيساعد على إبقاء هذا المشروع نشطًا!';
	@override String get acra_toast_text => 'عذرًا، حدث خطأ. الرجاء إرسال التقرير إلى المطورين.';
	@override String get immersive_mode => 'الوضع الغامر';
	@override String get background_color => 'لون الخلفية';
	@override String get main_color => 'اللون الرئيسي';
	@override String get premium_exclusive => 'مميز حصرياً!';
	@override String get preview => 'معاينة';
	@override String get shared_game => 'برقم تعريفي لُعْبَة';
	@override String get shared_game_description => 'أدخل هنا رمز لُعْبَة إزالة الألغام المشتركة معك.';
	@override String get code => 'الكود';
	@override String get image => 'صورة';
	@override String get free => 'مجاني';
	@override String get restore_purchase => 'استعادة المشتريات';
}
