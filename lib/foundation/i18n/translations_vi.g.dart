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
class TranslationsVi extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsVi({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.vi,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <vi>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsVi _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Hướng dẫn';
  @override
  String get tutorial_basic =>
      'Quy tắc trò chơi rất đơn giản, con số trên một ô vuông cho thấy số mìn liền kề với nó và bạn phải gắn cờ tất cả mìn.';
  @override
  String get tutorial_text1 =>
      'Nếu một con số đang chạm số các ô vuông đó, thì tất cả các ô vuông đó đều là mìn.';
  @override
  String get tutorial_text2 =>
      'Sau khi đánh dấu ngọn cờ đầu tiên, hãy xem xét các con số và chọn ô vuông tiếp theo.';
  @override
  String get tutorial_text3 =>
      'Nếu một ô vuông có số cờ như nhau, tất cả ô vuông còn lại liền kề với nó không phải mìn (mũi tên xanh lá).';
  @override
  String get tutorial_text4 =>
      'Hãy xem xét các con số và tiếp tục mở các ô vuông.';
  @override
  String get games => 'Trò chơi';
  @override
  String get tap_to_begin => 'Nhấn để bắt đầu';
  @override
  String get previous_games => 'Trò chơi Trước';
  @override
  String get minefield => 'Độ khó';
  @override
  String get standard => 'Tiêu chuẩn';
  @override
  String get beginner => 'Dễ';
  @override
  String get intermediate => 'Trung bình';
  @override
  String get expert => 'Khó';
  @override
  String get master => 'Bậc thầy';
  @override
  String get legend => 'Huyền thoại';
  @override
  String get open => 'Mở';
  @override
  String get settings => 'Cài đặt';
  @override
  String get control_settings => 'Tùy chỉnh kiểm soát';
  @override
  String get default_button => 'Nút ngầm định';
  @override
  String get shapes => 'Hình thể';
  @override
  String get animations => 'Hiệu ứng động';
  @override
  String get vibration => 'Phản hồi rung';
  @override
  String get about => 'Giới thiệu';
  @override
  String get quit => 'Thoát';
  @override
  String get events => 'Thống kê';
  @override
  String get custom => 'Tuỳ chỉnh';
  @override
  String get start => 'Bắt đầu';
  @override
  String get width => 'Chiều rộng';
  @override
  String get height => 'Chiều cao';
  @override
  String get mines => 'Mìn';
  @override
  String get seed => 'Hạt giống';
  @override
  String get retry_sure =>
      'Nếu chơi trò chơi mới,\ntrò chơi đang chơi dở sẽ bị mất.';
  @override
  String get show_licenses => 'Hiển thị giấy phép';
  @override
  String get new_game_request => 'Bạn có chắc muốn bắt đầu trò chơi mới?';
  @override
  String get mines_remaining => '%d mìn';
  @override
  String get game_time => 'Thời gian chơi';
  @override
  String get settings_general => 'Tổng quan';
  @override
  String get settings_gameplay => 'Cách thức chơi';
  @override
  String get export_settings => 'Xuất ra';
  @override
  String get import_settings => 'Nhập';
  @override
  String get exported_success => 'Settings exported!';
  @override
  String get imported_success => 'Settings imported!';
  @override
  String get settings_accessibility => 'Trợ năng';
  @override
  String get system => 'Hệ thống';
  @override
  String get sign_in_failed =>
      'Không đăng nhập được. Hãy kiểm tra lại kết nối mạng và thử lại.';
  @override
  String get you_won => 'Thắng rồi!';
  @override
  String get victories => 'Thắng';
  @override
  String get you_lost => 'Thua rồi!';
  @override
  String get you_finished => 'Bạn đã hoàn thành!';
  @override
  String get defeats => 'Thua';
  @override
  String get generic_game_over => 'Chúc bạn may mắn lần sau.';
  @override
  String get generic_win => 'Bạn đã tìm thấy %1\$d mìn trong %2\$d giây.';
  @override
  String get fail_to_share => 'Chia sẻ thất bại';
  @override
  String get version_s => 'Phiên bản %1\$s';
  @override
  String get sound_effects => 'Hiệu ứng âm thanh';
  @override
  String get music => 'Âm nhạc';
  @override
  String get music_by => 'Music by %1\$s';
  @override
  String get check_music => 'Listen on Spotify…';
  @override
  String get selected => 'Selected';
  @override
  String get are_you_sure => 'Bạn chắc chứ?';
  @override
  String get enable_automatic_flags => 'Bật tự động đặt cờ';
  @override
  String get open_areas => 'Khu vực mở';
  @override
  String get total_time => 'Tổng thời gian';
  @override
  String get average_time => 'Thời gian bình quân';
  @override
  String get shortest_time => 'Thời gian ngắn nhất';
  @override
  String get performance => 'Hiệu năng';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Dùng dấu hỏi';
  @override
  String get no_guessing_mode => 'Chế độ \'không đoán\'';
  @override
  String get control => 'Điều khiển';
  @override
  String get control_types => 'Loại điều khiển';
  @override
  String get single_click => 'Nhấn 1 lần';
  @override
  String get double_click => 'Nhấn đúp';
  @override
  String get long_press => 'Nhấn giữ';
  @override
  String get touch_sensibility => 'Độ nhạy cảm ứng';
  @override
  String get open_tile => 'Mở';
  @override
  String get flag_tile => 'Cờ';
  @override
  String get retry => 'Thử lại';
  @override
  String get continue_game => 'Tiếp tục';
  @override
  String get empty => 'Trống';
  @override
  String get cant_do_it_now => 'Không thể làm điều đó bây giờ';
  @override
  String get mine_revealed => 'Một mìn đã được tiết lộ';
  @override
  String get fail_to_load_ad => 'Không thể tải quảng cáo';
  @override
  String get you_have_received => 'Bạn đã nhận được: \$param1';
  @override
  String get help_win_a_game =>
      'Để có thêm nhiều gợi ý hơn, bạn phải chiến thắng một trò chơi.';
  @override
  String get unknown_error => 'Lỗi không xác định.';
  @override
  String get error => 'Error!';
  @override
  String get leaderboards => 'Bảng xếp hạng';
  @override
  String get cancel => 'Huỷ';
  @override
  String get resume => 'Tiếp tục';
  @override
  String get yes => 'Có';
  @override
  String get unlock => 'Mở khoá';
  @override
  String get unlock_all => 'Mở khóa tất cả';
  @override
  String get achievements => 'Thành tựu';
  @override
  String get no => 'Không';
  @override
  String get general => 'Tổng quan';
  @override
  String get more => 'Nhiều hơn';
  @override
  String get source_code => 'Mã nguồn';
  @override
  String get translation => 'Dịch thuật';
  @override
  String get language => 'Ngôn ngữ';
  @override
  String get licenses => 'Giấy phép';
  @override
  String get google_play_games => 'Google Play Trò chơi';
  @override
  String get loading => 'Đang tải…';
  @override
  String get creating_valid_game => 'Tạo ra một trò chơi hợp lệ…';
  @override
  String get connect => 'Kết nối';
  @override
  String get connecting => 'Đang kết nối…';
  @override
  String get disconnect => 'Ngừng kết nối';
  @override
  String get disconnected => 'Đã ngắt kết nối';
  @override
  String get new_game => 'Trò chơi mới';
  @override
  String get share => 'Chia sẻ';
  @override
  String get share_menu => 'Chia sẻ…';
  @override
  String get no_network => 'Không có kết nối mạng.';
  @override
  String get delete_all => 'Xóa tất cả';
  @override
  String get appearance => 'Ngoại hình';
  @override
  String get themes => 'Chủ đề';
  @override
  String get delete_all_message => 'Xóa tất cả các sự kiện vĩnh viễn.';
  @override
  String get remove_ad => 'Loại bỏ quảng cáo';
  @override
  String get help => 'Gợi ý';
  @override
  String get back => 'Trở lại';
  @override
  String get donation => 'Quyên góp';
  @override
  String get open_on_game => 'Mở màn hình chơi';
  @override
  String get show_windows => 'Hiện cửa sổ';
  @override
  String get select_language => 'Chọn ngôn ngữ';
  @override
  String get switch_control => 'Chuyển: Gắn cờ và Mở';
  @override
  String get switch_control_desc => 'Dùng nút để chuyển giữa Gắn cờ và Mở';
  @override
  String get app_description =>
      'Bạn phải mở tất cả các ô trên một bãi mìn mà không làm nổ cục mìn nào.';
  @override
  String get app_name => 'Dò mìn';
  @override
  String get do_you_know_how_to_play => 'Bạn có biết chơi dò mìn không?';
  @override
  String get close => 'Đóng';
  @override
  String get open_tutorial => 'Mở Hướng dẫn';
  @override
  String get click_numbers => 'Cho phép nhấn vào các con số';
  @override
  String get flag_when_tap_numbers => 'Gắn cờ khi nhấn vào các con số';
  @override
  String get tap_to_customize => 'Nhấn để tuỳ chỉnh';
  @override
  String get no_guess_fail_warning =>
      'Bãi mìn hiện tại có thể sẽ không giải được mà không đoán!';
  @override
  String get fixed_size => 'Kích thước cố định';
  @override
  String get progressive => 'Tiến trình';
  @override
  String get value_limit_min => 'Min is %d';
  @override
  String get value_limit_max => 'Max is %d';
  @override
  String get proportion_too_high => 'Proportion is too high!';
  @override
  String get highlight_unsolved_numbers => 'Đánh dấu các số chưa giải';
  @override
  String get show_clock => 'Hiển thị đồng hồ';
  @override
  String get donate_request =>
      'Nếu bạn thích trò chơi này, hãy cân nhắc ủng hộ tôi.';
  @override
  String get donate_help => 'Việc đó sẽ giúp giữ cho dự án này hoạt động!';
  @override
  String get acra_toast_text =>
      'Sorry, an error occurred. Please, send the report to the developers.';
  @override
  String get immersive_mode => 'Chế độ toàn màn hình';
  @override
  String get background_color => 'Màu nền';
  @override
  String get main_color => 'Màu chủ đạo';
  @override
  String get premium_exclusive => 'Dành riêng cho Premium!';
  @override
  String get preview => 'Xem trước';
  @override
  String get shared_game => 'Chia sẻ ván cờ';
  @override
  String get shared_game_description =>
      'Chèn vào đây mã của trò chơi quét mìn được chia sẻ với bạn.';
  @override
  String get code => 'Mã';
  @override
  String get image => 'Hình ảnh';
  @override
  String get free => 'Free';
  @override
  String get restore_purchase => 'Khôi phục đăng ký mua';
}
