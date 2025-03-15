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
class TranslationsJa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsJa _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'チュートリアル';
	@override String get tutorial_basic => 'ゲームのルールは簡単です。マスの数字はそのマスに隣接している地雷の数を表しているので、それを手がかりにすべての地雷に旗を立てていきます。';
	@override String get tutorial_text1 => '数字が同じ数の開けていないマスに隣接していれば、それらはすべて地雷です。';
	@override String get tutorial_text2 => '旗を立てたら、数字を確認して、次のマスに移りましょう。';
	@override String get tutorial_text3 => '数字の周りに同じ数だけ旗が立っていたら、数字に隣接する残りのマスはすべて地雷ではありません (緑の矢印)。';
	@override String get tutorial_text4 => '数字を確認して、ほかのマスを開けていきます。';
	@override String get games => 'ゲーム回数';
	@override String get tap_to_begin => 'タップして開始';
	@override String get previous_games => '前のゲーム';
	@override String get minefield => '難易度';
	@override String get standard => '普通';
	@override String get beginner => '初級';
	@override String get intermediate => '中級';
	@override String get expert => '上級';
	@override String get master => 'マスター';
	@override String get legend => 'レジェンド';
	@override String get open => '開く';
	@override String get settings => '設定';
	@override String get control_settings => 'コントロールの設定';
	@override String get default_button => '標準のボタン';
	@override String get shapes => 'シェイプ';
	@override String get animations => 'アニメーション';
	@override String get vibration => 'タッチ操作バイブ';
	@override String get about => 'このアプリについて';
	@override String get quit => '終了する';
	@override String get events => '統計';
	@override String get custom => 'カスタム';
	@override String get start => '開始';
	@override String get width => '横幅';
	@override String get height => '縦幅';
	@override String get mines => '地雷の数';
	@override String get seed => 'シード値';
	@override String get retry_sure => '新しいゲームを開始すると、\n現在の進行状況は失われます。';
	@override String get show_licenses => 'ライセンスを表示';
	@override String get new_game_request => '新しくゲームを始めますか？';
	@override String get mines_remaining => '%d 個の地雷';
	@override String get game_time => 'ゲーム時間';
	@override String get settings_general => '全般';
	@override String get settings_gameplay => 'ゲームプレイ';
	@override String get export_settings => 'エクスポート';
	@override String get import_settings => 'インポート';
	@override String get exported_success => '設定をエクスポートしました！';
	@override String get imported_success => '設定をインポートしました！';
	@override String get settings_accessibility => 'アクセシビリティ';
	@override String get system => 'システム';
	@override String get sign_in_failed => 'サインインに失敗しました。インターネット接続を確認してからもう一度お試しください。';
	@override String get you_won => 'あなたの勝ちです！';
	@override String get victories => '勝利回数';
	@override String get you_lost => 'あなたの負けです！';
	@override String get you_finished => '完了しました！';
	@override String get defeats => '敗北回数';
	@override String get generic_game_over => '次のゲームでも頑張りましょう。';
	@override String get generic_win => '%1\$d 個の地雷を %2\$d 秒で発見しました。';
	@override String get fail_to_share => '共有に失敗しました';
	@override String get version_s => 'バージョン %1\$s';
	@override String get sound_effects => 'サウンドエフェクト';
	@override String get music => '音楽';
	@override String get music_by => '%1\$s の音楽';
	@override String get check_music => 'Spotifyで聴く…';
	@override String get selected => '選択済み';
	@override String get are_you_sure => '本当によろしいですか？';
	@override String get enable_automatic_flags => '旗を自動で立てる';
	@override String get open_areas => '開いたエリアの数';
	@override String get total_time => '合計時間';
	@override String get average_time => '平均時間';
	@override String get shortest_time => '最短時間';
	@override String get performance => 'パフォーマンス';
	@override String get ok => 'OK';
	@override String get use_question_mark => 'クエスチョンマークを使う';
	@override String get no_guessing_mode => '「推測なし」 モード';
	@override String get control => 'コントロール';
	@override String get control_types => 'コントロールタイプ';
	@override String get single_click => 'シングルタップ';
	@override String get double_click => 'ダブルタップ';
	@override String get long_press => '長押し';
	@override String get touch_sensibility => 'タッチ感度';
	@override String get open_tile => '開く';
	@override String get flag_tile => '旗';
	@override String get retry => 'リトライ';
	@override String get continue_game => '続行';
	@override String get empty => '空';
	@override String get cant_do_it_now => '現在は実行できません';
	@override String get mine_revealed => '地雷が明らかになりました';
	@override String get fail_to_load_ad => '広告の読み込みに失敗';
	@override String get you_have_received => '受け取りました: \$param1';
	@override String get help_win_a_game => 'より多くのヒントのために、あなたはゲームに勝つ必要があります。';
	@override String get unknown_error => '不明なエラーです。';
	@override String get error => 'エラー！';
	@override String get leaderboards => 'リーダーボード';
	@override String get cancel => 'キャンセル';
	@override String get resume => '続ける';
	@override String get yes => 'はい';
	@override String get unlock => 'ロック解除';
	@override String get unlock_all => 'すべてのロックを解除';
	@override String get achievements => '実績';
	@override String get no => 'いいえ';
	@override String get general => '全般';
	@override String get more => 'もっと';
	@override String get source_code => 'ソースコード';
	@override String get translation => '翻訳';
	@override String get language => '言語';
	@override String get licenses => 'ライセンス';
	@override String get google_play_games => 'Google Play ゲーム';
	@override String get loading => '読み込み中…';
	@override String get creating_valid_game => '有効なゲームを作成しています…';
	@override String get connect => '接続';
	@override String get connecting => '接続しています...';
	@override String get disconnect => '切断';
	@override String get disconnected => '切断済み';
	@override String get new_game => '新しいゲーム';
	@override String get share => '共有';
	@override String get share_menu => '共有...';
	@override String get no_network => 'インターネット接続がありません。';
	@override String get delete_all => 'すべて削除';
	@override String get appearance => '外観';
	@override String get themes => 'テーマ';
	@override String get delete_all_message => 'すべてのイベントを永久的に削除します。';
	@override String get remove_ad => '広告を削除';
	@override String get help => 'ヒント';
	@override String get back => '戻る';
	@override String get donation => '寄付';
	@override String get open_on_game => 'ゲーム画面で開く';
	@override String get show_windows => 'ウィンドウの表示';
	@override String get select_language => '言語の選択';
	@override String get switch_control => '操作切り替え: 「旗」と「開く」';
	@override String get switch_control_desc => '旗の操作と開く操作をボタンで切り替え';
	@override String get app_description => '地雷が隠された長方形から1つも爆発させることなくクリアしましょう。';
	@override String get app_name => 'Antimine';
	@override String get do_you_know_how_to_play => '「マインスイーパー」の遊び方がわかりませんか？';
	@override String get close => '閉じる';
	@override String get open_tutorial => 'チュートリアルを開く';
	@override String get click_numbers => '数字のタップを有効にする';
	@override String get flag_when_tap_numbers => '番号をタップしたときにフラグを立てる';
	@override String get tap_to_customize => 'タップしてカスタマイズ';
	@override String get no_guess_fail_warning => '現在の盤面は、推測なしではクリアできない可能性があります!';
	@override String get fixed_size => '固定サイズ';
	@override String get progressive => 'プログレッシブ';
	@override String get value_limit_min => '最小値は %d';
	@override String get value_limit_max => '最大値は %d';
	@override String get proportion_too_high => '割合が高すぎます！';
	@override String get highlight_unsolved_numbers => '未解決の数字をハイライト表示';
	@override String get show_clock => '時計の表示';
	@override String get donate_request => 'もしこのゲームが気に入ったら、ぜひご支援の検討をお願いします。';
	@override String get donate_help => 'このプロジェクトを長く続かせるのに一役買うでしょう！';
	@override String get acra_toast_text => '申し訳ありません、エラーが発生しました。アプリの改善のため、開発者にレポートの送信をお願いします。';
	@override String get immersive_mode => '没入モード';
	@override String get background_color => '背景色';
	@override String get main_color => 'メインカラー';
	@override String get premium_exclusive => 'プレミアム限定!';
	@override String get preview => 'プレビュー';
	@override String get shared_game => 'シェアされたゲーム';
	@override String get shared_game_description => 'あなたと共有された Minesweeper ゲームのコードをここに挿入します。';
	@override String get code => 'コード';
	@override String get image => '画像';
	@override String get free => '無料';
	@override String get restore_purchase => '購入を復元';
}
