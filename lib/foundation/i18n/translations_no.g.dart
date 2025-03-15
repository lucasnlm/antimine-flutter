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
class TranslationsNo extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsNo({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.no,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <no>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsNo _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Opplæring';
  @override
  String get tutorial_basic =>
      'Reglene for spillet er lette; nummeret på en rute viser antall miner som berører den og du må flagge alle minene.';
  @override
  String get tutorial_text1 =>
      'Hvis et nummer berører samme antallet ruter så er alle rutene miner.';
  @override
  String get tutorial_text2 =>
      'Etter du har satt ditt første flagg, se over og analyser den neste ruten.';
  @override
  String get tutorial_text3 =>
      'Hvis en rute har samme antall flagg, vil alle de gjenværende rutene som berører den ikke være miner (den grønne pilen).';
  @override
  String get tutorial_text4 => 'Se over tallene og fortsett å åpne ruter.';
  @override
  String get games => 'Spill';
  @override
  String get tap_to_begin => 'Trykk for å begynne';
  @override
  String get previous_games => 'Tidligere Spill';
  @override
  String get minefield => 'Vanskelighet';
  @override
  String get standard => 'Standard';
  @override
  String get beginner => 'Nybegynner';
  @override
  String get intermediate => 'Middels';
  @override
  String get expert => 'Ekspert';
  @override
  String get master => 'Mester';
  @override
  String get legend => 'Legende';
  @override
  String get open => 'Åpne';
  @override
  String get settings => 'Innstillinger';
  @override
  String get control_settings => 'Kontrollinnstillinger';
  @override
  String get default_button => 'Standardknapp';
  @override
  String get shapes => 'Former';
  @override
  String get animations => 'Animasjoner';
  @override
  String get vibration => 'Haptisk Tilbakemelding';
  @override
  String get about => 'Om';
  @override
  String get quit => 'Avslutt';
  @override
  String get events => 'Statistikk';
  @override
  String get custom => 'Egendefinert';
  @override
  String get start => 'Start';
  @override
  String get width => 'Bredde';
  @override
  String get height => 'Høyde';
  @override
  String get mines => 'Miner';
  @override
  String get seed => 'Kilde';
  @override
  String get retry_sure =>
      'Hvis du starter et nytt spill vil din nåværende fremgang gå tapt.';
  @override
  String get show_licenses => 'Vis Lisenser';
  @override
  String get new_game_request => 'Vil du starte et nytt spill?';
  @override
  String get mines_remaining => '%d miner';
  @override
  String get game_time => 'Spilletid';
  @override
  String get settings_general => 'Generelt';
  @override
  String get settings_gameplay => 'Spillopplevelse';
  @override
  String get export_settings => 'Eksporter';
  @override
  String get import_settings => 'Importer';
  @override
  String get exported_success => 'Innstillinger eksportert!';
  @override
  String get imported_success => 'Innstillinger importert!';
  @override
  String get settings_accessibility => 'Tilgjengelighet';
  @override
  String get system => 'System';
  @override
  String get sign_in_failed =>
      'Innlogging feilet. Vennligst sjekk nettverkstilkoblingen din og prøv igjen.';
  @override
  String get you_won => 'Du vant!';
  @override
  String get victories => 'Seire';
  @override
  String get you_lost => 'Du tapte!';
  @override
  String get you_finished => 'Du er ferdig!';
  @override
  String get defeats => 'Nederlag';
  @override
  String get generic_game_over => 'Lykke til i det neste spillet.';
  @override
  String get generic_win => 'Du fant %1\$d miner på %2\$d sekunder.';
  @override
  String get fail_to_share => 'Deling feilet';
  @override
  String get version_s => 'Versjon %1\$s';
  @override
  String get sound_effects => 'Lydeffekter';
  @override
  String get music => 'Musikk';
  @override
  String get music_by => 'Musikk av %1\$s';
  @override
  String get check_music => 'Lytt på Spotify…';
  @override
  String get selected => 'Valgt';
  @override
  String get are_you_sure => 'Er du sikker?';
  @override
  String get enable_automatic_flags => 'Aktiver automatisk plassering av flagg';
  @override
  String get open_areas => 'Åpne områder';
  @override
  String get total_time => 'Total Tid';
  @override
  String get average_time => 'Gjennomsnittlig Tid';
  @override
  String get shortest_time => 'Korteste tid';
  @override
  String get performance => 'Ytelse';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Bruk Spørsmålstegn';
  @override
  String get no_guessing_mode => '\'Ingen gjetting\'-modus';
  @override
  String get control => 'Kontroller';
  @override
  String get control_types => 'Kontrolltyper';
  @override
  String get single_click => 'Enkeltrykk';
  @override
  String get double_click => 'Dobbeltrykk';
  @override
  String get long_press => 'Langt trykk';
  @override
  String get touch_sensibility => 'Berøringsfølsomhet';
  @override
  String get open_tile => 'Åpne';
  @override
  String get flag_tile => 'Flagg';
  @override
  String get retry => 'Prøv på nytt';
  @override
  String get continue_game => 'Fortsett';
  @override
  String get empty => 'Tom';
  @override
  String get cant_do_it_now => 'Umulig å gjøre det nå';
  @override
  String get mine_revealed => 'En bombe er avslørt';
  @override
  String get fail_to_load_ad => 'Kunne ikke laste inn reklame';
  @override
  String get you_have_received => 'Du har mottatt: \$param1';
  @override
  String get help_win_a_game => 'For flere hint må du vinne et spill.';
  @override
  String get unknown_error => 'Ukjent feil.';
  @override
  String get error => 'Feil!';
  @override
  String get leaderboards => 'Ledertavle';
  @override
  String get cancel => 'Avbryt';
  @override
  String get resume => 'Fortsett';
  @override
  String get yes => 'Ja';
  @override
  String get unlock => 'Lås opp';
  @override
  String get unlock_all => 'Lås opp alle';
  @override
  String get achievements => 'Prestasjoner';
  @override
  String get no => 'Nei';
  @override
  String get general => 'Generelt';
  @override
  String get more => 'Mer';
  @override
  String get source_code => 'Kildekode';
  @override
  String get translation => 'Oversettelse';
  @override
  String get language => 'Språk';
  @override
  String get licenses => 'Lisenser';
  @override
  String get google_play_games => 'Google Play Spill';
  @override
  String get loading => 'Laster…';
  @override
  String get creating_valid_game => 'Lager gyldig spill…';
  @override
  String get connect => 'Koble til';
  @override
  String get connecting => 'Kobler til…';
  @override
  String get disconnect => 'Koble fra';
  @override
  String get disconnected => 'Frakoblet';
  @override
  String get new_game => 'Nytt Spill';
  @override
  String get share => 'Del';
  @override
  String get share_menu => 'Del med…';
  @override
  String get no_network => 'Ingen Internett-forbindelse.';
  @override
  String get delete_all => 'Slett alle';
  @override
  String get appearance => 'Utseende';
  @override
  String get themes => 'Temaer';
  @override
  String get delete_all_message => 'Slett alle hendelser permanent.';
  @override
  String get remove_ad => 'Fjern Reklamer';
  @override
  String get help => 'Hint';
  @override
  String get back => 'Tilbake';
  @override
  String get donation => 'Donasjon';
  @override
  String get open_on_game => 'Åpne på spillskjermen';
  @override
  String get show_windows => 'Vis vinduer';
  @override
  String get select_language => 'Velg språk';
  @override
  String get switch_control => 'Bytt: Flagg og Åpne';
  @override
  String get switch_control_desc =>
      'Bruk knappen for å bytte mellom Flagg og Åpne';
  @override
  String get app_description =>
      'Du må rydde en rektangulær plate med skjulte miner uten å detonere noen av dem.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play =>
      'Vet du allerede hvordan man spiller minesveiper?';
  @override
  String get close => 'Lukk';
  @override
  String get open_tutorial => 'Åpne opplæring';
  @override
  String get click_numbers => 'Tillat trykk på tall';
  @override
  String get flag_when_tap_numbers => 'Flagg når du trykker på tall';
  @override
  String get tap_to_customize => 'Trykk for å tilpasse';
  @override
  String get no_guess_fail_warning =>
      'Det nåværende minefeltet kan ikke løses uten å gjette!';
  @override
  String get fixed_size => 'Fast størrelse';
  @override
  String get progressive => 'Progressiv';
  @override
  String get value_limit_min => 'Minimum er %d';
  @override
  String get value_limit_max => 'Maks er %d';
  @override
  String get proportion_too_high => 'Andelen er for høy!';
  @override
  String get highlight_unsolved_numbers => 'Marker uløste numre';
  @override
  String get show_clock => 'Vis klokke';
  @override
  String get donate_request => 'Vurder å donere dersom du liker dette spillet.';
  @override
  String get donate_help => 'Det bidrar til å holde dette prosjektet aktivt!';
  @override
  String get acra_toast_text =>
      'Beklager, det oppstod en feil. Vennligst send rapporten til utviklerne.';
  @override
  String get immersive_mode => 'Immersivmodus';
  @override
  String get background_color => 'Bakgrunnsfarge';
  @override
  String get main_color => 'Hovedfarge';
  @override
  String get premium_exclusive => 'Eksklusivt for premium!';
  @override
  String get preview => 'Forhåndsvis';
  @override
  String get shared_game => 'Delt spill';
  @override
  String get shared_game_description =>
      'Sett inn koden til et minesweeper spill som ble delt med deg.';
  @override
  String get code => 'Kode';
  @override
  String get image => 'Bilde';
  @override
  String get free => 'Gratis';
  @override
  String get restore_purchase => 'Gjenopprett kjøp';
}
