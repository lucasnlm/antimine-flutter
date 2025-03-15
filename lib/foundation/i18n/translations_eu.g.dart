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
class TranslationsEu extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEu({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.eu,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <eu>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsEu _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Tutoriala';
  @override
  String get tutorial_basic =>
      'Jokoaren araua sinplea da: karratuetan dauden zenbakiek inguruko karratuetan zenbat mina dauden adierazten dute, eta mina guztiak markatu behar dituzu.';
  @override
  String get tutorial_text1 =>
      'Zenbaki bat karratu kopuru bera ukitzen ari bada, orduan karratu guztiak minak dira.';
  @override
  String get tutorial_text2 =>
      'Zure lehen mina markatzen duzunean, errepasatu zenbakiak eta analizatu hurrengo karratua.';
  @override
  String get tutorial_text3 =>
      'Karratu batek zenbakiak dioen adina marka baditu inguruan, inguruko beste karratu guztiak ez dira minak (gezi berdea).';
  @override
  String get tutorial_text4 =>
      'Errebisatu zenbakiak eta jarraitu karratuak irekitzen.';
  @override
  String get games => 'Partidak';
  @override
  String get tap_to_begin => 'Ikutu hasteko';
  @override
  String get previous_games => 'Aurreko partidak';
  @override
  String get minefield => 'Zailtasuna';
  @override
  String get standard => 'Estandarra';
  @override
  String get beginner => 'Hasiberria';
  @override
  String get intermediate => 'Erdi-mailakoa';
  @override
  String get expert => 'Aditua';
  @override
  String get master => 'Maisua';
  @override
  String get legend => 'Legenda';
  @override
  String get open => 'Ireki';
  @override
  String get settings => 'Ezarpenak';
  @override
  String get control_settings => 'Kontrolerako hobespenak';
  @override
  String get default_button => 'Botoi lehenetsia';
  @override
  String get shapes => 'Formak';
  @override
  String get animations => 'Animazioak';
  @override
  String get vibration => 'Ukipen-erantzuna';
  @override
  String get about => 'Honi buruz';
  @override
  String get quit => 'Irten';
  @override
  String get events => 'Estatistikak';
  @override
  String get custom => 'Pertsonalizatua';
  @override
  String get start => 'Hasi';
  @override
  String get width => 'Zabalera';
  @override
  String get height => 'Altuera';
  @override
  String get mines => 'Minak';
  @override
  String get seed => 'Hazia';
  @override
  String get retry_sure =>
      'Partida berri bat hasten baduzu, orain artekoa galduko duzu.';
  @override
  String get show_licenses => 'Lizentziak erakutsi';
  @override
  String get new_game_request => 'Partida berria hasi nahi duzu?';
  @override
  String get mines_remaining => '%d mina';
  @override
  String get game_time => 'Partidaren denbora';
  @override
  String get settings_general => 'Orokorra';
  @override
  String get settings_gameplay => 'Jolasteko modua';
  @override
  String get export_settings => 'Esportatu';
  @override
  String get import_settings => 'Inportatu';
  @override
  String get exported_success => 'Ezarpenak esportatuta!';
  @override
  String get imported_success => 'Ezarpenak inportatuta!';
  @override
  String get settings_accessibility => 'Irisgarritasuna';
  @override
  String get system => 'Sistema';
  @override
  String get sign_in_failed =>
      'Ezin izan da saioa hasi. Mesedez, baieztatu zure interneteko konexioa eta saiatu berriro.';
  @override
  String get you_won => 'Irabazi duzu!';
  @override
  String get victories => 'Garaipenak';
  @override
  String get you_lost => 'Galdu egin duzu!';
  @override
  String get you_finished => 'Amaitu duzu!';
  @override
  String get defeats => 'Porrotak';
  @override
  String get generic_game_over => 'Zorte on zure hurrengo partidan.';
  @override
  String get generic_win => '%1\$d mina aurkitu dituzu %2\$d segundotan.';
  @override
  String get fail_to_share => 'Partekatzeak huts egin du';
  @override
  String get version_s => '%1\$s bertsioa';
  @override
  String get sound_effects => 'Soinu efektuak';
  @override
  String get music => 'Musika';
  @override
  String get music_by => '%1\$s(r)en musika';
  @override
  String get check_music => 'Entzun Spotifyn…';
  @override
  String get selected => 'Hautatuta';
  @override
  String get are_you_sure => 'Ziur zaude?';
  @override
  String get enable_automatic_flags => 'Gaitu automatikoki markatzea';
  @override
  String get open_areas => 'Zabaldutako eremuak';
  @override
  String get total_time => 'Denbora guztira';
  @override
  String get average_time => 'Batez besteko denbora';
  @override
  String get shortest_time => 'Denbora laburrena';
  @override
  String get performance => 'Errendimendua';
  @override
  String get ok => 'Ados';
  @override
  String get use_question_mark => 'Galdera ikurra erabili';
  @override
  String get no_guessing_mode => '"Aierurik gabe" modua';
  @override
  String get control => 'Kontrolak';
  @override
  String get control_types => 'Kontrol motak';
  @override
  String get single_click => 'Ukitu bakarra';
  @override
  String get double_click => 'Ukitu bikoitza';
  @override
  String get long_press => 'Luze ukitu';
  @override
  String get touch_sensibility => 'Ukipen-sentikortasuna';
  @override
  String get open_tile => 'Ireki';
  @override
  String get flag_tile => 'Markatu';
  @override
  String get retry => 'Berriro saiatu';
  @override
  String get continue_game => 'Jarraitu';
  @override
  String get empty => 'Hutsik';
  @override
  String get cant_do_it_now => 'Ezinezkoa da hori egitea orain';
  @override
  String get mine_revealed => 'Mina bat agertu da';
  @override
  String get fail_to_load_ad => 'Iragarkia kargatzeak huts egin du';
  @override
  String get you_have_received => 'Jaso duzu: \$param1';
  @override
  String get help_win_a_game =>
      'Aholku gehiagorako, partida bat irabazi beharko duzu.';
  @override
  String get unknown_error => 'Errore ezezaguna.';
  @override
  String get error => 'Errorea!';
  @override
  String get leaderboards => 'Sailkapenak';
  @override
  String get cancel => 'Ezeztatu';
  @override
  String get resume => 'Berrekin';
  @override
  String get yes => 'Bai';
  @override
  String get unlock => 'Desblokeatu';
  @override
  String get unlock_all => 'Desblokeatu guztiak';
  @override
  String get achievements => 'Lorpenak';
  @override
  String get no => 'Ez';
  @override
  String get general => 'Orokorra';
  @override
  String get more => 'Gehiago';
  @override
  String get source_code => 'Iturburu-kodea';
  @override
  String get translation => 'Itzulpena';
  @override
  String get language => 'Hizkuntza';
  @override
  String get licenses => 'Lizentziak';
  @override
  String get google_play_games => 'Google Play Games';
  @override
  String get loading => 'Kargatzen…';
  @override
  String get creating_valid_game => 'Baliozko partida sortzen…';
  @override
  String get connect => 'Konektatu';
  @override
  String get connecting => 'Konektatzen…';
  @override
  String get disconnect => 'Deskonektatu';
  @override
  String get disconnected => 'Deskonektatuta';
  @override
  String get new_game => 'Partida berria';
  @override
  String get share => 'Partekatu';
  @override
  String get share_menu => 'Partekatu…';
  @override
  String get no_network => 'Ez dago internet konexiorik.';
  @override
  String get delete_all => 'Ezabatu guztiak';
  @override
  String get appearance => 'Itxura';
  @override
  String get themes => 'Azalak';
  @override
  String get delete_all_message => 'Gertakari guztiak betiko ezabatu.';
  @override
  String get remove_ad => 'Premium';
  @override
  String get help => 'Aholkua';
  @override
  String get back => 'Atzera';
  @override
  String get donation => 'Donazioa';
  @override
  String get open_on_game => 'Partida-pantailan hasi';
  @override
  String get show_windows => 'Erakutsi leihoak';
  @override
  String get select_language => 'Hizkuntza aukeratu';
  @override
  String get switch_control => 'Trukatu: markatu eta ireki';
  @override
  String get switch_control_desc =>
      'Botoia erabili markatu eta ireki artean trukatzeko';
  @override
  String get app_description =>
      'Ezkutuko minak dituen taula laukizuzen bat garbitu behar duzu, mina bakar bat ere leherrarazi gabe.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => 'Ba al dakizu dragamina jolasten?';
  @override
  String get close => 'Itxi';
  @override
  String get open_tutorial => 'Ireki tutoriala';
  @override
  String get click_numbers => 'Gaitu zenbakiak ikutzea';
  @override
  String get flag_when_tap_numbers => 'Markatu zenbakiak ikutzean';
  @override
  String get tap_to_customize => 'Ikutu pertsonalizatzeko';
  @override
  String get no_guess_fail_warning =>
      'Baliteke uneko mina-eremua "aieru gabe"koa ez izatea!';
  @override
  String get fixed_size => 'Tamaina finkoa';
  @override
  String get progressive => 'Progresiboa';
  @override
  String get value_limit_min => 'Min is %d';
  @override
  String get value_limit_max => 'Max is %d';
  @override
  String get proportion_too_high => 'Proportion is too high!';
  @override
  String get highlight_unsolved_numbers => 'Nabarmendu ebatzi gabeko zenbakiak';
  @override
  String get show_clock => 'Erakutsi erlojua';
  @override
  String get donate_request =>
      'Jokoa gustuko baduzu, dohaitza bat egin zenezake.';
  @override
  String get donate_help => 'Proiektua aktibo mantentzen lagunduko du!';
  @override
  String get acra_toast_text =>
      'Sorry, an error occurred. Please, send the report to the developers.';
  @override
  String get immersive_mode => 'Murgiltze modua';
  @override
  String get background_color => 'Atzeko planoaren kolorea';
  @override
  String get main_color => 'Kolore nagusia';
  @override
  String get premium_exclusive => 'Premium exclusive!';
  @override
  String get preview => 'Aurrebista';
  @override
  String get shared_game => 'Shared game';
  @override
  String get shared_game_description =>
      'Sartu hemen zurekin partekatutako bilatzaile-joko baten kodea.';
  @override
  String get code => 'Kodea';
  @override
  String get image => 'Irudia';
  @override
  String get free => 'Free';
  @override
  String get restore_purchase => 'Berreskuratu erosketa';
}
