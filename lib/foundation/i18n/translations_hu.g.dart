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
class TranslationsHu extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsHu({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.hu,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <hu>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsHu _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Ismertető';
  @override
  String get tutorial_basic =>
      'A játékszabály egyszerű, a négyzeten lévő szám mutatja a szomszédos aknák számát. A cél minden akna megjelölése.';
  @override
  String get tutorial_text1 =>
      'Ha egy szám ugyanannyi négyzetet érint, akkor a négyzetek mind aknák.';
  @override
  String get tutorial_text2 =>
      'Miután megjelölte az első zászlót, tekintse át a számokat és elemezze a következő négyzetet.';
  @override
  String get tutorial_text3 =>
      'Ha egy négyzetnek ugyanannyi zászlaja van, akkor a többi szomszédos négyzetek nem aknák (zöld nyíl).';
  @override
  String get tutorial_text4 =>
      'Tekintse át a számokat és nyisson ki több négyzetet.';
  @override
  String get games => 'Játékok';
  @override
  String get tap_to_begin => 'Érintse meg a kezdéshez';
  @override
  String get previous_games => 'Előző játékok';
  @override
  String get minefield => 'Nehézség';
  @override
  String get standard => 'Alapértelmezett';
  @override
  String get beginner => 'Kezdő';
  @override
  String get intermediate => 'Haladó';
  @override
  String get expert => 'Szakértő';
  @override
  String get master => 'Mester';
  @override
  String get legend => 'Legenda';
  @override
  String get open => 'Megnyitás';
  @override
  String get settings => 'Beállítások';
  @override
  String get control_settings => 'Irányítási beállítások';
  @override
  String get default_button => 'Alapértelmezett Gomb';
  @override
  String get shapes => 'Formák';
  @override
  String get animations => 'Animációk';
  @override
  String get vibration => 'Érintéskori visszajelzés';
  @override
  String get about => 'Rólunk';
  @override
  String get quit => 'Kilépés';
  @override
  String get events => 'Statisztikák';
  @override
  String get custom => 'Egyéni';
  @override
  String get start => 'Kezdés';
  @override
  String get width => 'Szélesség';
  @override
  String get height => 'Magasság';
  @override
  String get mines => 'Aknák';
  @override
  String get seed => 'Seed';
  @override
  String get retry_sure => 'Ha új játékot kezdesz, minden haladásod elveszik.';
  @override
  String get show_licenses => 'Licencek megtekintése';
  @override
  String get new_game_request => 'Szeretnél új játékot kezdeni?';
  @override
  String get mines_remaining => '%d akna';
  @override
  String get game_time => 'Játékidő';
  @override
  String get settings_general => 'Általános';
  @override
  String get settings_gameplay => 'Játékmenet';
  @override
  String get export_settings => 'Exportálás';
  @override
  String get import_settings => 'Importálás';
  @override
  String get exported_success => 'Beállítások exportálva!';
  @override
  String get imported_success => 'Beállítások importálva!';
  @override
  String get settings_accessibility => 'Kisegítő lehetőségek';
  @override
  String get system => 'Rendszer';
  @override
  String get sign_in_failed =>
      'Sikertelen bejelentkezés. Kérlek ellenőrizd a hálózati csatlakozást és próbáld újra.';
  @override
  String get you_won => 'Győztél!';
  @override
  String get victories => 'Győzelmek';
  @override
  String get you_lost => 'Vesztettél!';
  @override
  String get you_finished => 'Befejezted!';
  @override
  String get defeats => 'Vereségek';
  @override
  String get generic_game_over => 'Sok szerencsét a következő játékhoz.';
  @override
  String get generic_win => '%1\$d aknát talált %2\$d másodperc alatt.';
  @override
  String get fail_to_share => 'Sikertelen megosztás';
  @override
  String get version_s => '%1\$s verzió';
  @override
  String get sound_effects => 'Hangeffektek';
  @override
  String get music => 'Zene';
  @override
  String get music_by => 'Zene: %1\$s';
  @override
  String get check_music => 'Hallgasd meg Spoitifyon…';
  @override
  String get selected => 'Kijelölve';
  @override
  String get are_you_sure => 'Biztos vagy benne?';
  @override
  String get enable_automatic_flags =>
      'A zászlók automatikus elhelyezésének engedélyezése';
  @override
  String get open_areas => 'Nyílt területek';
  @override
  String get total_time => 'Teljes játékidő';
  @override
  String get average_time => 'Átlagos játékidő';
  @override
  String get shortest_time => 'Legrövidebb idő';
  @override
  String get performance => 'Teljesítmény';
  @override
  String get ok => 'Rendben';
  @override
  String get use_question_mark => 'Kérdőjel használata';
  @override
  String get no_guessing_mode => '"Nincs tippelés" mód';
  @override
  String get control => 'Irányítások';
  @override
  String get control_types => 'Kontroller típus';
  @override
  String get single_click => 'Egyszeri érintés';
  @override
  String get double_click => 'Dupla érintés';
  @override
  String get long_press => 'Hosszú érintés';
  @override
  String get touch_sensibility => 'Érzékenység';
  @override
  String get open_tile => 'Megnyitás';
  @override
  String get flag_tile => 'Megjelölés';
  @override
  String get retry => 'Újra';
  @override
  String get continue_game => 'Folytatás';
  @override
  String get empty => 'Üres';
  @override
  String get cant_do_it_now => 'Most lehetetlen ezt megtenni';
  @override
  String get mine_revealed => 'Egy bányát fedeztek fel';
  @override
  String get fail_to_load_ad => 'Hiba betöltés közben';
  @override
  String get you_have_received => 'Kapott összeg: \$param1';
  @override
  String get help_win_a_game =>
      'További segítségért meg kell nyernie egy játékot.';
  @override
  String get unknown_error => 'Ismeretlen hiba.';
  @override
  String get error => 'Hiba!';
  @override
  String get leaderboards => 'Ranglista';
  @override
  String get cancel => 'Mégse';
  @override
  String get resume => 'Folytatás';
  @override
  String get yes => 'Igen';
  @override
  String get unlock => 'Feloldás';
  @override
  String get unlock_all => 'Összes feloldása';
  @override
  String get achievements => 'Teljesítmények';
  @override
  String get no => 'Nem';
  @override
  String get general => 'Általános';
  @override
  String get more => 'Több';
  @override
  String get source_code => 'Forráskód';
  @override
  String get translation => 'Fordítás';
  @override
  String get language => 'Nyelv';
  @override
  String get licenses => 'Licencek';
  @override
  String get google_play_games => 'Google Play Játékok';
  @override
  String get loading => 'Betöltés…';
  @override
  String get creating_valid_game => 'Érvényes játék létrehozása…';
  @override
  String get connect => 'Csatlakozás';
  @override
  String get connecting => 'Csatlakozás…';
  @override
  String get disconnect => 'Lecsatlakozás';
  @override
  String get disconnected => 'Lecsatlakozva';
  @override
  String get new_game => 'Új játék';
  @override
  String get share => 'Megosztás';
  @override
  String get share_menu => 'Megosztás…';
  @override
  String get no_network => 'Nincs internetkapcsolat.';
  @override
  String get delete_all => 'Az összes törlése';
  @override
  String get appearance => 'Megjelenés';
  @override
  String get themes => 'Témák';
  @override
  String get delete_all_message => 'Az összes esemény végleges törlése.';
  @override
  String get remove_ad => 'Prémium';
  @override
  String get help => 'Tipp';
  @override
  String get back => 'Vissza';
  @override
  String get donation => 'Adomány';
  @override
  String get open_on_game => 'Nyissa meg a játék képernyőn';
  @override
  String get show_windows => 'Ablakok megjelenítése';
  @override
  String get select_language => 'Válassz nyelvet';
  @override
  String get switch_control => 'Kapcsoló: Jelölés és megnyitás';
  @override
  String get switch_control_desc => 'A gombbal válthat a Flag és a Open között';
  @override
  String get app_description =>
      'Meg kell tisztítanod egy rejtett aknákkal teli, négyszögletes pályát anélkül, hogy akár egyet is felrobbantanál.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play =>
      'Tudja, hogy kell aknakeresőt játszani?';
  @override
  String get close => 'Bezárás';
  @override
  String get open_tutorial => 'Bemutató megnyitása';
  @override
  String get click_numbers => 'Koppintás engedélyezése számokon';
  @override
  String get flag_when_tap_numbers => 'Megjelölés, amikor a számokra koppint';
  @override
  String get tap_to_customize => 'Koppintson a testreszabáshoz';
  @override
  String get no_guess_fail_warning =>
      'A jelenlegi szint lehet nem tipp mentes!';
  @override
  String get fixed_size => 'Rögzített méret';
  @override
  String get progressive => 'Előrehaladás';
  @override
  String get value_limit_min => 'Minimum %d';
  @override
  String get value_limit_max => 'Maximum %d';
  @override
  String get proportion_too_high => 'Az arány túl magas!';
  @override
  String get highlight_unsolved_numbers => 'Megoldatlan számok kiemelése';
  @override
  String get show_clock => 'Óra megjelenítése';
  @override
  String get donate_request =>
      'Ha tetszik ez a játék, fontolja meg az adományozást.';
  @override
  String get donate_help =>
      'Ez segíteni fog abban, hogy ez a projekt aktív maradjon!';
  @override
  String get acra_toast_text =>
      'Sajnáljuk, hiba történt. Kérjük, küldje el a jelentést a fejlesztőknek.';
  @override
  String get immersive_mode => 'Immerzív mód';
  @override
  String get background_color => 'Háttérszín';
  @override
  String get main_color => 'Fő szín';
  @override
  String get premium_exclusive => 'Exkluzív prémium!';
  @override
  String get preview => 'Előnézet';
  @override
  String get shared_game => 'Játszma megosztás';
  @override
  String get shared_game_description =>
      'Ide írd be egy veled megosztott aknakereső játék kódját.';
  @override
  String get code => 'Kód';
  @override
  String get image => 'Kép';
  @override
  String get free => 'Free';
  @override
  String get restore_purchase => 'Vásárolt dolgok visszaválltása';
}
