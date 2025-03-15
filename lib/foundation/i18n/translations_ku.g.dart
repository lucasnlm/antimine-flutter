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
class TranslationsKu extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsKu({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.ku,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <ku>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsKu _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'فێرکاری';
  @override
  String get tutorial_basic =>
      'یاسای یارییەکە سادەیە ژمارەی سەر گۆڕەپانێک ژمارەی مینەکانی هاوسێی نیشان دەدات و دەبێت هەموو مینەکان ئاڵا بکەیت.';
  @override
  String get tutorial_text1 =>
      'ئەگەر ژمارەیەک دەست بۆ هەمان ژمارەی چوارگۆشەکان بردبێت ، ئەوا گۆڕەپانەکان هەموو مینن.';
  @override
  String get tutorial_text2 =>
      'دوای ئەوەی یەکەم ئاڵات نیشان کرد، پێداچوونەوەبە ژمارەکان بکە و چوارگۆشەی داهاتوو شیبکەرەوە.';
  @override
  String get tutorial_text3 =>
      'ئەگەر گۆڕەپانێک هەمان ژمارەی ئاڵای تێدا بێت ، هەموو چوارگۆشە ماوەکانی تری تەنیشتی مین نین (تیری سەوز).';
  @override
  String get tutorial_text4 =>
      'پێداچوونەوەی ژمارەکان و بەردەوامبوون لە کردنەوەی چوارگۆشەکان.';
  @override
  String get games => 'یارییەکان';
  @override
  String get tap_to_begin => 'دوو کلیک بکە بۆ دەستپێکردن';
  @override
  String get previous_games => 'یارییەکانی پێشوو';
  @override
  String get minefield => 'قورس';
  @override
  String get standard => 'ئاسایی';
  @override
  String get beginner => 'تازەکار';
  @override
  String get intermediate => 'ناوەندی';
  @override
  String get expert => 'پسپۆر';
  @override
  String get master => 'مامۆستا';
  @override
  String get legend => 'ئەفسانەیی';
  @override
  String get open => 'کردنەوە';
  @override
  String get settings => 'ڕێکخستنەکان';
  @override
  String get control_settings => 'Control Settings';
  @override
  String get default_button => 'Default Button';
  @override
  String get shapes => 'Shapes';
  @override
  String get animations => 'ئەنیمەیشنەکان';
  @override
  String get vibration => 'وڵامدانەوەی ڕاوبۆچون';
  @override
  String get about => 'دەربارە';
  @override
  String get quit => 'Quit';
  @override
  String get events => 'ئامار';
  @override
  String get custom => 'ئاسایی';
  @override
  String get start => 'دەستپێکردن';
  @override
  String get width => 'پانی';
  @override
  String get height => 'بەرزی';
  @override
  String get mines => 'مینەکان';
  @override
  String get seed => 'Seed';
  @override
  String get retry_sure =>
      'ئەگەر دەست بە یارییەکی نوێ بکەیت، پێشکەوتنی ئێستات لەدەست دەچێت.';
  @override
  String get show_licenses => 'نیشاندانی مۆڵەتەکان';
  @override
  String get new_game_request => 'ئایا دەتەوێت یاریەکی نوێ دەست پێبکەیت؟';
  @override
  String get mines_remaining => '%dمینەکان';
  @override
  String get game_time => 'کاتی یاری';
  @override
  String get settings_general => 'گشتی';
  @override
  String get settings_gameplay => 'شێوازی یاری';
  @override
  String get export_settings => 'Export';
  @override
  String get import_settings => 'Import';
  @override
  String get exported_success => 'Settings exported!';
  @override
  String get imported_success => 'Settings imported!';
  @override
  String get settings_accessibility => 'توانای گەیشتن';
  @override
  String get system => 'سیستەم';
  @override
  String get sign_in_failed =>
      'چوونە ژوورەوە سەرکەوتوو نەبوو. تکایە گرێدانی تۆڕەکەت بپشکنە و دووبارە هەوڵ بدەرەوە.';
  @override
  String get you_won => 'تۆبردتەوە!';
  @override
  String get victories => 'سەرکەوتنەکان';
  @override
  String get you_lost => 'تۆ دۆڕایی!';
  @override
  String get you_finished => 'تەواوبووی!';
  @override
  String get defeats => 'شکستەکان';
  @override
  String get generic_game_over => 'بەختێکی باش لە یاری داهاتووت.';
  @override
  String get generic_win => 'تۆ %1\$d مینت دۆزیەوە لە %2\$d چرکە.';
  @override
  String get fail_to_share => 'هاوبەش کردن سەرکەوتوو نەبوو';
  @override
  String get version_s => 'وەشانی%1\$s';
  @override
  String get sound_effects => 'کاریگەرەکانی دەنگ';
  @override
  String get music => 'Music';
  @override
  String get music_by => 'Music by %1\$s';
  @override
  String get check_music => 'Listen on Spotify…';
  @override
  String get selected => 'Selected';
  @override
  String get are_you_sure => 'ئایا تۆ دڵنیای?';
  @override
  String get enable_automatic_flags => 'چالاککردنی دانانی ئۆتۆماتیکی ئاڵاکان';
  @override
  String get open_areas => 'کردنەوەی ناوچەکان';
  @override
  String get total_time => 'کۆی کات';
  @override
  String get average_time => 'کاتی مامناوەند';
  @override
  String get shortest_time => 'کورتترین کات';
  @override
  String get performance => 'ئەنجامدان';
  @override
  String get ok => 'باشە';
  @override
  String get use_question_mark => 'نیشانەی پرسیار بەکاربهێنە';
  @override
  String get no_guessing_mode => 'دۆخی پێشبینی نەکردن';
  @override
  String get control => 'کۆنترۆڵەکان';
  @override
  String get control_types => 'Control Types';
  @override
  String get single_click => 'یەک کلیک';
  @override
  String get double_click => 'دوو کلیک';
  @override
  String get long_press => 'کلیکی درێژ';
  @override
  String get touch_sensibility => 'هەستپێکردنی لەمسی';
  @override
  String get open_tile => 'کردنەوە';
  @override
  String get flag_tile => 'ئاڵا';
  @override
  String get retry => 'دووبارە هەوڵ بدە';
  @override
  String get continue_game => 'بەردەوام بە';
  @override
  String get empty => 'بەتاڵ';
  @override
  String get cant_do_it_now => 'مەحاڵە ئێستا ئەوە بکەین';
  @override
  String get mine_revealed => 'A mine has been revealed';
  @override
  String get fail_to_load_ad => 'Fail to load ad';
  @override
  String get you_have_received => 'تۆ وەرت گرتووە: \$param1';
  @override
  String get help_win_a_game => 'For more hints, you must win a game.';
  @override
  String get unknown_error => 'هەڵەیەکی نەناسراو.';
  @override
  String get error => 'Error!';
  @override
  String get leaderboards => 'تەختەپێشەنگ';
  @override
  String get cancel => 'هەڵۆشاندنەوە';
  @override
  String get resume => 'دەستپێکردنەوەی';
  @override
  String get yes => 'بەڵێ';
  @override
  String get unlock => 'کردنەوەی قفل';
  @override
  String get unlock_all => 'Unlock all';
  @override
  String get achievements => 'دەستکەوتەکان';
  @override
  String get no => 'نەخێر';
  @override
  String get general => 'گشتی';
  @override
  String get more => 'زیاتر';
  @override
  String get source_code => 'کۆدی سەرچاوە';
  @override
  String get translation => 'وەرگێڕان';
  @override
  String get language => 'Language';
  @override
  String get licenses => 'مۆڵەتەکان';
  @override
  String get google_play_games => 'یاریییەکانی گۆگڵ پلەی';
  @override
  String get loading => 'چاوەڕوانبە…';
  @override
  String get creating_valid_game => 'Creating valid game…';
  @override
  String get connect => 'په‌یوه‌ندیکردن';
  @override
  String get connecting => '…گرێدان…';
  @override
  String get disconnect => 'پچڕانی پەیوەندی';
  @override
  String get disconnected => 'پچڕانی پەیوەندی';
  @override
  String get new_game => 'یاری نوێ';
  @override
  String get share => 'بڵاوکردنەوە';
  @override
  String get share_menu => 'بڵاوکردنەوە…';
  @override
  String get no_network => 'پەیوەندی ئینتەرنێت نیە.';
  @override
  String get delete_all => 'سڕینەوەی هەمووی';
  @override
  String get appearance => 'دەرکەوتن';
  @override
  String get themes => 'ڕووکارەکان';
  @override
  String get delete_all_message => 'سڕینەوەی هەموو ڕووداوەکان بە هەمیشەیی.';
  @override
  String get remove_ad => 'لابردنی ڕیکڵامەکان';
  @override
  String get help => 'Hint';
  @override
  String get back => 'گەڕانەوە';
  @override
  String get donation => 'بەخشین';
  @override
  String get open_on_game => 'کردنەوە لەسەر شاشەی یاری';
  @override
  String get show_windows => 'پیشاندانی پەنجەرەکان';
  @override
  String get select_language => 'زمان دیاریبکە';
  @override
  String get switch_control => 'گۆڕین: ئاڵا و کردنەوە';
  @override
  String get switch_control_desc =>
      'دوگمە بەکاربهێنە بۆ گۆڕین لە نێوان ئاڵا و کردنەوە';
  @override
  String get app_description =>
      'پێویستە تەختەیەکی لاکێشەیی پاک کە مینی شاراوەی تێدایە بەبێ ئەوەی هیچ کام لەوان بتەقێتەوە.';
  @override
  String get app_name => 'دژە مین';
  @override
  String get do_you_know_how_to_play => 'دەزانی چۆن یاری دژە مین بکەیت؟';
  @override
  String get close => 'داخستن';
  @override
  String get open_tutorial => 'کردنەوەی فێرکاری';
  @override
  String get click_numbers => 'ڕێگەبدە بە کرتەکردن لەسەر ژمارەکان';
  @override
  String get flag_when_tap_numbers => 'Flag when tap on numbers';
  @override
  String get tap_to_customize => 'Tap to customize';
  @override
  String get no_guess_fail_warning =>
      'The current minefield may not be guess-free!';
  @override
  String get fixed_size => 'Fixed Size';
  @override
  String get progressive => 'Progressive';
  @override
  String get value_limit_min => 'Min is %d';
  @override
  String get value_limit_max => 'Max is %d';
  @override
  String get proportion_too_high => 'Proportion is too high!';
  @override
  String get highlight_unsolved_numbers => 'Highlight unsolved numbers';
  @override
  String get show_clock => 'Show clock';
  @override
  String get donate_request =>
      'If you like this game, consider making a donation.';
  @override
  String get donate_help => 'It will help keep this project active!';
  @override
  String get acra_toast_text =>
      'Sorry, an error occurred. Please, send the report to the developers.';
  @override
  String get immersive_mode => 'Immersive Mode';
  @override
  String get background_color => 'Background color';
  @override
  String get main_color => 'Main color';
  @override
  String get premium_exclusive => 'Premium exclusive!';
  @override
  String get preview => 'Preview';
  @override
  String get shared_game => 'Shared game';
  @override
  String get shared_game_description =>
      'Insert here the code of a minesweeper game shared with you.';
  @override
  String get code => 'Code';
  @override
  String get image => 'Image';
  @override
  String get free => 'Free';
  @override
  String get restore_purchase => 'Restore purchase';
}
