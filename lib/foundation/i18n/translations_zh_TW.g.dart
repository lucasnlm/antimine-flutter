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
class TranslationsZhTw extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhTw({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhTw,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <zh-TW>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsZhTw _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => '教程';
	@override String get tutorial_basic => '遊戲規則很簡單，方格上的數字顯示與其相鄰的地雷數量，您必須標記所有地雷。';
	@override String get tutorial_text1 => '如果一個數字與相同數量的方塊接觸，那麼這些方塊都是地雷。';
	@override String get tutorial_text2 => '標記第一枚旗幟後，檢查數字並分析下一個方塊。';
	@override String get tutorial_text3 => '如果一個方格具有相同數量的旗幟，則與其相鄰的所有其他剩餘方格都不是地雷（綠色箭頭）。';
	@override String get tutorial_text4 => '查看數字並繼續打開正方形。';
	@override String get games => '遊戲';
	@override String get tap_to_begin => '點按即可開始';
	@override String get previous_games => '往屆比賽';
	@override String get minefield => '困難';
	@override String get standard => '標準';
	@override String get beginner => '初學者';
	@override String get intermediate => '中間的';
	@override String get expert => '專家';
	@override String get master => '掌握';
	@override String get legend => '傳奇';
	@override String get open => '打開';
	@override String get settings => '設置';
	@override String get control_settings => '控制设置';
	@override String get default_button => '默認按鈕';
	@override String get shapes => '形狀';
	@override String get animations => '動畫';
	@override String get vibration => '觸覺反饋';
	@override String get about => '關於';
	@override String get quit => '退出';
	@override String get events => '統計數據';
	@override String get custom => '風俗';
	@override String get start => '開始';
	@override String get width => '寬';
	@override String get height => '高';
	@override String get mines => '地雷數';
	@override String get seed => '種子碼';
	@override String get retry_sure => '如果您開始新遊戲，您當前的進度將丟失。';
	@override String get show_licenses => '顯示許可證';
	@override String get new_game_request => '你想開始一個新的遊戲嗎？';
	@override String get mines_remaining => '%d 個地雷';
	@override String get game_time => '遊戲時間';
	@override String get settings_general => '一般的';
	@override String get settings_gameplay => '遊戲玩法';
	@override String get export_settings => '导出';
	@override String get import_settings => '導入';
	@override String get exported_success => '設定值已匯出！';
	@override String get imported_success => '設定已導入！';
	@override String get settings_accessibility => '無障礙';
	@override String get system => '系統';
	@override String get sign_in_failed => '無法登錄。請檢查您的網絡連接，然後重試。';
	@override String get you_won => '你贏了！';
	@override String get victories => '勝利';
	@override String get you_lost => '你輸了！';
	@override String get you_finished => '你完成了！';
	@override String get defeats => '失敗';
	@override String get generic_game_over => '祝你下一場比賽好運。';
	@override String get generic_win => '您在 %2\$d 秒內發現了 %1\$d 個地雷。';
	@override String get fail_to_share => '分享失敗';
	@override String get version_s => '版本 %1\$s';
	@override String get sound_effects => '聲音特效';
	@override String get music => '音樂';
	@override String get music_by => 'Music by %1\$s';
	@override String get check_music => 'Listen on Spotify…';
	@override String get selected => '已選取';
	@override String get are_you_sure => '你確定嗎？';
	@override String get enable_automatic_flags => '啟用自動放置標誌';
	@override String get open_areas => '開放區域';
	@override String get total_time => '總時間';
	@override String get average_time => '平均時間';
	@override String get shortest_time => '最短時間';
	@override String get performance => '表現';
	@override String get ok => '好的';
	@override String get use_question_mark => '使用問號';
	@override String get no_guessing_mode => '“不猜測”模式';
	@override String get control => '控件';
	@override String get control_types => '控制類型';
	@override String get single_click => '單擊';
	@override String get double_click => '雙擊';
	@override String get long_press => '長按';
	@override String get touch_sensibility => '觸摸靈敏度';
	@override String get open_tile => '打開';
	@override String get flag_tile => '旗幟';
	@override String get retry => '重試';
	@override String get continue_game => '繼續';
	@override String get empty => '空的';
	@override String get cant_do_it_now => '現在不可能這樣做';
	@override String get mine_revealed => '一個地雷已經被發現';
	@override String get fail_to_load_ad => '廣告載入失敗';
	@override String get you_have_received => '您已收到：\$param1';
	@override String get help_win_a_game => '要獲得更多幫助，您必須贏得一場比賽。';
	@override String get unknown_error => '未知錯誤。';
	@override String get error => '錯誤！';
	@override String get leaderboards => '排行榜';
	@override String get cancel => '取消';
	@override String get resume => '恢復';
	@override String get yes => '是的';
	@override String get unlock => '開鎖';
	@override String get unlock_all => '全部解鎖';
	@override String get achievements => '成就';
	@override String get no => '不';
	@override String get general => '一般的';
	@override String get more => '更多的';
	@override String get source_code => '源代碼';
	@override String get translation => '翻譯';
	@override String get language => '語言';
	@override String get licenses => '執照';
	@override String get google_play_games => '谷歌遊戲';
	@override String get loading => '正在加載…';
	@override String get creating_valid_game => '創建一個新遊戲';
	@override String get connect => '連接';
	@override String get connecting => '正在連接…';
	@override String get disconnect => '斷開';
	@override String get disconnected => '斷開連接';
	@override String get new_game => '新遊戲';
	@override String get share => '分享';
	@override String get share_menu => '分享…';
	@override String get no_network => '沒有網絡連接。';
	@override String get delete_all => '刪除所有';
	@override String get appearance => '外貌';
	@override String get themes => '主題';
	@override String get delete_all_message => '永久刪除所有事件。';
	@override String get remove_ad => '優質的';
	@override String get help => '提示';
	@override String get back => '後退';
	@override String get donation => '捐款';
	@override String get open_on_game => '在遊戲畫面打開';
	@override String get show_windows => '顯示窗口';
	@override String get select_language => '選擇語言';
	@override String get switch_control => '開關：標記並打開';
	@override String get switch_control_desc => '使用按鈕在標記和打開之間切換';
	@override String get app_description => '你必須在不引爆任何地雷的情況下清除一個包含隱藏地雷的矩形板。';
	@override String get app_name => '踩地雷';
	@override String get do_you_know_how_to_play => '你知道怎麼玩掃雷嗎？';
	@override String get close => '關閉';
	@override String get open_tutorial => '打開教程';
	@override String get click_numbers => '允許點按數字';
	@override String get flag_when_tap_numbers => '點擊數字時標記';
	@override String get tap_to_customize => '點按即可自定義';
	@override String get no_guess_fail_warning => '目前的雷區可能不是無猜測的！';
	@override String get fixed_size => '固定尺寸';
	@override String get progressive => '進步';
	@override String get value_limit_min => 'Min is %d';
	@override String get value_limit_max => 'Max is %d';
	@override String get proportion_too_high => 'Proportion is too high!';
	@override String get highlight_unsolved_numbers => '凸顯未解決的數字';
	@override String get show_clock => '顯示時鐘';
	@override String get donate_request => '如果您喜歡這款遊戲，不妨付費贊助。';
	@override String get donate_help => '您的舉手之勞能使本專案繼續活躍！';
	@override String get acra_toast_text => 'Sorry, an error occurred. Please, send the report to the developers.';
	@override String get immersive_mode => '全螢幕模式';
	@override String get background_color => '背景顏色';
	@override String get main_color => '主要顏色';
	@override String get premium_exclusive => '高級會員專享';
	@override String get preview => '預覽';
	@override String get shared_game => '分享遊戲';
	@override String get shared_game_description => '在此插入某人與您分享的掃雷遊戲的程式碼。';
	@override String get code => '代碼';
	@override String get image => '影像';
	@override String get free => 'Free';
	@override String get restore_purchase => '恢復購買';
}
