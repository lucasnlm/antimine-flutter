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
class TranslationsCs extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsCs({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.cs,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <cs>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsCs _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Průvodce';
  @override
  String get tutorial_basic =>
      'Pravidlo hry je jednoduché, číslo na čtverci ukazuje počet min, které s ním sousedí a Vy musíte označit všechny miny.';
  @override
  String get tutorial_text1 =>
      'Pokud se číslo dotýká stejného počtu čtverců, jsou ve čtvercích miny.';
  @override
  String get tutorial_text2 =>
      'Po označení první vlajky zkontrolujte čísla a analyzujte další čtverec.';
  @override
  String get tutorial_text3 =>
      'Pokud má čtverec stejný počet vlajek, nejsou všechny ostatní zbývající čtverce vedle něj miny (zelená šipka).';
  @override
  String get tutorial_text4 => 'Zkontrolujte čísla a stále otevírejte čtverce.';
  @override
  String get games => 'Hry';
  @override
  String get tap_to_begin => 'Začněte klepnutím';
  @override
  String get previous_games => 'Předchozí hry';
  @override
  String get minefield => 'Obtížnost';
  @override
  String get standard => 'Standardní';
  @override
  String get beginner => 'Začátečník';
  @override
  String get intermediate => 'Středně pokročilý';
  @override
  String get expert => 'Expert';
  @override
  String get master => 'Mistr';
  @override
  String get legend => 'Legenda';
  @override
  String get open => 'Otevřít';
  @override
  String get settings => 'Nastavení';
  @override
  String get control_settings => 'Nastavení ovládání';
  @override
  String get default_button => 'Výchozí tlačítko';
  @override
  String get shapes => 'Tvary';
  @override
  String get animations => 'Animace';
  @override
  String get vibration => 'Hmatová odezva';
  @override
  String get about => 'O aplikaci';
  @override
  String get quit => 'Ukončit';
  @override
  String get events => 'Statistiky';
  @override
  String get custom => 'Vlastní';
  @override
  String get start => 'Start';
  @override
  String get width => 'Šířka';
  @override
  String get height => 'Výška';
  @override
  String get mines => 'Miny';
  @override
  String get seed => 'Osivo';
  @override
  String get retry_sure =>
      'Pokud zahájíte novou hru,\nbude váš aktuální postup ztracen.';
  @override
  String get show_licenses => 'Zobrazit licence';
  @override
  String get new_game_request => 'Chcete začít novou hru?';
  @override
  String get mines_remaining => 'Počet min: %d';
  @override
  String get game_time => 'Herní čas';
  @override
  String get settings_general => 'Obecné';
  @override
  String get settings_gameplay => 'Hra';
  @override
  String get export_settings => 'Exportovat';
  @override
  String get import_settings => 'Importovat';
  @override
  String get exported_success => 'Nastavení exportována!';
  @override
  String get imported_success => 'Nastavení importována!';
  @override
  String get settings_accessibility => 'Přístupnost';
  @override
  String get system => 'Systém';
  @override
  String get sign_in_failed =>
      'Nelze se přihlásit. Zkontrolujte síťové připojení a akci opakujte.';
  @override
  String get you_won => 'Vyhráli jste!';
  @override
  String get victories => 'Vítězství';
  @override
  String get you_lost => 'Prohráli jste!';
  @override
  String get you_finished => 'Skončili jste!';
  @override
  String get defeats => 'Prohry';
  @override
  String get generic_game_over => 'Hodně štěstí při další hře.';
  @override
  String get generic_win => 'Našli jste %1\$d min za %2\$d sekund.';
  @override
  String get fail_to_share => 'Sdílení se nezdařilo';
  @override
  String get version_s => 'Verze %1\$s';
  @override
  String get sound_effects => 'Zvukové efekty';
  @override
  String get music => 'Hudba';
  @override
  String get music_by => 'Hudba od %1\$s';
  @override
  String get check_music => 'Poslouchat na Spotify…';
  @override
  String get selected => 'Vybráno';
  @override
  String get are_you_sure => 'Jste si jisti?';
  @override
  String get enable_automatic_flags => 'Povolit automatické umísťování vlajek';
  @override
  String get open_areas => 'Otevřené oblasti';
  @override
  String get total_time => 'Celkový čas';
  @override
  String get average_time => 'Průměrný čas';
  @override
  String get shortest_time => 'Nejkratší čas';
  @override
  String get performance => 'Výkon';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Použít otazníky';
  @override
  String get no_guessing_mode => 'Režim "bez hádání"';
  @override
  String get control => 'Ovládání';
  @override
  String get control_types => 'Typ ovládání';
  @override
  String get single_click => 'Jedno klepnutí';
  @override
  String get double_click => 'Dvojité klepnutí';
  @override
  String get long_press => 'Dlouhý stisk';
  @override
  String get touch_sensibility => 'Citlivost dotyků';
  @override
  String get open_tile => 'Otevřít';
  @override
  String get flag_tile => 'Vlajka';
  @override
  String get retry => 'Opakovat';
  @override
  String get continue_game => 'Pokračovat';
  @override
  String get empty => 'Prázdné';
  @override
  String get cant_do_it_now => 'Není možné to nyní udělat';
  @override
  String get mine_revealed => 'Mina byla odkryta';
  @override
  String get fail_to_load_ad => 'Nepodařilo se načíst reklamu';
  @override
  String get you_have_received => 'Obdrželi jste: \$param1';
  @override
  String get help_win_a_game => 'Pro další tipy musíte vyhrát hru.';
  @override
  String get unknown_error => 'Neznámá chyba.';
  @override
  String get error => 'Chyba!';
  @override
  String get leaderboards => 'Žebříčky';
  @override
  String get cancel => 'Zrušit';
  @override
  String get resume => 'Pokračovat';
  @override
  String get yes => 'Ano';
  @override
  String get unlock => 'Odemknout';
  @override
  String get unlock_all => 'Odemknout vše';
  @override
  String get achievements => 'Úspěchy';
  @override
  String get no => 'Ne';
  @override
  String get general => 'Obecné';
  @override
  String get more => 'Více';
  @override
  String get source_code => 'Zdrojový kód';
  @override
  String get translation => 'Překlad';
  @override
  String get language => 'Jazyk';
  @override
  String get licenses => 'Licence';
  @override
  String get google_play_games => 'Google Play Games';
  @override
  String get loading => 'Načítání…';
  @override
  String get creating_valid_game => 'Vytvářím platnou hru…';
  @override
  String get connect => 'Připojit';
  @override
  String get connecting => 'Připojování…';
  @override
  String get disconnect => 'Odpojit';
  @override
  String get disconnected => 'Odpojeno';
  @override
  String get new_game => 'Nová hra';
  @override
  String get share => 'Sdílet';
  @override
  String get share_menu => 'Sdílet…';
  @override
  String get no_network => 'Bez připojení k Internetu.';
  @override
  String get delete_all => 'Smazat vše';
  @override
  String get appearance => 'Vzhled';
  @override
  String get themes => 'Motivy';
  @override
  String get delete_all_message => 'Trvale smazat všechny události.';
  @override
  String get remove_ad => 'Odstranit reklamy';
  @override
  String get help => 'Tip';
  @override
  String get back => 'Zpět';
  @override
  String get donation => 'Darovat';
  @override
  String get open_on_game => 'Otevřít na obrazovce hry';
  @override
  String get show_windows => 'Zobrazit okna';
  @override
  String get select_language => 'Vybrat jazyk';
  @override
  String get switch_control => 'Přepnout: označit a otevřít';
  @override
  String get switch_control_desc =>
      'Pomocí tlačítka můžete přepínat mezi označením a otevřením';
  @override
  String get app_description =>
      'Musíte vyčistit obdélníkovou desku obsahující skryté miny, aniž by kterákoliv z nich vybuchla.';
  @override
  String get app_name => 'Anti-Mine';
  @override
  String get do_you_know_how_to_play => 'Víte, jak hrát Minesweeper?';
  @override
  String get close => 'Zavřít';
  @override
  String get open_tutorial => 'Otevřít průvodce';
  @override
  String get click_numbers => 'Povolit klepnutí na čísla';
  @override
  String get flag_when_tap_numbers => 'Označit při klepnutí na číslo';
  @override
  String get tap_to_customize => 'Klepnutím přizpůsobit';
  @override
  String get no_guess_fail_warning =>
      'Možná budete potřebovat nápovědu k dokončení této úrovně!';
  @override
  String get fixed_size => 'Pevná velikost';
  @override
  String get progressive => 'Progresivní';
  @override
  String get value_limit_min => 'Min. je %d';
  @override
  String get value_limit_max => 'Max. je %d';
  @override
  String get proportion_too_high => 'Podíl je příliš vysoký!';
  @override
  String get highlight_unsolved_numbers => 'Zvýraznit nevyřešená čísla';
  @override
  String get show_clock => 'Zobrazit hodiny';
  @override
  String get donate_request => 'Pokud se vám hra líbí, zvažte možnost přispět.';
  @override
  String get donate_help => 'Pomůžete nám udržet tento projekt aktivní!';
  @override
  String get acra_toast_text =>
      'Omlouváme se, došlo k chybě. Prosím, pošlete zprávu vývojářům.';
  @override
  String get immersive_mode => 'Režim přes celou obrazovku';
  @override
  String get background_color => 'Barva pozadí';
  @override
  String get main_color => 'Hlavní barva';
  @override
  String get premium_exclusive => 'Exkluzivní Premium!';
  @override
  String get preview => 'Náhled';
  @override
  String get shared_game => 'Sdílená hra';
  @override
  String get shared_game_description =>
      'Zde vložte kód hry minesweeper, který jste sdíleli.';
  @override
  String get code => 'Kód';
  @override
  String get image => 'Obrázek';
  @override
  String get free => 'Zdarma';
  @override
  String get restore_purchase => 'Obnovit nákupy';
}
