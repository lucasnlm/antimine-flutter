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
class TranslationsBg extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBg({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.bg,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <bg>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsBg _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Въведение';
	@override String get tutorial_basic => 'Правилата на играта са прости, номерът в квадрата показва броя на мините в него и вие трябва да сложите флаг на всички мини.';
	@override String get tutorial_text1 => 'Ако цифрата е в близост до същия брой квадрати, тогава във всички квадрати има мини.';
	@override String get tutorial_text2 => 'След като сложите първия си флаг, вижте и анализирайте следващия квадрат.';
	@override String get tutorial_text3 => 'Ако квадрат има същия брой флагове, тогава всички квадрати в близост до него не са мини (вижте зелената стрелка).';
	@override String get tutorial_text4 => 'Вижте цифрите и продължете да отваряте квадрати.';
	@override String get games => 'Игри';
	@override String get tap_to_begin => 'Натисни за започване';
	@override String get previous_games => 'Предишни Игри';
	@override String get minefield => 'Трудност';
	@override String get standard => 'Стандарно';
	@override String get beginner => 'Начинаещ';
	@override String get intermediate => 'Напреднал';
	@override String get expert => 'Експерт';
	@override String get master => 'Майстор';
	@override String get legend => 'Легенда';
	@override String get open => 'Отвори';
	@override String get settings => 'Настройки';
	@override String get control_settings => 'Настройки на контролера';
	@override String get default_button => 'Подразбиран бутон';
	@override String get shapes => 'Фигури';
	@override String get animations => 'Анимации';
	@override String get vibration => 'Вибрация при докосване';
	@override String get about => 'За нас';
	@override String get quit => 'Изход';
	@override String get events => 'Статистики';
	@override String get custom => 'По избор';
	@override String get start => 'Начало';
	@override String get width => 'Ширина';
	@override String get height => 'Височина';
	@override String get mines => 'Мини';
	@override String get seed => 'Сийд';
	@override String get retry_sure => 'Ако стартираш нова игра, твоят досегашен прогрес ще бъде занулен.';
	@override String get show_licenses => 'Преглед на лиценза';
	@override String get new_game_request => 'Искате ли да започнете нова игра?';
	@override String get mines_remaining => '%d мини';
	@override String get game_time => 'Време в играта';
	@override String get settings_general => 'Основни';
	@override String get settings_gameplay => 'Начин на игра';
	@override String get export_settings => 'Експорт';
	@override String get import_settings => 'Внос';
	@override String get exported_success => 'Настройките са импортирани!';
	@override String get imported_success => 'Настройките са импортирани!';
	@override String get settings_accessibility => 'Достъпност';
	@override String get system => 'Система';
	@override String get sign_in_failed => 'Неуспешно влизане. Моля проверете връзката си с интернет и опитайте отново.';
	@override String get you_won => 'Вие победихте!';
	@override String get victories => 'Победи';
	@override String get you_lost => 'Вие загубихте!';
	@override String get you_finished => 'Вие свършихте!';
	@override String get defeats => 'Загуби';
	@override String get generic_game_over => 'Успех на следващата ви игра.';
	@override String get generic_win => 'Вие намерихте %1\$d мини в %2\$d секунди.';
	@override String get fail_to_share => 'Неуспешно споделяне';
	@override String get version_s => 'Версия %1\$s';
	@override String get sound_effects => 'Звукови ефекти';
	@override String get music => 'Музика';
	@override String get music_by => 'Music by %1\$s';
	@override String get check_music => 'Listen on Spotify…';
	@override String get selected => 'Избрани';
	@override String get are_you_sure => 'Сигурни ли сте?';
	@override String get enable_automatic_flags => 'Позволява автоматично слагане на флагове';
	@override String get open_areas => 'Отворени площи';
	@override String get total_time => 'Общо време';
	@override String get average_time => 'Средно време';
	@override String get shortest_time => 'Най-бързото време';
	@override String get performance => 'Изпълнение';
	@override String get ok => 'ОК';
	@override String get use_question_mark => 'Въпросителен знак';
	@override String get no_guessing_mode => 'Режим \'Без налучкване\'';
	@override String get control => 'Управление';
	@override String get control_types => 'Тип контрол';
	@override String get single_click => 'Еднократно натискане';
	@override String get double_click => 'Двойно натискане';
	@override String get long_press => 'Дълго докосване';
	@override String get touch_sensibility => 'Чувствителност при докосване';
	@override String get open_tile => 'Отвори';
	@override String get flag_tile => 'Флаг';
	@override String get retry => 'Опитайте отново';
	@override String get continue_game => 'Продължи';
	@override String get empty => 'Празно';
	@override String get cant_do_it_now => 'Невъзможно е да се направи това сега';
	@override String get mine_revealed => 'Разкрита е мина';
	@override String get fail_to_load_ad => 'Fail to load ad';
	@override String get you_have_received => 'Получихте: \$param1';
	@override String get help_win_a_game => 'За повече помощ трябва да спечелите игра.';
	@override String get unknown_error => 'Неизвестна грешка.';
	@override String get error => 'Грешка!';
	@override String get leaderboards => 'Класиране';
	@override String get cancel => 'Отказ';
	@override String get resume => 'Продължи';
	@override String get yes => 'Да';
	@override String get unlock => 'Отключи';
	@override String get unlock_all => 'Отключи всички';
	@override String get achievements => 'Постижения';
	@override String get no => 'Не';
	@override String get general => 'Основни';
	@override String get more => 'Повече';
	@override String get source_code => 'Програмен Код';
	@override String get translation => 'Превод';
	@override String get language => 'Език';
	@override String get licenses => 'Лицензи';
	@override String get google_play_games => 'Google Play Games';
	@override String get loading => 'Зареждане…';
	@override String get creating_valid_game => 'Създаване на валидна игра…';
	@override String get connect => 'Свързване';
	@override String get connecting => 'Свързване…';
	@override String get disconnect => 'Прекъсване';
	@override String get disconnected => 'Връзката е прекъсната';
	@override String get new_game => 'Нова Игра';
	@override String get share => 'Сподели';
	@override String get share_menu => 'Сподели…';
	@override String get no_network => 'Няма връзка с интернет.';
	@override String get delete_all => 'Изтрий всички';
	@override String get appearance => 'Външен вид';
	@override String get themes => 'Теми';
	@override String get delete_all_message => 'Изтрий всички завинаги.';
	@override String get remove_ad => 'Премахване на реклами';
	@override String get help => 'Съвети';
	@override String get back => 'Назад';
	@override String get donation => 'Дарение';
	@override String get open_on_game => 'Отвори на игралния екран';
	@override String get show_windows => 'Показване на всички прозорци';
	@override String get select_language => 'Избери език';
	@override String get switch_control => 'Размени: Флаг и Отваряне';
	@override String get switch_control_desc => 'Използвай бутонът за да превключиш между Флаг и Отваряне';
	@override String get app_description => 'Вие трябва да изчистите квадратна дъска която има скрити мини без да взривите нито една от тях.';
	@override String get app_name => 'Antimine';
	@override String get do_you_know_how_to_play => 'Знаете ли как да играете Minesweeper?';
	@override String get close => 'Затвори';
	@override String get open_tutorial => 'Отвори въведение';
	@override String get click_numbers => 'Позволи докосване върху числата';
	@override String get flag_when_tap_numbers => 'Позволи докосване върху числата';
	@override String get tap_to_customize => 'Натисни, за да промениш';
	@override String get no_guess_fail_warning => 'Сегашното поле може да не е без предположения!';
	@override String get fixed_size => 'Фиксиран размер';
	@override String get progressive => 'Прогресивен';
	@override String get value_limit_min => 'Min is %d';
	@override String get value_limit_max => 'Max is %d';
	@override String get proportion_too_high => 'Proportion is too high!';
	@override String get highlight_unsolved_numbers => 'Маркирайте нерешените числа';
	@override String get show_clock => 'Показване на часовник';
	@override String get donate_request => 'If you like this game, consider making a donation.';
	@override String get donate_help => 'It will help keep this project active!';
	@override String get acra_toast_text => 'Sorry, an error occurred. Please, send the report to the developers.';
	@override String get immersive_mode => 'Режим "Цял екран"';
	@override String get background_color => 'Цвят на фона';
	@override String get main_color => 'Основен цвят';
	@override String get premium_exclusive => 'Premium exclusive!';
	@override String get preview => 'Преглед';
	@override String get shared_game => 'Shared game';
	@override String get shared_game_description => 'Въведете тук споделения с вас код на игра за миночистач.';
	@override String get code => 'Код';
	@override String get image => 'Изображение';
	@override String get free => 'Free';
	@override String get restore_purchase => 'Възстанови покупка';
}
