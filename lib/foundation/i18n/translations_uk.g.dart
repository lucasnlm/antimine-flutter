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
class TranslationsUk extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsUk({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.uk,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <uk>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsUk _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Посібник';
  @override
  String get tutorial_basic =>
      'Правило гри просте, число на квадраті показує кількість мін навколо нього, і ви повинні позначити всі міни.';
  @override
  String get tutorial_text1 =>
      'Якщо число відображає кількість усіх квадратів, то у всіх квадратах міни.';
  @override
  String get tutorial_text2 =>
      'Після позначки вашого першого прапорця, огляньте цифри та проаналізуйте наступні квадрати.';
  @override
  String get tutorial_text3 =>
      'Якщо у квадраті однакова кількість прапорців, то всі інші поруч з ним квадрати не містять мін (зелена стрілка).';
  @override
  String get tutorial_text4 =>
      'Гляньте на числа і продовжуйте відкривати квадрати.';
  @override
  String get games => 'Ігор';
  @override
  String get tap_to_begin => 'Натисніть, щоб почати';
  @override
  String get previous_games => 'Минулі гри';
  @override
  String get minefield => 'Складність';
  @override
  String get standard => 'Звичайна';
  @override
  String get beginner => 'Початківець';
  @override
  String get intermediate => 'Любитель';
  @override
  String get expert => 'Експерт';
  @override
  String get master => 'Магістр';
  @override
  String get legend => 'Легенда';
  @override
  String get open => 'Відкрити';
  @override
  String get settings => 'Налаштування';
  @override
  String get control_settings => 'Параметри керування';
  @override
  String get default_button => 'Типова кнопка';
  @override
  String get shapes => 'Форми';
  @override
  String get animations => 'Анімації';
  @override
  String get vibration => 'Вібрація при натиску';
  @override
  String get about => 'Про додаток';
  @override
  String get quit => 'Вийти';
  @override
  String get events => 'Статистика';
  @override
  String get custom => 'Власний';
  @override
  String get start => 'Старт';
  @override
  String get width => 'Ширина';
  @override
  String get height => 'Висота';
  @override
  String get mines => 'Міни';
  @override
  String get seed => 'Код генерації';
  @override
  String get retry_sure =>
      'Якщо ви почнете нову гру, ваш поточний прогрес буде втрачено.';
  @override
  String get show_licenses => 'Показати ліцензії';
  @override
  String get new_game_request => 'Хочете розпочати нову гру?';
  @override
  String get mines_remaining => '%d мін';
  @override
  String get game_time => 'Тривалість гри';
  @override
  String get settings_general => 'Загальне';
  @override
  String get settings_gameplay => 'Геймплей';
  @override
  String get export_settings => 'Експорт';
  @override
  String get import_settings => 'Імпорт';
  @override
  String get exported_success => 'Параметри експортовані!';
  @override
  String get imported_success => 'Параметри імпортовані!';
  @override
  String get settings_accessibility => 'Спеціальні можливості';
  @override
  String get system => 'Системне';
  @override
  String get sign_in_failed =>
      'Не вдається увійти. Перевірте підключення до Інтернету і повторіть спробу.';
  @override
  String get you_won => 'Перемога!';
  @override
  String get victories => 'Перемог';
  @override
  String get you_lost => 'Поразка!';
  @override
  String get you_finished => 'Ви закінчили!';
  @override
  String get defeats => 'Поразок';
  @override
  String get generic_game_over => 'Удачі у наступній грі.';
  @override
  String get generic_win => 'Ви знайшли %1\$d мін за %2\$d секунд.';
  @override
  String get fail_to_share => 'Не вдалося поділитись';
  @override
  String get version_s => 'Версія: %1\$s';
  @override
  String get sound_effects => 'Звукові ефекти';
  @override
  String get music => 'Музика';
  @override
  String get music_by => 'Музика від %1\$s';
  @override
  String get check_music => 'Слухаємо на Spotify…';
  @override
  String get selected => 'Обране';
  @override
  String get are_you_sure => 'Ви впевнені?';
  @override
  String get enable_automatic_flags =>
      'Увімкнути автоматичне розміщення прапорців';
  @override
  String get open_areas => 'Відкриті зони';
  @override
  String get total_time => 'Загальний час';
  @override
  String get average_time => 'Середній час';
  @override
  String get shortest_time => 'Найкоротший час';
  @override
  String get performance => 'Ефективність';
  @override
  String get ok => 'Гаразд';
  @override
  String get use_question_mark => 'Ставити Знак Питання';
  @override
  String get no_guessing_mode => 'Режим \'Без вгадування\'';
  @override
  String get control => 'Керування';
  @override
  String get control_types => 'Типи керування';
  @override
  String get single_click => 'Одинарне натискання';
  @override
  String get double_click => 'Подвійне натискання';
  @override
  String get long_press => 'Довге натискання';
  @override
  String get touch_sensibility => 'Чутливість сенсору';
  @override
  String get open_tile => 'Відкрити';
  @override
  String get flag_tile => 'Прапорець';
  @override
  String get retry => 'Повторити';
  @override
  String get continue_game => 'Продовжити';
  @override
  String get empty => 'Пусто';
  @override
  String get cant_do_it_now => 'Неможливо зробити це зараз';
  @override
  String get mine_revealed => 'Міна була виявлена';
  @override
  String get fail_to_load_ad => 'Реклама не завантажилась';
  @override
  String get you_have_received => 'Ви отримали: \$param1';
  @override
  String get help_win_a_game => 'Пройдіть гру, щоб отримати підказки.';
  @override
  String get unknown_error => 'Невідома помилка.';
  @override
  String get error => 'Помилка!';
  @override
  String get leaderboards => 'Таблиця лідерів';
  @override
  String get cancel => 'Скасувати';
  @override
  String get resume => 'Відновити';
  @override
  String get yes => 'Так';
  @override
  String get unlock => 'Розблокувати';
  @override
  String get unlock_all => 'Розблокувати все';
  @override
  String get achievements => 'Досягнення';
  @override
  String get no => 'Нє';
  @override
  String get general => 'Загальні';
  @override
  String get more => 'Більше';
  @override
  String get source_code => 'Вихідний код';
  @override
  String get translation => 'Переклад';
  @override
  String get language => 'Мова';
  @override
  String get licenses => 'Ліцензії';
  @override
  String get google_play_games => 'Google Play Games';
  @override
  String get loading => 'Завантаження…';
  @override
  String get creating_valid_game => 'Створюю чесну гру…';
  @override
  String get connect => 'Під’єднатись';
  @override
  String get connecting => 'Підключення…';
  @override
  String get disconnect => 'Відключитись';
  @override
  String get disconnected => 'Роз\'єднано';
  @override
  String get new_game => 'Нова гра';
  @override
  String get share => 'Поділитися';
  @override
  String get share_menu => 'Поділитися…';
  @override
  String get no_network => 'Немає інтернет-з\'єднання.';
  @override
  String get delete_all => 'Стерти все';
  @override
  String get appearance => 'Оформлення';
  @override
  String get themes => 'Теми';
  @override
  String get delete_all_message => 'Видалити всі події назавжди.';
  @override
  String get remove_ad => 'Зняти рекламу';
  @override
  String get help => 'Підказка';
  @override
  String get back => 'Назад';
  @override
  String get donation => 'Пожертва';
  @override
  String get open_on_game => 'Відкрити на екрані гри';
  @override
  String get show_windows => 'Показати вікна';
  @override
  String get select_language => 'Вибір мови';
  @override
  String get switch_control => 'Перемикач: Прапор і Відкрити';
  @override
  String get switch_control_desc =>
      'Користуйтеся кнопкою, щоб перемикнутися між прапорцем і відкриттям';
  @override
  String get app_description =>
      'Вам потрібно очистити поле від схованих мін, не детонуючи їх.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => 'Ви вмієте грати в сапера?';
  @override
  String get close => 'Закрити';
  @override
  String get open_tutorial => 'Відкрити навчання';
  @override
  String get click_numbers => 'Дозволити натискання на цифри';
  @override
  String get flag_when_tap_numbers => 'Прапорець тоді коли натискаєш на цифри';
  @override
  String get tap_to_customize => 'Натисніть, щоб налаштувати';
  @override
  String get no_guess_fail_warning =>
      'Поточне мінне поле не можна пройти без здогадок!';
  @override
  String get fixed_size => 'Фіксований розмір';
  @override
  String get progressive => 'Прогресивна';
  @override
  String get value_limit_min => 'Мінімум %d';
  @override
  String get value_limit_max => 'Максимум %d';
  @override
  String get proportion_too_high => 'Пропорція зависока!';
  @override
  String get highlight_unsolved_numbers => 'Підсвічувати невирішені цифри';
  @override
  String get show_clock => 'Показувати годинник';
  @override
  String get donate_request => 'Якщо вам подобається ця гра, зробіть пожертву.';
  @override
  String get donate_help => 'Це допоможе зберегти цей проєкт активним!';
  @override
  String get acra_toast_text =>
      'На жаль, сталася помилка. Будь ласка, надішліть звіт розробникам.';
  @override
  String get immersive_mode => 'Повноекранний режим';
  @override
  String get background_color => 'Колір фону';
  @override
  String get main_color => 'Основний колір';
  @override
  String get premium_exclusive => 'Преміум ексклюзив!';
  @override
  String get preview => 'Попередній перегляд';
  @override
  String get shared_game => 'Спільна гра';
  @override
  String get shared_game_description =>
      'Вставте сюди код гри minesweeper, яким ви поділилися.';
  @override
  String get code => 'Код';
  @override
  String get image => 'Зображення';
  @override
  String get free => 'Безкоштовно';
  @override
  String get restore_purchase => 'Відновити придбання';
}
