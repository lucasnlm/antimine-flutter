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
class TranslationsBe extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.be,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <be>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsBe _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Кіраўніцтва';
	@override String get tutorial_basic => 'Правілы гульні простыя: лік на квадраце паказвае колькасць мін, якія прымыкаюць да яго, і вы павінны адзначыць усе міны.';
	@override String get tutorial_text1 => 'Калі лік датыкаецца з аднолькавай колькасцю квадратаў, то ўсе квадраты з\'яўляюцца мінамi.';
	@override String get tutorial_text2 => 'Адзначыўшы свой першы флаг, праглядзіце лічбы і прааналізуйце наступны квадрат.';
	@override String get tutorial_text3 => 'Калі ў квадраце аднолькавая колькасць флажкоў, усе астатнія квадраты, якія прымыкаюць да яго, не з\'яўляюцца мінамі (зялёная стрэлка).';
	@override String get tutorial_text4 => 'Праглядзіце лічбы і працягвайце адкрываць квадраты.';
	@override String get games => 'Гульні';
	@override String get tap_to_begin => 'Націсніце, каб пачаць';
	@override String get previous_games => 'Папярэднiя гульнi';
	@override String get minefield => 'Цяжкасць';
	@override String get standard => 'Стандарт';
	@override String get beginner => 'Пачатковец';
	@override String get intermediate => 'Сярэдні';
	@override String get expert => 'Эксперт';
	@override String get master => 'Майстар';
	@override String get legend => 'Легенда';
	@override String get open => 'Адчыніць';
	@override String get settings => 'Налады';
	@override String get control_settings => 'Налады кіравання';
	@override String get default_button => 'Кнопка па змаўчанні';
	@override String get shapes => 'Формы';
	@override String get animations => 'Анімацыі';
	@override String get vibration => 'Тактыльная зваротная сувязь';
	@override String get about => 'Пра нас';
	@override String get quit => 'Выхад';
	@override String get events => 'Статыстыка';
	@override String get custom => 'Прыстасаваныя';
	@override String get start => 'Пачаць';
	@override String get width => 'Шырыня';
	@override String get height => 'Вышыня';
	@override String get mines => 'Мiны';
	@override String get seed => 'Код генерацыі';
	@override String get retry_sure => 'Калі вы запусціце новую гульню, прагрэс у дзейнай гульні будзе незваротна страчаны.';
	@override String get show_licenses => 'Паказаць ліцэнзіі';
	@override String get new_game_request => 'Ці вы хочаце запусціць новую гульню?';
	@override String get mines_remaining => '%d мін';
	@override String get game_time => 'Час гульні';
	@override String get settings_general => 'Асноўныя';
	@override String get settings_gameplay => 'Геймплэй';
	@override String get export_settings => 'Экспартаваць';
	@override String get import_settings => 'Імпартаваць';
	@override String get exported_success => 'Налады экспартаваны!';
	@override String get imported_success => 'Налады iмпартаваны!';
	@override String get settings_accessibility => 'Спецыяльныя магчымасці';
	@override String get system => 'Сістэма';
	@override String get sign_in_failed => 'Не атрымалася ўвайсці. Калі ласка, праверце сваю злучэнне з інтэрнэтам і паспрабуйце пазней.';
	@override String get you_won => 'Вы перамаглі!';
	@override String get victories => 'Перамогі';
	@override String get you_lost => 'Вы прайгралі!';
	@override String get you_finished => 'Вы скончылі!';
	@override String get defeats => 'Паразы';
	@override String get generic_game_over => 'Поспехаў у наступнай гульні.';
	@override String get generic_win => 'Вы знайшлі %1\$d мін за %2\$d секунд.';
	@override String get fail_to_share => 'Не ўдалося абагуліць';
	@override String get version_s => 'Версія %1\$s';
	@override String get sound_effects => 'Гукавыя эфекты';
	@override String get music => 'Музыка';
	@override String get music_by => 'Аўтар музыкi %1\$s';
	@override String get check_music => 'Слухаць на Spotify…';
	@override String get selected => 'Абрана';
	@override String get are_you_sure => 'Вы ўпэўнены?';
	@override String get enable_automatic_flags => 'Уключыць аўтаматычнае выстаўленне флажкоў';
	@override String get open_areas => 'Адкрытыя пляцоўкі';
	@override String get total_time => 'Агульны час';
	@override String get average_time => 'Сярэдні час';
	@override String get shortest_time => 'Самы кароткі час';
	@override String get performance => 'Прадукцыйнасць';
	@override String get ok => 'Добра';
	@override String get use_question_mark => 'Выкарыстоўваць пытальнік';
	@override String get no_guessing_mode => 'Рэжым "без здагадак"';
	@override String get control => 'Прылады кантролю';
	@override String get control_types => 'Тыпы кантролю';
	@override String get single_click => 'Адзіночны дотык';
	@override String get double_click => 'Двайны дотык';
	@override String get long_press => 'Доўгі націск';
	@override String get touch_sensibility => 'Сэнсарная адчувальнасць';
	@override String get open_tile => 'Адчыніць';
	@override String get flag_tile => 'Флаг';
	@override String get retry => 'Паспрабуйце яшчэ раз';
	@override String get continue_game => 'Працягнуць';
	@override String get empty => 'Ачысціць';
	@override String get cant_do_it_now => 'Цяпер гэта зрабіць немагчыма';
	@override String get mine_revealed => 'Выкрыта міна';
	@override String get fail_to_load_ad => 'Не атрымалася загрузіць рэкламу';
	@override String get you_have_received => 'Вы атрымалі: \$param1';
	@override String get help_win_a_game => 'Каб атрымаць дадатковыя падказкі, вы павінны выйграць гульню.';
	@override String get unknown_error => 'Невядомая памылка.';
	@override String get error => 'Памылка!';
	@override String get leaderboards => 'Лепшыя гульцы';
	@override String get cancel => 'Скасаваць';
	@override String get resume => 'Працягнуць';
	@override String get yes => 'Так';
	@override String get unlock => 'Разблакаваць';
	@override String get unlock_all => 'Разблакаваць усе';
	@override String get achievements => 'Дасягненні';
	@override String get no => 'Не';
	@override String get general => 'Асноўныя';
	@override String get more => 'Яшчэ';
	@override String get source_code => 'Зыходны код';
	@override String get translation => 'Пераклад';
	@override String get language => 'Мова';
	@override String get licenses => 'Ліцензії';
	@override String get google_play_games => 'Google Play Games';
	@override String get loading => 'Ідзе загрузка…';
	@override String get creating_valid_game => 'Стварэнне сумленнай гульні…';
	@override String get connect => 'Падлучыць';
	@override String get connecting => 'Злучэнне…';
	@override String get disconnect => 'Адключыць';
	@override String get disconnected => 'Адлучана';
	@override String get new_game => 'Новая гульня';
	@override String get share => 'Падзяліцца';
	@override String get share_menu => 'Падзяліцца…';
	@override String get no_network => 'Няма злучэння з інтэрнэтам.';
	@override String get delete_all => 'Выдаліць усё';
	@override String get appearance => 'Знешні выгляд';
	@override String get themes => 'Тэмы';
	@override String get delete_all_message => 'Выдаліць усе падзеі назаўжды.';
	@override String get remove_ad => 'Прэміум';
	@override String get help => 'Падказка';
	@override String get back => 'Назад';
	@override String get donation => 'Ахвяраванне';
	@override String get open_on_game => 'Адкрыць на экране гульні';
	@override String get show_windows => 'Паказаць вокны';
	@override String get select_language => 'Выбар моў';
	@override String get switch_control => 'Пераключальнік: пазначыць і адкрыць';
	@override String get switch_control_desc => 'Выкарыстоўвайце кнопку для пераключэння паміж "Пазначыць" і "Адкрыць"';
	@override String get app_description => 'Вы павінны ачысціць прастакутную дошку, якая змяшчае схаваныя міны, не падрываючы ніводнай з іх.';
	@override String get app_name => 'Сапёр';
	@override String get do_you_know_how_to_play => 'Вы ведаеце, як гуляць у сапёра?';
	@override String get close => 'Закрыць';
	@override String get open_tutorial => 'Адкрыць кiраўнiцтва';
	@override String get click_numbers => 'Дазволіць націскаць на лічбы';
	@override String get flag_when_tap_numbers => 'Адзначаць флагам пры націску на лічбы';
	@override String get tap_to_customize => 'Націсніце, каб наладзіць';
	@override String get no_guess_fail_warning => 'Бягучае міннае поле магчыма не без угадвання!';
	@override String get fixed_size => 'Нязменны памер';
	@override String get progressive => 'Прагрэсіўны';
	@override String get value_limit_min => 'Мінімум %d';
	@override String get value_limit_max => 'Максiмум %d';
	@override String get proportion_too_high => 'Прапорцыя занадта высокая!';
	@override String get highlight_unsolved_numbers => 'Вылучыце нявырашаныя лікі';
	@override String get show_clock => 'Паказваць гадзіннік';
	@override String get donate_request => 'Калі вам падабаецца гэтая гульня, падумайце аб ахвяраванні.';
	@override String get donate_help => 'Гэта дапаможа падтрымліваць гэты праект актыўным!';
	@override String get acra_toast_text => 'На жаль, адбылася памылка. Калі ласка, адпраўце справаздачу распрацоўшчыкам.';
	@override String get immersive_mode => 'Поўнаэкранны рэжым';
	@override String get background_color => 'Колер фону';
	@override String get main_color => 'Асноўны колер';
	@override String get premium_exclusive => 'Premium exclusive!';
	@override String get preview => 'Перадпрагляд';
	@override String get shared_game => 'Shared game';
	@override String get shared_game_description => 'Устаўце сюды код гульні тральшчыка, якой вы падзяліліся.';
	@override String get code => 'Код';
	@override String get image => 'Відарыс';
	@override String get free => 'Free';
	@override String get restore_purchase => 'Аднаўленне пакупак';
}
