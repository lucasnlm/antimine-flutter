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
class TranslationsZhCn extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsZhCn({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.zhCn,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <zh-CN>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsZhCn _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => '教程';
  @override
  String get tutorial_basic => '游戏规则很简单：方块上的数字是周围地雷的数量；你必须标出所有地雷。';
  @override
  String get tutorial_text1 => '如果一个数字和它周围的方块数量相等，那么这些方块都是地雷。';
  @override
  String get tutorial_text2 => '标记之后，回看数字并分析下一个方块。';
  @override
  String get tutorial_text3 => '如果一个方块周围有相同数量的旗标，那么周围其余方块就不是地雷（绿色箭头）。';
  @override
  String get tutorial_text4 => '回看数字并不断打开方块。';
  @override
  String get games => '游戏数';
  @override
  String get tap_to_begin => '点击开始';
  @override
  String get previous_games => '之前的游戏';
  @override
  String get minefield => '难度';
  @override
  String get standard => '标准';
  @override
  String get beginner => '新手';
  @override
  String get intermediate => '中等';
  @override
  String get expert => '专家';
  @override
  String get master => '大师';
  @override
  String get legend => '传奇';
  @override
  String get open => '打开';
  @override
  String get settings => '设置';
  @override
  String get control_settings => '操作设置';
  @override
  String get default_button => '默认按钮';
  @override
  String get shapes => '形状';
  @override
  String get animations => '动画';
  @override
  String get vibration => '触摸反馈';
  @override
  String get about => '关于';
  @override
  String get quit => '退出';
  @override
  String get events => '统计';
  @override
  String get custom => '自定义';
  @override
  String get start => '开始';
  @override
  String get width => '宽';
  @override
  String get height => '高';
  @override
  String get mines => '地雷数';
  @override
  String get seed => '种子';
  @override
  String get retry_sure => '如果你开始一个新游戏，\n你的当前进度将会丢失。';
  @override
  String get show_licenses => '显示许可证';
  @override
  String get new_game_request => '你要开始一个新游戏吗？';
  @override
  String get mines_remaining => '%d 个地雷';
  @override
  String get game_time => '游戏时间';
  @override
  String get settings_general => '通用';
  @override
  String get settings_gameplay => '游戏性';
  @override
  String get export_settings => '导出';
  @override
  String get import_settings => '导入';
  @override
  String get exported_success => '已导出设置';
  @override
  String get imported_success => '已导入设置';
  @override
  String get settings_accessibility => '无障碍';
  @override
  String get system => '系统';
  @override
  String get sign_in_failed => '登录失败。请检查你的网络连接，然后重试。';
  @override
  String get you_won => '你获胜了！';
  @override
  String get victories => '胜利';
  @override
  String get you_lost => '你输了！';
  @override
  String get you_finished => '完成了！';
  @override
  String get defeats => '失败';
  @override
  String get generic_game_over => '祝你下次游戏好运。';
  @override
  String get generic_win => '你用 %2\$d 秒找出了 %1\$d 枚地雷。';
  @override
  String get fail_to_share => '分享失败';
  @override
  String get version_s => '版本 %1\$s';
  @override
  String get sound_effects => '音效';
  @override
  String get music => '音乐';
  @override
  String get music_by => '作曲：%1\$s';
  @override
  String get check_music => '在 Spotify 中收听…';
  @override
  String get selected => '已选择';
  @override
  String get are_you_sure => '你确定吗？';
  @override
  String get enable_automatic_flags => '启用旗标自动放置';
  @override
  String get open_areas => '踩中地雷';
  @override
  String get total_time => '总用时';
  @override
  String get average_time => '平均用时';
  @override
  String get shortest_time => '最短用时';
  @override
  String get performance => '胜率';
  @override
  String get ok => '确定';
  @override
  String get use_question_mark => '使用问号标记';
  @override
  String get no_guessing_mode => '“无需猜测”模式';
  @override
  String get control => '控制';
  @override
  String get control_types => '控制模式';
  @override
  String get single_click => '单击';
  @override
  String get double_click => '双击';
  @override
  String get long_press => '长按';
  @override
  String get touch_sensibility => '触控灵敏度';
  @override
  String get open_tile => '打开';
  @override
  String get flag_tile => '标记';
  @override
  String get retry => '重试';
  @override
  String get continue_game => '继续';
  @override
  String get empty => '空';
  @override
  String get cant_do_it_now => '目前无法使用';
  @override
  String get mine_revealed => '已找到一颗雷';
  @override
  String get fail_to_load_ad => '广告加载失败';
  @override
  String get you_have_received => '您获得了：\$param1';
  @override
  String get help_win_a_game => '为了获得更多帮助，您必须赢得一场游戏。';
  @override
  String get unknown_error => '未知错误。';
  @override
  String get error => '错误！';
  @override
  String get leaderboards => '排行榜';
  @override
  String get cancel => '取消';
  @override
  String get resume => '继续';
  @override
  String get yes => '是';
  @override
  String get unlock => '解锁​​​​';
  @override
  String get unlock_all => '全部解锁';
  @override
  String get achievements => '成就';
  @override
  String get no => '不';
  @override
  String get general => '总计';
  @override
  String get more => '更多';
  @override
  String get source_code => '源代码';
  @override
  String get translation => '翻译';
  @override
  String get language => '语言';
  @override
  String get licenses => '许可证';
  @override
  String get google_play_games => 'Google Play 游戏';
  @override
  String get loading => '加载中……';
  @override
  String get creating_valid_game => '正在创建有效游戏…';
  @override
  String get connect => '连接';
  @override
  String get connecting => '正在连接…';
  @override
  String get disconnect => '断开';
  @override
  String get disconnected => '已断开';
  @override
  String get new_game => '新游戏';
  @override
  String get share => '分享';
  @override
  String get share_menu => '分享……';
  @override
  String get no_network => '没有连接网络。';
  @override
  String get delete_all => '全部删除';
  @override
  String get appearance => '界面外观';
  @override
  String get themes => '主题';
  @override
  String get delete_all_message => '全部记录将被永久删除。';
  @override
  String get remove_ad => '去除广告';
  @override
  String get help => '提示';
  @override
  String get back => '返回';
  @override
  String get donation => '捐助';
  @override
  String get open_on_game => '在游戏启动时上打开上一局游戏';
  @override
  String get show_windows => '显示结果对话框';
  @override
  String get select_language => '选择语言';
  @override
  String get switch_control => '切换标记与打开';
  @override
  String get switch_control_desc => '使用按钮在标记和打开之间切换';
  @override
  String get app_description => '你需要在不引爆地雷的情况下， 清理有着隐藏地雷的矩形区域。';
  @override
  String get app_name => '扫雷 (踩地雷) - Antimine';
  @override
  String get do_you_know_how_to_play => '你想阅读教程吗？';
  @override
  String get close => '关闭';
  @override
  String get open_tutorial => '打开教程';
  @override
  String get click_numbers => '允许点击数字';
  @override
  String get flag_when_tap_numbers => '点击数字时标记';
  @override
  String get tap_to_customize => '点击此处来自定义操作方式';
  @override
  String get no_guess_fail_warning => '当前雷场可能不是“无需猜测”的！';
  @override
  String get fixed_size => '固定尺寸';
  @override
  String get progressive => '渐进';
  @override
  String get value_limit_min => '最小值：%d';
  @override
  String get value_limit_max => '最大值：%d';
  @override
  String get proportion_too_high => '比例太高了！';
  @override
  String get highlight_unsolved_numbers => '高亮未解决的数字';
  @override
  String get show_clock => '显示时钟';
  @override
  String get donate_request => '如果您喜欢这个游戏，捐助我们吧';
  @override
  String get donate_help => '这有助于保持该项目活跃';
  @override
  String get acra_toast_text => '抱歉，出现了一个错误。请将报告发送给开发人员。';
  @override
  String get immersive_mode => '沉浸模式';
  @override
  String get background_color => '背景颜色';
  @override
  String get main_color => '主颜色';
  @override
  String get premium_exclusive => '仅限高级版！';
  @override
  String get preview => '预览';
  @override
  String get shared_game => '分享游戏';
  @override
  String get shared_game_description => '在此输入与你共享的扫雷游戏码。';
  @override
  String get code => '代码号';
  @override
  String get image => '图像';
  @override
  String get free => '免费';
  @override
  String get restore_purchase => '恢复购买';
}
