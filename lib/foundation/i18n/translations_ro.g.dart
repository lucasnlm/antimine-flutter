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
class TranslationsRo extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsRo({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.ro,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <ro>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsRo _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Tutorial';
  @override
  String get tutorial_basic =>
      'Regula jocului este simplă: numărul dintr-un pătrat indică numărul de mine adiacente și trebuie să marchezi toate minele cu un steag.';
  @override
  String get tutorial_text1 =>
      'Dacă un număr atinge același număr de pătrate, atunci pătratele sunt toate mine.';
  @override
  String get tutorial_text2 =>
      'După marcarea primului steag, examinează numerele și analizează următorul pătrat.';
  @override
  String get tutorial_text3 =>
      'Dacă un pătrat are același număr de steaguri, toate celelalte pătrate rămase adiacente nu sunt mine (săgeată verde).';
  @override
  String get tutorial_text4 =>
      'Examinează numerele și continuă să deschizi pătrate.';
  @override
  String get games => 'Jocuri';
  @override
  String get tap_to_begin => 'Atinge pentru a începe';
  @override
  String get previous_games => 'Jocuri anterioare';
  @override
  String get minefield => 'Dificultate';
  @override
  String get standard => 'Standard';
  @override
  String get beginner => 'Începător';
  @override
  String get intermediate => 'Intermediar';
  @override
  String get expert => 'Expert';
  @override
  String get master => 'Maestru';
  @override
  String get legend => 'Legendă';
  @override
  String get open => 'Deschide';
  @override
  String get settings => 'Setări';
  @override
  String get control_settings => 'Setări de control';
  @override
  String get default_button => 'Buton implicit';
  @override
  String get shapes => 'Forme';
  @override
  String get animations => 'Animații';
  @override
  String get vibration => 'Reacție haptică';
  @override
  String get about => 'Despre';
  @override
  String get quit => 'Ieși';
  @override
  String get events => 'Statistici';
  @override
  String get custom => 'Particularizat';
  @override
  String get start => 'Începe';
  @override
  String get width => 'Lățime';
  @override
  String get height => 'Înălțime';
  @override
  String get mines => 'Mine';
  @override
  String get seed => 'Număr de generare';
  @override
  String get retry_sure =>
      'Dacă începi un joc nou, progresul actual va fi pierdut.';
  @override
  String get show_licenses => 'Afișează licențele';
  @override
  String get new_game_request => 'Vrei să începi un joc nou?';
  @override
  String get mines_remaining => '%d mine';
  @override
  String get game_time => 'Timp de joc';
  @override
  String get settings_general => 'General';
  @override
  String get settings_gameplay => 'Dinamica jocului';
  @override
  String get export_settings => 'Exportare';
  @override
  String get import_settings => 'Importare';
  @override
  String get exported_success => 'Setări exportate!';
  @override
  String get imported_success => 'Setări importate!';
  @override
  String get settings_accessibility => 'Accesibilitate';
  @override
  String get system => 'Sistem';
  @override
  String get sign_in_failed =>
      'Nu se poate conecta. Te rugăm să îți verifici conexiunea la rețea și să încerci din nou.';
  @override
  String get you_won => 'Ai câștigat!';
  @override
  String get victories => 'Victorii';
  @override
  String get you_lost => 'Ai pierdut!';
  @override
  String get you_finished => 'Ai terminat!';
  @override
  String get defeats => 'Înfrângeri';
  @override
  String get generic_game_over => 'Mult noroc la următorul joc.';
  @override
  String get generic_win => 'Ai găsit %1\$d mine în %2\$d secunde.';
  @override
  String get fail_to_share => 'Distribuire eșuată';
  @override
  String get version_s => 'Versiunea %1\$s';
  @override
  String get sound_effects => 'Efecte sonore';
  @override
  String get music => 'Muzică';
  @override
  String get music_by => 'Muzică de %1\$s';
  @override
  String get check_music => 'Ascultă pe Spotify…';
  @override
  String get selected => 'Selectat';
  @override
  String get are_you_sure => 'Confirmi acțiunea?';
  @override
  String get enable_automatic_flags =>
      'Activează plasarea automată a steagurilor';
  @override
  String get open_areas => 'Zone deschise';
  @override
  String get total_time => 'Timp total';
  @override
  String get average_time => 'Timp mediu';
  @override
  String get shortest_time => 'Cel mai scurt timp';
  @override
  String get performance => 'Performanță';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Folosește semnul de întrebare';
  @override
  String get no_guessing_mode => 'Modul „Fără ghicit”';
  @override
  String get control => 'Comenzi';
  @override
  String get control_types => 'Tipuri de control';
  @override
  String get single_click => 'Apăsare singură';
  @override
  String get double_click => 'Apăsare dublă';
  @override
  String get long_press => 'Apăsare lungă';
  @override
  String get touch_sensibility => 'Sensibilitatea la atingere';
  @override
  String get open_tile => 'Deschide';
  @override
  String get flag_tile => 'Plasare steag';
  @override
  String get retry => 'Reîncearcă';
  @override
  String get continue_game => 'Continuă';
  @override
  String get empty => 'Gol';
  @override
  String get cant_do_it_now => 'Nu se poate face acest lucru acum';
  @override
  String get mine_revealed => 'O mină a fost dezvăluită';
  @override
  String get fail_to_load_ad => 'Reclama nu a putut fi încărcată';
  @override
  String get you_have_received => 'Ai primit: \$param1';
  @override
  String get help_win_a_game =>
      'Trebuie să câștigi un joc pentru a beneficia de mai multe indicii.';
  @override
  String get unknown_error => 'Eroare necunoscută.';
  @override
  String get error => 'Eroare!';
  @override
  String get leaderboards => 'Clasamente';
  @override
  String get cancel => 'Anulează';
  @override
  String get resume => 'Reia';
  @override
  String get yes => 'Da';
  @override
  String get unlock => 'Deblocare';
  @override
  String get unlock_all => 'Deblocare toate';
  @override
  String get achievements => 'Realizări';
  @override
  String get no => 'Nu';
  @override
  String get general => 'General';
  @override
  String get more => 'Mai multe';
  @override
  String get source_code => 'Cod sursă';
  @override
  String get translation => 'Traducere';
  @override
  String get language => 'Limbă';
  @override
  String get licenses => 'Licențe';
  @override
  String get google_play_games => 'Jocuri Google Play';
  @override
  String get loading => 'Se încarcă…';
  @override
  String get creating_valid_game => 'Se creează un joc valid…';
  @override
  String get connect => 'Conectare';
  @override
  String get connecting => 'Se conectează…';
  @override
  String get disconnect => 'Deconectare';
  @override
  String get disconnected => 'Deconectat';
  @override
  String get new_game => 'Joc nou';
  @override
  String get share => 'Distribuie';
  @override
  String get share_menu => 'Distribuie cu…';
  @override
  String get no_network => 'Fără conexiune la internet.';
  @override
  String get delete_all => 'Șterge totul';
  @override
  String get appearance => 'Aspect';
  @override
  String get themes => 'Teme';
  @override
  String get delete_all_message => 'Șterge permanent toate evenimentele.';
  @override
  String get remove_ad => 'Premium';
  @override
  String get help => 'Indiciu';
  @override
  String get back => 'Înapoi';
  @override
  String get donation => 'Donație';
  @override
  String get open_on_game => 'Deschide pe ecranul jocului';
  @override
  String get show_windows => 'Arată ferestrele';
  @override
  String get select_language => 'Selectează limba';
  @override
  String get switch_control => 'Comutare: Plasare steag și Deschide';
  @override
  String get switch_control_desc =>
      'Folosește butonul pentru a comuta între Plasare steag și Deschide';
  @override
  String get app_description =>
      'Trebuie să eliberezi o tablă dreptunghiulară cu mine ascunse fără să detonezi niciuna.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => 'Știi cum se joacă Minesweeper?';
  @override
  String get close => 'Închide';
  @override
  String get open_tutorial => 'Deschide tutorialul';
  @override
  String get click_numbers => 'Permite atingerea numerelor';
  @override
  String get flag_when_tap_numbers => 'Plasare steag la atingerea numerelor';
  @override
  String get tap_to_customize => 'Atinge pentru a particulariza';
  @override
  String get no_guess_fail_warning =>
      'Câmpul minat actual nu poate fi rezolvat fără ghiciri!';
  @override
  String get fixed_size => 'Dimensiune fixă';
  @override
  String get progressive => 'Progresiv';
  @override
  String get value_limit_min => 'Valoarea minimă este %d';
  @override
  String get value_limit_max => 'Valoarea maximă este %d';
  @override
  String get proportion_too_high => 'Proporția este prea mare!';
  @override
  String get highlight_unsolved_numbers => 'Evidențiază numerele nerezolvate';
  @override
  String get show_clock => 'Afișare ceas';
  @override
  String get donate_request =>
      'Dacă îți place acest joc, ia în considerare să faci o donație.';
  @override
  String get donate_help => 'Va ajuta la menținerea activă a acestui proiect!';
  @override
  String get acra_toast_text =>
      'Ne pare rău, a apărut o eroare. Trimite un raport către dezvoltatori.';
  @override
  String get immersive_mode => 'Mod imersiv';
  @override
  String get background_color => 'Culoare de fundal';
  @override
  String get main_color => 'Culoare principală';
  @override
  String get premium_exclusive => 'Exclusiv în varianta premium!';
  @override
  String get preview => 'Previzualizare';
  @override
  String get shared_game => 'Jocul distribuit';
  @override
  String get shared_game_description =>
      'Introdu aici codul unui joc de minesweeper distribuit cu dvs.';
  @override
  String get code => 'Cod';
  @override
  String get image => 'Imagine';
  @override
  String get free => 'Gratuit';
  @override
  String get restore_purchase => 'Reîncarcă achizițiile';
}
