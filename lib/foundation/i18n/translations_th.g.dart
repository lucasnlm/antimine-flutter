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
class TranslationsTh extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsTh({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.th,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <th>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsTh _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'การใช้งานเบื้องต้น';
  @override
  String get tutorial_basic =>
      'It\'s simple. The number on a square shows the number of mines adjacent to it. The objective is to find and flag all the mines. If you tap on a mine, it explodes.';
  @override
  String get tutorial_text1 =>
      'If a number is touching the same number of squares, then the squares are all mines.';
  @override
  String get tutorial_text2 =>
      'After marking your first flag, review the numbers and analyze the next square.';
  @override
  String get tutorial_text3 =>
      'If a square has the same number of flags, all other remaining squares adjacent to it aren\'t mines (the green arrow).';
  @override
  String get tutorial_text4 => 'Review the numbers and keep opening squares.';
  @override
  String get games => 'เกม';
  @override
  String get tap_to_begin => 'แตะเพื่อเริ่มต้น';
  @override
  String get previous_games => 'เกมก่อนหน้านี้';
  @override
  String get minefield => 'ระดับความยาก';
  @override
  String get standard => 'มาตรฐาน';
  @override
  String get beginner => 'มือใหม่';
  @override
  String get intermediate => 'ปานกลาง';
  @override
  String get expert => 'ผู้เชี่ยวชาญ';
  @override
  String get master => 'เซียน';
  @override
  String get legend => 'ตำนาน';
  @override
  String get open => 'เปิด';
  @override
  String get settings => 'การตั้งค่า';
  @override
  String get control_settings => 'ตั้งค่าการควบคุม';
  @override
  String get default_button => 'Default Button';
  @override
  String get shapes => 'รูปร่าง';
  @override
  String get animations => 'ภาพเคลื่อนไหว';
  @override
  String get vibration => 'สั่นเมื่อแตะ';
  @override
  String get about => 'เกี่ยวกับ';
  @override
  String get quit => 'Quit';
  @override
  String get events => 'สติถิ';
  @override
  String get custom => 'ปรับแต่งเอง';
  @override
  String get start => 'เริ่มต้น';
  @override
  String get width => 'ความกว้าง';
  @override
  String get height => 'วามสูง';
  @override
  String get mines => 'กับระเบิด';
  @override
  String get seed => 'รหัสตัวเลข';
  @override
  String get retry_sure =>
      'หากคุณเริ่มเกมใหม่ความคืบหน้าในปัจจุบันของคุณจะหายไป';
  @override
  String get show_licenses => 'แสดงสิทธิ์การใช้งาน';
  @override
  String get new_game_request => 'ยืนยันเริ่มเกมใหม่หรือไม่？';
  @override
  String get mines_remaining => '%d กับระเบิด';
  @override
  String get game_time => 'เวลาเล่นเกม';
  @override
  String get settings_general => 'ทั่วไป';
  @override
  String get settings_gameplay => 'การเล่นเกม';
  @override
  String get export_settings => 'Export';
  @override
  String get import_settings => 'Import';
  @override
  String get exported_success => 'Settings exported!';
  @override
  String get imported_success => 'Settings imported!';
  @override
  String get settings_accessibility => 'การเข้าถึง';
  @override
  String get system => 'ระบบ';
  @override
  String get sign_in_failed =>
      'ไม่สามารถเชื่อมต่อได้ กรุณาตรวจสอบการเชื่อมต่อเครือข่ายของคุณและลองอีกครั้ง';
  @override
  String get you_won => 'คุณชนะแล้ว!';
  @override
  String get victories => 'ชัยชนะ';
  @override
  String get you_lost => 'คุณแพ้!';
  @override
  String get you_finished => 'คุณเสร็จ!';
  @override
  String get defeats => 'ปราชัย';
  @override
  String get generic_game_over => 'ขอให้โชคดีในเกมถัดไป';
  @override
  String get generic_win => 'คุณพบ %1\$d เหมืองใน %2\$d วินาที';
  @override
  String get fail_to_share => 'ไม่สามารถแชร์ได้';
  @override
  String get version_s => 'เวอร์ชั่น: %1\$s';
  @override
  String get sound_effects => 'เสียงประกอบ';
  @override
  String get music => 'Music';
  @override
  String get music_by => 'Music by %1\$s';
  @override
  String get check_music => 'Listen on Spotify…';
  @override
  String get selected => 'Selected';
  @override
  String get are_you_sure => 'คุณแน่ใจหรือไม่?';
  @override
  String get enable_automatic_flags => 'เปิดใช้การปักธงอัตโนมัติ';
  @override
  String get open_areas => 'เปิดพื้นที่';
  @override
  String get total_time => 'เวลารวม';
  @override
  String get average_time => 'เวลาเฉลี่ย';
  @override
  String get shortest_time => 'เวลาที่สั้นที่สุด';
  @override
  String get performance => 'ประสิทธิภาพ';
  @override
  String get ok => 'ตกลง';
  @override
  String get use_question_mark => 'เครื่องหมายคำถาม';
  @override
  String get no_guessing_mode => 'โหมด \'ไม่ต้องเดา\'';
  @override
  String get control => 'การควบคุม';
  @override
  String get control_types => 'ส่วนควบคุมประเภท';
  @override
  String get single_click => 'แตะเพียงครั้งเดียว';
  @override
  String get double_click => 'แตะสองครั้ง';
  @override
  String get long_press => 'แตะค้างไว้';
  @override
  String get touch_sensibility => 'ความไวสัมผัส';
  @override
  String get open_tile => 'เปิด';
  @override
  String get flag_tile => 'ธง';
  @override
  String get retry => 'ลองอีกครั้ง';
  @override
  String get continue_game => 'ดำเนินการต่อ';
  @override
  String get empty => 'ว่างเปล่า';
  @override
  String get cant_do_it_now => 'ตอนนี้ทำไม่ได้';
  @override
  String get mine_revealed => 'A mine has been revealed';
  @override
  String get fail_to_load_ad => 'Fail to load ad';
  @override
  String get you_have_received => 'คุณได้รับ: \$param1';
  @override
  String get help_win_a_game => 'For more hints, you must win a game.';
  @override
  String get unknown_error => 'ข้อผิดพลาดที่ไม่รู้จัก';
  @override
  String get error => 'Error!';
  @override
  String get leaderboards => 'ลีดเดอร์บอร์ด';
  @override
  String get cancel => 'ยกเลิก';
  @override
  String get resume => 'เริ่มต่อ';
  @override
  String get yes => 'ใช่';
  @override
  String get unlock => 'ปลดล็อค';
  @override
  String get unlock_all => 'ปลดล็อกทั้งหมด';
  @override
  String get achievements => 'ความสำเร็จ';
  @override
  String get no => 'ไม่ใช่';
  @override
  String get general => 'ทั่วไป';
  @override
  String get more => 'มากขึ้น';
  @override
  String get source_code => 'ซอร์สโค้ด';
  @override
  String get translation => 'แปลภาษา';
  @override
  String get language => 'Language';
  @override
  String get licenses => 'ใบอนุญาต';
  @override
  String get google_play_games => 'Google Play เกม';
  @override
  String get loading => 'กำลังโหลด...';
  @override
  String get creating_valid_game => 'Creating valid game…';
  @override
  String get connect => 'เชื่อมต่อ';
  @override
  String get connecting => 'กำลังเชื่อมต่อ…';
  @override
  String get disconnect => 'ตัดการเชื่อมต่อ';
  @override
  String get disconnected => 'ตัดการเชื่อมต่อแล้ว';
  @override
  String get new_game => 'เริ่มเกมใหม่';
  @override
  String get share => 'แชร์';
  @override
  String get share_menu => 'แชร์…';
  @override
  String get no_network => 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต';
  @override
  String get delete_all => 'ลบทั้งหมด';
  @override
  String get appearance => 'ลักษณะที่ปรากฏ';
  @override
  String get themes => 'ธีมส์';
  @override
  String get delete_all_message => 'ลบกิจกรรมทั้งหมดอย่างถาวร';
  @override
  String get remove_ad => 'ลบโฆษณา';
  @override
  String get help => 'Hint';
  @override
  String get back => 'กลับ';
  @override
  String get donation => 'บริจาค';
  @override
  String get open_on_game => 'เปิดบนหน้าจอเกม';
  @override
  String get show_windows => 'แสดงหน้าต่าง';
  @override
  String get select_language => 'เลือกภาษา';
  @override
  String get switch_control => 'สวิตซ์: ตั้งค่าสถานะและเปิด';
  @override
  String get switch_control_desc => 'ใช้ปุ่มเพื่อสลับระหว่างตั้งค่าสถานะและแตะ';
  @override
  String get app_description => 'กู้กับระเบิดที่ซ่อนอยู่จากสนาม';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => 'Do you know how to play minesweeper?';
  @override
  String get close => 'ปิด';
  @override
  String get open_tutorial => 'Open Tutorial';
  @override
  String get click_numbers => 'Allow tap on numbers';
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
