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
class TranslationsPl extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsPl({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.pl,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <pl>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsPl _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Samouczek';
  @override
  String get tutorial_basic =>
      'Reguły gry są proste. Cyfra na polu jest równa liczbie min otaczających to pole, a Twoim zadaniem jest oznaczyć je wszystkie.';
  @override
  String get tutorial_text1 =>
      'Jeśli do pola z cyfrą przylega taka sama liczba nieodkrytych pól, na jaką wskazuje ta cyfra, to na wszystkich tych polach są miny.';
  @override
  String get tutorial_text2 =>
      'Po oznaczeniu pierwszego pola przyjrzyj się cyfrom i przeanalizuj następne pole.';
  @override
  String get tutorial_text3 =>
      'Jeśli pole otacza ta sama liczba flag, wszystkie pozostałe otaczające pola nie mają min (zielona strzałka).';
  @override
  String get tutorial_text4 => 'Sprawdź liczby i kontynuuj odkrywanie pól.';
  @override
  String get games => 'Rozgrywki';
  @override
  String get tap_to_begin => 'Naciśnij, aby rozpocząć';
  @override
  String get previous_games => 'Poprzednie rozgrywki';
  @override
  String get minefield => 'Poziom rozgrywki';
  @override
  String get standard => 'Standardowy';
  @override
  String get beginner => 'Początkujący';
  @override
  String get intermediate => 'Średniozaawansowany';
  @override
  String get expert => 'Ekspert';
  @override
  String get master => 'Mistrz';
  @override
  String get legend => 'Legendarny';
  @override
  String get open => 'Odkryj';
  @override
  String get settings => 'Ustawienia';
  @override
  String get control_settings => 'Sterowanie';
  @override
  String get default_button => 'Domyślny Przycisk';
  @override
  String get shapes => 'Kształty';
  @override
  String get animations => 'Animacje';
  @override
  String get vibration => 'Wibracja przy dotknięciu';
  @override
  String get about => 'Informacje';
  @override
  String get quit => 'Wyjdź';
  @override
  String get events => 'Statystyki';
  @override
  String get custom => 'Niestandardowy';
  @override
  String get start => 'Rozpocznij';
  @override
  String get width => 'Szerokość';
  @override
  String get height => 'Wysokość';
  @override
  String get mines => 'Ilość min';
  @override
  String get seed => 'Ziarno';
  @override
  String get retry_sure =>
      'Jeśli rozpoczniesz nową rozgrywkę, Twój obecny postęp zostanie utracony.';
  @override
  String get show_licenses => 'Licencje';
  @override
  String get new_game_request => 'Czy chcesz rozpocząć nową rozgrywkę?';
  @override
  String get mines_remaining => '%d pozostałych min';
  @override
  String get game_time => 'Czas gry';
  @override
  String get settings_general => 'Ogólne';
  @override
  String get settings_gameplay => 'Rozgrywka';
  @override
  String get export_settings => 'Eksportuj';
  @override
  String get import_settings => 'Importuj';
  @override
  String get exported_success => 'Ustawienia wyeksportowane!';
  @override
  String get imported_success => 'Ustawienia zaimportowane!';
  @override
  String get settings_accessibility => 'Ułatwienia dostępu';
  @override
  String get system => 'Systemowy';
  @override
  String get sign_in_failed =>
      'Błąd logowania. Sprawdź swoje połączenie z Internetem i spróbuj ponownie.';
  @override
  String get you_won => 'Udało się!';
  @override
  String get victories => 'Zwycięstwa';
  @override
  String get you_lost => 'Nie udało się!';
  @override
  String get you_finished => 'Udało się!';
  @override
  String get defeats => 'Porażki';
  @override
  String get generic_game_over => 'Powodzenia następnym razem.';
  @override
  String get generic_win => 'Znaleziono %1\$d min w ciągu %2\$d sekund.';
  @override
  String get fail_to_share => 'Nie udało się udostępnić';
  @override
  String get version_s => 'Wersja %1\$s';
  @override
  String get sound_effects => 'Efekty dźwiękowe';
  @override
  String get music => 'Muzyka';
  @override
  String get music_by => 'Muzyka od: %1\$s';
  @override
  String get check_music => 'Słuchaj na Spotify…';
  @override
  String get selected => 'Wybrane';
  @override
  String get are_you_sure => 'Na pewno?';
  @override
  String get enable_automatic_flags => 'Automatyczne umieszczanie flag';
  @override
  String get open_areas => 'Odkryte pola';
  @override
  String get total_time => 'Całkowity czas gry';
  @override
  String get average_time => 'Średni czas gry';
  @override
  String get shortest_time => 'Najlepszy czas gry';
  @override
  String get performance => 'Skuteczność';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Używaj Znaku zapytania';
  @override
  String get no_guessing_mode => 'Tryb \'Bez zgadywania\'';
  @override
  String get control => 'Sterowanie';
  @override
  String get control_types => 'Typy sterowania';
  @override
  String get single_click => 'Pojedyncze naciśnięcie';
  @override
  String get double_click => 'Podwójne naciśnięcie';
  @override
  String get long_press => 'Długie naciśnięcie';
  @override
  String get touch_sensibility => 'Czułość dotyku';
  @override
  String get open_tile => 'Odkryj';
  @override
  String get flag_tile => 'Oznacz';
  @override
  String get retry => 'Jeszcze raz';
  @override
  String get continue_game => 'Kontynuuj';
  @override
  String get empty => 'Puste';
  @override
  String get cant_do_it_now => 'Nie można tego teraz zrobić';
  @override
  String get mine_revealed => 'Odkryto minę';
  @override
  String get fail_to_load_ad => 'Błąd wczytywania reklamy';
  @override
  String get you_have_received => 'Otrzymano: \$param1';
  @override
  String get help_win_a_game => 'Wygraj, aby uzyskać więcej porad.';
  @override
  String get unknown_error => 'Nieznany błąd.';
  @override
  String get error => 'Błąd!';
  @override
  String get leaderboards => 'Tablica wyników';
  @override
  String get cancel => 'Anuluj';
  @override
  String get resume => 'Kontynuuj';
  @override
  String get yes => 'Tak';
  @override
  String get unlock => 'Odblokuj';
  @override
  String get unlock_all => 'Odblokuj wszystko';
  @override
  String get achievements => 'Osiągnięcia';
  @override
  String get no => 'Nie';
  @override
  String get general => 'Ogólne';
  @override
  String get more => 'Więcej';
  @override
  String get source_code => 'Kod źródłowy';
  @override
  String get translation => 'Tłumaczenie';
  @override
  String get language => 'Język';
  @override
  String get licenses => 'Licencje';
  @override
  String get google_play_games => 'Gry Google Play';
  @override
  String get loading => 'Wczytywanie…';
  @override
  String get creating_valid_game => 'Tworzenie prawidłowej gry…';
  @override
  String get connect => 'Połącz';
  @override
  String get connecting => 'Łączenie…';
  @override
  String get disconnect => 'Rozłącz';
  @override
  String get disconnected => 'Rozłączono';
  @override
  String get new_game => 'Nowa rozgrywka';
  @override
  String get share => 'Udostępnij';
  @override
  String get share_menu => 'Udostępnij przez…';
  @override
  String get no_network => 'Brak połączenia z Internetem.';
  @override
  String get delete_all => 'Wyzeruj';
  @override
  String get appearance => 'Wygląd';
  @override
  String get themes => 'Motywy';
  @override
  String get delete_all_message =>
      'Spowoduje to nieodwracalne usunięcie wszystkich statystyk.';
  @override
  String get remove_ad => 'Premium';
  @override
  String get help => 'Porada';
  @override
  String get back => 'Wstecz';
  @override
  String get donation => 'Wesprzyj';
  @override
  String get open_on_game => 'Otwieraj od razu w rozgrywce';
  @override
  String get show_windows => 'Pokaż okna';
  @override
  String get select_language => 'Wybierz język';
  @override
  String get switch_control => 'Przełączanie: Oznacz i odkryj';
  @override
  String get switch_control_desc =>
      'Użyj przycisku do przełączania pomiędzy oznaczaniem i odkrywaniem';
  @override
  String get app_description =>
      'Znajdź wszystkie ukryte miny znajdujące się na kwadratowej planszy, unikając ich detonacji.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => 'Czy chcesz przejść samouczek gry?';
  @override
  String get close => 'Zamknij';
  @override
  String get open_tutorial => 'Otwórz samouczek';
  @override
  String get click_numbers => 'Możliwość naciskania liczb';
  @override
  String get flag_when_tap_numbers => 'Oznacz po naciśnięciu na liczbę';
  @override
  String get tap_to_customize => 'Naciśnij, aby zmienić';
  @override
  String get no_guess_fail_warning =>
      'To pole minowe może wymagać zgadywania, aby je ukończyć!';
  @override
  String get fixed_size => 'Ustalony rozmiar';
  @override
  String get progressive => 'Progresywny';
  @override
  String get value_limit_min => 'Min.: %d';
  @override
  String get value_limit_max => 'Maks.: %d';
  @override
  String get proportion_too_high => 'Proporcje są za duże!';
  @override
  String get highlight_unsolved_numbers => 'Podświetl nierozwiązane pola';
  @override
  String get show_clock => 'Pokaż zegar';
  @override
  String get donate_request =>
      'Jeśli lubisz tę grę, rozważ przekazanie darowizny.';
  @override
  String get donate_help => 'Dzięki temu będzie ona dalej rozwijana!';
  @override
  String get acra_toast_text =>
      'Niestety, ale wystąpił błąd. Zalecamy przesłanie raportu do programistów.';
  @override
  String get immersive_mode => 'Tryb immersyjny';
  @override
  String get background_color => 'Kolor tła';
  @override
  String get main_color => 'Główny kolor';
  @override
  String get premium_exclusive => 'Tylko z Premium!';
  @override
  String get preview => 'Podgląd';
  @override
  String get shared_game => 'Udostępniona gra';
  @override
  String get shared_game_description =>
      'Wpisz tutaj kod udostępnionej Ci rozgrywki.';
  @override
  String get code => 'Kod';
  @override
  String get image => 'Obraz';
  @override
  String get free => 'Bezpłatne';
  @override
  String get restore_purchase => 'Przywróć zakupy';
}
