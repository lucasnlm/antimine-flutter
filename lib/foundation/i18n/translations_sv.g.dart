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
class TranslationsSv extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsSv({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.sv,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <sv>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsSv _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Guide';
  @override
  String get tutorial_basic =>
      'Reglerna är enkla, siffran på en kvadrat visar antalet minor bredvid den och man måste flagga alla minor.';
  @override
  String get tutorial_text1 =>
      'Om ett tal rör samma antal rutor, då är alla rutor minor.';
  @override
  String get tutorial_text2 =>
      'Efter du markerat din första flagga, granska alla nummer och analysera nästa ruta.';
  @override
  String get tutorial_text3 =>
      'Om en ruta har samma mängd flaggor så är alla andra återstående rutor intill inte bomber (den gröna pilen).';
  @override
  String get tutorial_text4 => 'Granska siffrorna och fortsätt öppna rutorna.';
  @override
  String get games => 'Spel';
  @override
  String get tap_to_begin => 'Tryck för att börja';
  @override
  String get previous_games => 'Tidigare spel';
  @override
  String get minefield => 'Svårighetsgrad';
  @override
  String get standard => 'Standard';
  @override
  String get beginner => 'Nybörjare';
  @override
  String get intermediate => 'Mellanliggande';
  @override
  String get expert => 'Avancerat';
  @override
  String get master => 'Mästare';
  @override
  String get legend => 'Legendariskt';
  @override
  String get open => 'Öppna';
  @override
  String get settings => 'Inställningar';
  @override
  String get control_settings => 'Kontrollinställningar';
  @override
  String get default_button => 'Standardknapp';
  @override
  String get shapes => 'Former';
  @override
  String get animations => 'Animationer';
  @override
  String get vibration => 'Haptik-feedback';
  @override
  String get about => 'Om';
  @override
  String get quit => 'Avsluta';
  @override
  String get events => 'Statistik';
  @override
  String get custom => 'Anpassa';
  @override
  String get start => 'Börja';
  @override
  String get width => 'Bredd';
  @override
  String get height => 'Höjd';
  @override
  String get mines => 'Minor';
  @override
  String get seed => 'Seed';
  @override
  String get retry_sure =>
      'Om du startar ett nytt spel kommer dina pågående framsteg att förloras.';
  @override
  String get show_licenses => 'Visa licenser';
  @override
  String get new_game_request => 'Vill du starta ett nytt spel?';
  @override
  String get mines_remaining => '%d minor';
  @override
  String get game_time => 'Speltid';
  @override
  String get settings_general => 'Allmänt';
  @override
  String get settings_gameplay => 'Spelsätt';
  @override
  String get export_settings => 'Exportera';
  @override
  String get import_settings => 'Importera';
  @override
  String get exported_success => 'Inställningar exporterade!';
  @override
  String get imported_success => 'Inställningar importerade!';
  @override
  String get settings_accessibility => 'Tillgänglighet';
  @override
  String get system => 'System';
  @override
  String get sign_in_failed =>
      'Det gick inte att logga in. Kontrollera nätverksanslutningen och försök igen.';
  @override
  String get you_won => 'Du vann!';
  @override
  String get victories => 'Vinster';
  @override
  String get you_lost => 'Du förlorade!';
  @override
  String get you_finished => 'Du är färdig!';
  @override
  String get defeats => 'Förluster';
  @override
  String get generic_game_over => 'Lycka till på ditt nästa spel.';
  @override
  String get generic_win => 'Du hittade %1\$d gruvor på %2\$d sekunder.';
  @override
  String get fail_to_share => 'Misslyckades att dela';
  @override
  String get version_s => 'Version %1\$s';
  @override
  String get sound_effects => 'Ljudeffekter';
  @override
  String get music => 'Musik';
  @override
  String get music_by => 'Musik av %1\$s';
  @override
  String get check_music => 'Lyssna på Spotify…';
  @override
  String get selected => 'Vald';
  @override
  String get are_you_sure => 'Är du säker?';
  @override
  String get enable_automatic_flags =>
      'Aktivera automatisk placering av flaggor';
  @override
  String get open_areas => 'Öppna områden';
  @override
  String get total_time => 'Total tid';
  @override
  String get average_time => 'Genomsnittlig Tid';
  @override
  String get shortest_time => 'Kortaste tiden';
  @override
  String get performance => 'Prestanda';
  @override
  String get ok => 'Okej';
  @override
  String get use_question_mark => 'Använd frågetecken';
  @override
  String get no_guessing_mode => '‘Ingen gissning’ läge';
  @override
  String get control => 'Kontroller';
  @override
  String get control_types => 'Kontrolltyper';
  @override
  String get single_click => 'Enkeltryck';
  @override
  String get double_click => 'Dubbeltryck';
  @override
  String get long_press => 'Långtryck';
  @override
  String get touch_sensibility => 'Anslagskänslighet';
  @override
  String get open_tile => 'Öppna';
  @override
  String get flag_tile => 'Flagga';
  @override
  String get retry => 'Försök igen';
  @override
  String get continue_game => 'Fortsätt';
  @override
  String get empty => 'Tom';
  @override
  String get cant_do_it_now => 'Det är omöjligt att göra det nu';
  @override
  String get mine_revealed => 'En mina har avslöjats';
  @override
  String get fail_to_load_ad => 'Misslyckades att ladda annons';
  @override
  String get you_have_received => 'Du har fått: \$param1';
  @override
  String get help_win_a_game => 'För fler ledtrådar, måste du vinna ett spel.';
  @override
  String get unknown_error => 'Okänt fel.';
  @override
  String get error => 'Fel!';
  @override
  String get leaderboards => 'Topplistor';
  @override
  String get cancel => 'Avbryt';
  @override
  String get resume => 'Återuppta';
  @override
  String get yes => 'Ja';
  @override
  String get unlock => 'Lås upp';
  @override
  String get unlock_all => 'Lås upp allt';
  @override
  String get achievements => 'Prestationer';
  @override
  String get no => 'Nej';
  @override
  String get general => 'Allmänt';
  @override
  String get more => 'Mer';
  @override
  String get source_code => 'Källkod';
  @override
  String get translation => 'Översättning';
  @override
  String get language => 'Språk';
  @override
  String get licenses => 'Licenser';
  @override
  String get google_play_games => 'Google Play Spel';
  @override
  String get loading => 'Laddar…';
  @override
  String get creating_valid_game => 'Skapar ett giltigt spel…';
  @override
  String get connect => 'Anslut';
  @override
  String get connecting => 'Ansluter…';
  @override
  String get disconnect => 'Koppla från';
  @override
  String get disconnected => 'Frånkopplad';
  @override
  String get new_game => 'Nytt Spel';
  @override
  String get share => 'Dela';
  @override
  String get share_menu => 'Dela…';
  @override
  String get no_network => 'Ingen internetuppkoppling.';
  @override
  String get delete_all => 'Ta bort allt';
  @override
  String get appearance => 'Utseende';
  @override
  String get themes => 'Teman';
  @override
  String get delete_all_message => 'Ta bort alla händelser permanent.';
  @override
  String get remove_ad => 'Ta bort annonser';
  @override
  String get help => 'Ledtråd';
  @override
  String get back => 'Tillbaka';
  @override
  String get donation => 'Donation';
  @override
  String get open_on_game => 'Öppna på spelskärmen';
  @override
  String get show_windows => 'Visa fönster';
  @override
  String get select_language => 'Välj språk';
  @override
  String get switch_control => 'Växel: Flagga och öppna';
  @override
  String get switch_control_desc =>
      'Använd knappen för att växla mellan Flagga och Öppna';
  @override
  String get app_description =>
      'Du måste rensa en rektangulär bräda som innehåller dolda miner utan att detonera någon av dem.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => 'Vet du hur man spelar Minesweeper?';
  @override
  String get close => 'Stäng';
  @override
  String get open_tutorial => 'Öppna Guide';
  @override
  String get click_numbers => 'Tillåt tryck på siffror';
  @override
  String get flag_when_tap_numbers => 'Flagga när du trycker på nummer';
  @override
  String get tap_to_customize => 'Tryck för att anpassa';
  @override
  String get no_guess_fail_warning =>
      'Den nuvarande minfältet är kanske inte är gissnings fri!';
  @override
  String get fixed_size => 'Fast storlek';
  @override
  String get progressive => 'Progressiv';
  @override
  String get value_limit_min => 'Minsta är %d';
  @override
  String get value_limit_max => 'Max är %d';
  @override
  String get proportion_too_high => 'För hög andel!';
  @override
  String get highlight_unsolved_numbers => 'Markera olösta tal';
  @override
  String get show_clock => 'Visa klocka';
  @override
  String get donate_request =>
      'Om du gillar spelet, överväg om du vill göra en donation.';
  @override
  String get donate_help =>
      'Det kommer hjälpa till att hålla projektet aktivt!';
  @override
  String get acra_toast_text =>
      'Tyvärr, ett fel inträffade. Vänligen skicka rapporten till utvecklarna.';
  @override
  String get immersive_mode => 'Immersiveläge';
  @override
  String get background_color => 'Bakgrundsfärg';
  @override
  String get main_color => 'Huvudfärg';
  @override
  String get premium_exclusive => 'Premium exklusivt!';
  @override
  String get preview => 'Förhandsgranska';
  @override
  String get shared_game => 'Delat spel';
  @override
  String get shared_game_description =>
      'Infoga koden för ett minröjare spel som delas med dig här.';
  @override
  String get code => 'Kod';
  @override
  String get image => 'Bild';
  @override
  String get free => 'Free';
  @override
  String get restore_purchase => 'Återställ Inköp';
}
