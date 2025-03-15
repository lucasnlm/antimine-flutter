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
class TranslationsLt extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsLt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.lt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <lt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsLt _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Apmokymas';
	@override String get tutorial_basic => 'Žaidimo taisyklės yra paprastos - skaičius kvadrate rodo minų skaičių aplink jį. Jūsų tikslas yra pažymėti visas minas.';
	@override String get tutorial_text1 => 'Jei skaičius liečia vienodą skaičių kvadratų, tai visi kvadratai turi minų.';
	@override String get tutorial_text2 => 'Pažymėję kvadratą vėliavėle, peržiūrėkite skaičius ir išanalizuokite kitą kvadratą.';
	@override String get tutorial_text3 => 'Jei kvadratas turi vienodą vėliavėlių skaičių, likę gretimi kvadratai neturi minų (žalia rodyklė).';
	@override String get tutorial_text4 => 'Peržiūrėkite skaičius ir toliau atidarinėkite kvadratus.';
	@override String get games => 'Žaidimai';
	@override String get tap_to_begin => 'Bakstelėkite, kad pradėtumėte';
	@override String get previous_games => 'Ankstesni žaidimai';
	@override String get minefield => 'Sunkumas';
	@override String get standard => 'Standartas';
	@override String get beginner => 'Naujokas';
	@override String get intermediate => 'Vidutinis';
	@override String get expert => 'Ekspertas';
	@override String get master => 'Meistras';
	@override String get legend => 'Legenda';
	@override String get open => 'Atidaryti';
	@override String get settings => 'Nustatymai';
	@override String get control_settings => 'Valdymo nustatymai';
	@override String get default_button => 'Numatytasis mygtukas';
	@override String get shapes => 'Figūros';
	@override String get animations => 'Animacijos';
	@override String get vibration => 'Vibracija';
	@override String get about => 'Apie';
	@override String get quit => 'Išeiti';
	@override String get events => 'Statistika';
	@override String get custom => 'Tinkintas';
	@override String get start => 'Pradėti';
	@override String get width => 'Plotis';
	@override String get height => 'Aukštis';
	@override String get mines => 'Minos';
	@override String get seed => 'Raktas';
	@override String get retry_sure => 'Jei pradėsite naują žaidimą, jūsų dabartinis progresas bus prarastas.';
	@override String get show_licenses => 'Rodyti licencijas';
	@override String get new_game_request => 'Tikrai norite pradėti naują žaidimą?';
	@override String get mines_remaining => 'Liko minų: %d';
	@override String get game_time => 'Žaidimo laikas';
	@override String get settings_general => 'Bendrieji';
	@override String get settings_gameplay => 'Žaidimo procesas';
	@override String get export_settings => 'Eksportuoti';
	@override String get import_settings => 'Importuoti';
	@override String get exported_success => 'Nustatymai eksportuoti!';
	@override String get imported_success => 'Nustatymai importuoti!';
	@override String get settings_accessibility => 'Prieinamumas';
	@override String get system => 'Sistema';
	@override String get sign_in_failed => 'Nepavyko prisijungti. Patikrinkite interneto ryšį ir bandykite dar kartą.';
	@override String get you_won => 'Laimėjote!';
	@override String get victories => 'Pergalės';
	@override String get you_lost => 'Pralaimėjote!';
	@override String get you_finished => 'Baigėte!';
	@override String get defeats => 'Pralaimėjimai';
	@override String get generic_game_over => 'Sėkmės sekančiame žaidime.';
	@override String get generic_win => 'Per %2\$d sek. radote minų: %1\$d.';
	@override String get fail_to_share => 'Nepavyko pasidalinti';
	@override String get version_s => 'Versija: %1\$s';
	@override String get sound_effects => 'Garso efektai';
	@override String get music => 'Muzika';
	@override String get music_by => 'Muzika: %1\$s';
	@override String get check_music => 'Klausytis Spotify…';
	@override String get selected => 'Pasirinkta';
	@override String get are_you_sure => 'Esate tikri?';
	@override String get enable_automatic_flags => 'Įjungti automatinį vėliavėlių dėjimą';
	@override String get open_areas => 'Susprogdintos minos';
	@override String get total_time => 'Bendras laikas';
	@override String get average_time => 'Vidutinis laikas';
	@override String get shortest_time => 'Trumpiausias laikas';
	@override String get performance => 'Našumas';
	@override String get ok => 'Gerai';
	@override String get use_question_mark => 'Naudoti klaustuką';
	@override String get no_guessing_mode => 'Režimas „Be spėliojimų“';
	@override String get control => 'Valdymas';
	@override String get control_types => 'Valdymo rūšys';
	@override String get single_click => 'Vienkartis bakstelėjimas';
	@override String get double_click => 'Dvikartis bakstelėjimas';
	@override String get long_press => 'Ilgas bakstelėjimas';
	@override String get touch_sensibility => 'Prisilietimo jautrumas';
	@override String get open_tile => 'Atidaryti';
	@override String get flag_tile => 'Vėliavėlė';
	@override String get retry => 'Bandyti dar kartą';
	@override String get continue_game => 'Tęsti';
	@override String get empty => 'Tuščia';
	@override String get cant_do_it_now => 'Šiuo metu neįmanoma';
	@override String get mine_revealed => 'Atrasta mina';
	@override String get fail_to_load_ad => 'Nepavyko įkelti reklamos';
	@override String get you_have_received => 'Gavote: \$param1';
	@override String get help_win_a_game => 'Kad gautumėte daugiau užuominų, turite laimėti žaidimą.';
	@override String get unknown_error => 'Nežinoma klaida.';
	@override String get error => 'Klaida!';
	@override String get leaderboards => 'Lyderių lentelės';
	@override String get cancel => 'Atšaukti';
	@override String get resume => 'Tęsti';
	@override String get yes => 'Taip';
	@override String get unlock => 'Atrakinti';
	@override String get unlock_all => 'Atrakinti viską';
	@override String get achievements => 'Pasiekimai';
	@override String get no => 'Ne';
	@override String get general => 'Bendroji';
	@override String get more => 'Daugiau';
	@override String get source_code => 'Pirminis kodas';
	@override String get translation => 'Vertimas';
	@override String get language => 'Kalba';
	@override String get licenses => 'Licencijos';
	@override String get google_play_games => 'Play žaidimai';
	@override String get loading => 'Įkeliama…';
	@override String get creating_valid_game => 'Kuriamas žaidimas…';
	@override String get connect => 'Prisijungti';
	@override String get connecting => 'Prisijungiama…';
	@override String get disconnect => 'Atsijungti';
	@override String get disconnected => 'Atsijungta';
	@override String get new_game => 'Naujas žaidimas';
	@override String get share => 'Dalintis';
	@override String get share_menu => 'Dalintis…';
	@override String get no_network => 'Nėra interneto ryšio.';
	@override String get delete_all => 'Naikinti viską';
	@override String get appearance => 'Išvaizda';
	@override String get themes => 'Temos';
	@override String get delete_all_message => 'Naikinti įvykius visam laikui.';
	@override String get remove_ad => 'Atsikratyti reklamų';
	@override String get help => 'Užuomina';
	@override String get back => 'Atgal';
	@override String get donation => 'Parama';
	@override String get open_on_game => 'Atidaryti žaidimo ekrane';
	@override String get show_windows => 'Rodyti langus';
	@override String get select_language => 'Pasirinkite kalbą';
	@override String get switch_control => 'Perjungimas: vėliavėlė arba atidaryti';
	@override String get switch_control_desc => 'Naudoti mygtuką perjungimui tarp vėliavėlės ir atidarymo';
	@override String get app_description => 'Turite išvalyti stačiakampę lentą su paslėptomis minomis, nesusprogdinę nė vienos iš jų.';
	@override String get app_name => 'Antimine';
	@override String get do_you_know_how_to_play => 'Mokate žaisti išminuotoją?';
	@override String get close => 'Uždaryti';
	@override String get open_tutorial => 'Atidaryti apmokymą';
	@override String get click_numbers => 'Leisti skaičių bakstelėjimą';
	@override String get flag_when_tap_numbers => 'Pažymėti vėliavėle bakstelėjus ant skaičiaus';
	@override String get tap_to_customize => 'Bakstelėkite, kad tinkintumėte';
	@override String get no_guess_fail_warning => 'Dabartinis minų laukas gali būti neatspėjamas!';
	@override String get fixed_size => 'Fiksuotas dydis';
	@override String get progressive => 'Progresyvus';
	@override String get value_limit_min => 'Min is %d';
	@override String get value_limit_max => 'Max is %d';
	@override String get proportion_too_high => 'Proportion is too high!';
	@override String get highlight_unsolved_numbers => 'Paryškinti neišspręstus skaičius';
	@override String get show_clock => 'Rodyti laikrodį';
	@override String get donate_request => 'Jei jums patinka šis žaidimas, apsvarstykite galimybę paremti kūrėją.';
	@override String get donate_help => 'Tai padės šiam projektui išlikti aktyviam!';
	@override String get acra_toast_text => 'Sorry, an error occurred. Please, send the report to the developers.';
	@override String get immersive_mode => 'Įtraukiantis režimas';
	@override String get background_color => 'Fono spalva';
	@override String get main_color => 'Pagrindinė spalva';
	@override String get premium_exclusive => 'Premium išskirtinis!';
	@override String get preview => 'Peržiūra';
	@override String get shared_game => 'Pasidalinti Partija';
	@override String get shared_game_description => 'Įveskite čia su jumis bendrinamo minosvaidžio žaidimo kodą.';
	@override String get code => 'Kodas';
	@override String get image => 'Paveikslėlis';
	@override String get free => 'Free';
	@override String get restore_purchase => 'Atkurti Pirkimus';
}
