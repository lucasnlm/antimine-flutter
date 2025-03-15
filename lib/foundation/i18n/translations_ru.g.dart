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
class TranslationsRu extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsRu({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.ru,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <ru>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsRu _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Обучение';
  @override
  String get tutorial_basic =>
      'Правило игры простое, число на квадрате показывает количество мин вокруг него, и Вы должны отметить все мины.';
  @override
  String get tutorial_text1 =>
      'Если число отображает количество всех квадратов, то во всех квадратах мины.';
  @override
  String get tutorial_text2 =>
      'Отметив свой первый флаг, просмотрите цифры и проанализируйте следующий квадрат.';
  @override
  String get tutorial_text3 =>
      'Если в квадрате одинаковое количество флагов, то все остальные рядом с ним квадраты не содержат мин (зеленая стрелка).';
  @override
  String get tutorial_text4 =>
      'Посмотрите на числа и продолжайте открывать квадраты.';
  @override
  String get games => 'Игры';
  @override
  String get tap_to_begin => 'Нажмите, чтобы начать';
  @override
  String get previous_games => 'Предыдущие игры';
  @override
  String get minefield => 'Сложность';
  @override
  String get standard => 'Стандарт';
  @override
  String get beginner => 'Новичок';
  @override
  String get intermediate => 'Средний';
  @override
  String get expert => 'Эксперт';
  @override
  String get master => 'Опытный';
  @override
  String get legend => 'Сложность';
  @override
  String get open => 'Открыть';
  @override
  String get settings => 'Настройки';
  @override
  String get control_settings => 'Настройки управления';
  @override
  String get default_button => 'Кнопка по умолчанию';
  @override
  String get shapes => 'Формы';
  @override
  String get animations => 'Анимации';
  @override
  String get vibration => 'Виброотклик';
  @override
  String get about => 'Об игре';
  @override
  String get quit => 'Выход';
  @override
  String get events => 'Статистика';
  @override
  String get custom => 'Другой';
  @override
  String get start => 'Начать';
  @override
  String get width => 'Ширина';
  @override
  String get height => 'Высота';
  @override
  String get mines => 'Мины';
  @override
  String get seed => 'Ключ генерации';
  @override
  String get retry_sure =>
      'Если Вы начнёте новую игру,\nтекущий прогресс будет сброшен.';
  @override
  String get show_licenses => 'Показать лицензии';
  @override
  String get new_game_request => 'Начать новую игру?';
  @override
  String get mines_remaining => '%d мин';
  @override
  String get game_time => 'Время в игре';
  @override
  String get settings_general => 'Общее';
  @override
  String get settings_gameplay => 'Геймплей';
  @override
  String get export_settings => 'Экспорт';
  @override
  String get import_settings => 'Импорт';
  @override
  String get exported_success => 'Настройки экспортированы!';
  @override
  String get imported_success => 'Настройки импортированы!';
  @override
  String get settings_accessibility => 'Специальные возможности';
  @override
  String get system => 'Система';
  @override
  String get sign_in_failed =>
      'Подключение невозможно. Проверьте интернет-подключение и повторите попытку.';
  @override
  String get you_won => 'Вы выиграли!';
  @override
  String get victories => 'Победы';
  @override
  String get you_lost => 'Вы проиграли!';
  @override
  String get you_finished => 'Вы закончили!';
  @override
  String get defeats => 'Поражения';
  @override
  String get generic_game_over => 'Удачи в следующей игре.';
  @override
  String get generic_win => 'Вы обнаружили %1\$d мин за %2\$d секунд.';
  @override
  String get fail_to_share => 'Не удалось поделиться';
  @override
  String get version_s => 'Версия %1\$s';
  @override
  String get sound_effects => 'Звуковые эффекты';
  @override
  String get music => 'Музыка';
  @override
  String get music_by => 'Музыка: %1\$s';
  @override
  String get check_music => 'Слушать на Spotify…';
  @override
  String get selected => 'Выбрано';
  @override
  String get are_you_sure => 'Вы уверены?';
  @override
  String get enable_automatic_flags => 'Включить авторазмещение флагов';
  @override
  String get open_areas => 'Открытые зоны';
  @override
  String get total_time => 'Общее время';
  @override
  String get average_time => 'Среднее время';
  @override
  String get shortest_time => 'Кратчайшее время';
  @override
  String get performance => 'Производительность';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Использовать знак вопроса';
  @override
  String get no_guessing_mode => 'Режим \'Без угадывания\'';
  @override
  String get control => 'Управление';
  @override
  String get control_types => 'Тип управления';
  @override
  String get single_click => 'Одиночное нажатие';
  @override
  String get double_click => 'Двойное нажатие';
  @override
  String get long_press => 'Длительное нажатие';
  @override
  String get touch_sensibility => 'Чувствительность нажатия';
  @override
  String get open_tile => 'Открыть';
  @override
  String get flag_tile => 'Флаг';
  @override
  String get retry => 'Повторить';
  @override
  String get continue_game => 'Продолжить';
  @override
  String get empty => 'Пусто';
  @override
  String get cant_do_it_now => 'Невозможно сделать это сейчас';
  @override
  String get mine_revealed => 'Была обнаружена мина';
  @override
  String get fail_to_load_ad => 'Ошибка загрузки рекламы';
  @override
  String get you_have_received => 'Вы получили: \$param1';
  @override
  String get help_win_a_game =>
      'Для получения дополнительной помощи вы должны выиграть игру.';
  @override
  String get unknown_error => 'Неизвестная ошибка.';
  @override
  String get error => 'Ошибка!';
  @override
  String get leaderboards => 'Списки лидеров';
  @override
  String get cancel => 'Отмена';
  @override
  String get resume => 'Продолжить';
  @override
  String get yes => 'Да';
  @override
  String get unlock => 'Разблокировать';
  @override
  String get unlock_all => 'Открыть все';
  @override
  String get achievements => 'Достижения';
  @override
  String get no => 'Нет';
  @override
  String get general => 'Общее';
  @override
  String get more => 'Подробнее';
  @override
  String get source_code => 'Исходный код';
  @override
  String get translation => 'Перевод';
  @override
  String get language => 'Язык';
  @override
  String get licenses => 'Лицензии';
  @override
  String get google_play_games => 'Google Play Games';
  @override
  String get loading => 'Загрузка…';
  @override
  String get creating_valid_game => 'Создание корректной игры…';
  @override
  String get connect => 'Подключиться';
  @override
  String get connecting => 'Подключение…';
  @override
  String get disconnect => 'Отключиться';
  @override
  String get disconnected => 'Отключено';
  @override
  String get new_game => 'Новая игра';
  @override
  String get share => 'Поделиться';
  @override
  String get share_menu => 'Делимся…';
  @override
  String get no_network => 'Отсутствует подключение к Интернету.';
  @override
  String get delete_all => 'Удалить все';
  @override
  String get appearance => 'Оформление';
  @override
  String get themes => 'Темы';
  @override
  String get delete_all_message => 'Удалить все события навсегда.';
  @override
  String get remove_ad => 'Удалить рекламу';
  @override
  String get help => 'Совет';
  @override
  String get back => 'Назад';
  @override
  String get donation => 'Пожертвование';
  @override
  String get open_on_game => 'Открыть на экране игры';
  @override
  String get show_windows => 'Показать окна';
  @override
  String get select_language => 'Выберите язык';
  @override
  String get switch_control => 'Переключатель: флаг и открыть';
  @override
  String get switch_control_desc =>
      'Используйте кнопку, чтобы переключиться между установкой флага и открытием';
  @override
  String get app_description =>
      'Вам необходимо расчистить прямоугольную площадь со спрятанными минами, не взорвав ни одну из них.';
  @override
  String get app_name => 'Anti-Mine';
  @override
  String get do_you_know_how_to_play => 'Вы умеете играть в сапера?';
  @override
  String get close => 'Закрыть';
  @override
  String get open_tutorial => 'Открыть обучение';
  @override
  String get click_numbers => 'Разрешить нажатие на цифры';
  @override
  String get flag_when_tap_numbers => 'Отметить флагом при нажатии на цифры';
  @override
  String get tap_to_customize => 'Нажмите, чтобы настроить';
  @override
  String get no_guess_fail_warning =>
      'Вам может понадобиться подсказка, чтобы пройти этот уровень!';
  @override
  String get fixed_size => 'Фиксированный размер';
  @override
  String get progressive => 'Прогрессивный';
  @override
  String get value_limit_min => 'Минимум %d';
  @override
  String get value_limit_max => 'Максимум %d';
  @override
  String get proportion_too_high => 'Пропорция слишком велика!';
  @override
  String get highlight_unsolved_numbers => 'Подсвечивать неразгаданные числа';
  @override
  String get show_clock => 'Отображать часы';
  @override
  String get donate_request =>
      'Если вам нравится эта игра, подумайте о том, чтобы сделать пожертвование.';
  @override
  String get donate_help => 'Это поможет сохранить проект активным!';
  @override
  String get acra_toast_text =>
      'Извините, произошла ошибка. Пожалуйста, отправьте отчет разработчикам.';
  @override
  String get immersive_mode => 'Полноэкранный режим';
  @override
  String get background_color => 'Цвет фона';
  @override
  String get main_color => 'Основной цвет';
  @override
  String get premium_exclusive => 'Премиум эксклюзив!';
  @override
  String get preview => 'Предпросмотр';
  @override
  String get shared_game => 'Общая игра';
  @override
  String get shared_game_description =>
      'Вставьте сюда код игры minesweeper, которым с вами поделились.';
  @override
  String get code => 'Код';
  @override
  String get image => 'Изображение';
  @override
  String get free => 'Бесплатно';
  @override
  String get restore_purchase => 'Восстановить Покупки';
}
