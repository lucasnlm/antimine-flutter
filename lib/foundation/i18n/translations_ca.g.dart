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
class TranslationsCa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ca,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <ca>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsCa _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Tutorial';
	@override String get tutorial_basic => 'Les regles del joc són simples, el número en un quadrat indica el número de mines que té adjacents, i heu de marcar totes les mines.';
	@override String get tutorial_text1 => 'Si un número està tocant el mateix nombre de quadrats, llavors tots els quadrats són mines.';
	@override String get tutorial_text2 => 'Després de posar la primera bandera, examineu els números i analitzeu el següent quadrat.';
	@override String get tutorial_text3 => 'Si un quadrat té el mateix número de banderes, cap els altres quadrats romanents adjacents a ella són mines (la fletxa verda).';
	@override String get tutorial_text4 => 'Observeu els números i continueu destapant quadrats.';
	@override String get games => 'Jocs';
	@override String get tap_to_begin => 'Toqueu per començar';
	@override String get previous_games => 'Partides prèvies';
	@override String get minefield => 'Camp de mines';
	@override String get standard => 'Estàndard';
	@override String get beginner => 'Principiant';
	@override String get intermediate => 'Intermedi';
	@override String get expert => 'Expert';
	@override String get master => 'Mestre';
	@override String get legend => 'Legend';
	@override String get open => 'Obert';
	@override String get settings => 'Configuració';
	@override String get control_settings => 'Paràmetres de control';
	@override String get default_button => 'Botó predeterminat';
	@override String get shapes => 'Formes';
	@override String get animations => 'Animacions';
	@override String get vibration => 'Resposta hàptica';
	@override String get about => 'Quant a';
	@override String get quit => 'Surt';
	@override String get events => 'Estadístiques';
	@override String get custom => 'Personalitzat';
	@override String get start => 'Inicia';
	@override String get width => 'Amplada';
	@override String get height => 'Alçada';
	@override String get mines => 'Mines';
	@override String get seed => 'Llavor';
	@override String get retry_sure => 'Si comences un altre joc, el teu progrés actual es perdrà.';
	@override String get show_licenses => 'Mostra les llicències';
	@override String get new_game_request => 'Vols començar un joc nou?';
	@override String get mines_remaining => '%d mines';
	@override String get game_time => 'Temps de joc';
	@override String get settings_general => 'General';
	@override String get settings_gameplay => 'Joc';
	@override String get export_settings => 'Exporta';
	@override String get import_settings => 'Importa';
	@override String get exported_success => 'S\'ha exportat la configuració!';
	@override String get imported_success => 'S\'ha importat la configuració!';
	@override String get settings_accessibility => 'Accessibilitat';
	@override String get system => 'Sistema';
	@override String get sign_in_failed => 'No s\'ha pogut connectar. Si us plau verifica la teva connexió de xarxa i intenta-ho de nou.';
	@override String get you_won => 'Has guanyat!';
	@override String get victories => 'Victòries';
	@override String get you_lost => 'Has perdut!';
	@override String get you_finished => 'Has acabat!';
	@override String get defeats => 'Derrotes';
	@override String get generic_game_over => 'Que tinguis sort en el proper joc.';
	@override String get generic_win => 'Heu trobat %1\$d mines en %2\$d segons.';
	@override String get fail_to_share => 'No s\'ha pogut compartir';
	@override String get version_s => 'Versió %1\$s';
	@override String get sound_effects => 'Efecte de so';
	@override String get music => 'Música';
	@override String get music_by => 'Música de %1\$s';
	@override String get check_music => 'Escolta-ho a Spotify…';
	@override String get selected => 'Seleccionat';
	@override String get are_you_sure => 'Esteu segurs?';
	@override String get enable_automatic_flags => 'Activa la col·locació automàtica de banderes';
	@override String get open_areas => 'Zones obertes';
	@override String get total_time => 'Temps total';
	@override String get average_time => 'Temps mitjà';
	@override String get shortest_time => 'Temps més curt';
	@override String get performance => 'Rendiment';
	@override String get ok => 'OK';
	@override String get use_question_mark => 'Utilitza l\'interrogant';
	@override String get no_guessing_mode => 'mode \'sense endevinar\'';
	@override String get control => 'Controls';
	@override String get control_types => 'Tipus de control';
	@override String get single_click => 'Un toc';
	@override String get double_click => 'Doble toc';
	@override String get long_press => 'Toc llarg';
	@override String get touch_sensibility => 'Sensibilitat al tacte';
	@override String get open_tile => 'Obert';
	@override String get flag_tile => 'Bandera';
	@override String get retry => 'Reintenta';
	@override String get continue_game => 'Continua';
	@override String get empty => 'Buida';
	@override String get cant_do_it_now => 'És impossible fer-ho ara';
	@override String get mine_revealed => 'Una mina ha estat descoberta';
	@override String get fail_to_load_ad => 'No s\'ha pogut carregar l\'anunci';
	@override String get you_have_received => 'Heu rebut: \$param1';
	@override String get help_win_a_game => 'Per a més pistes, heu de guanyar una partida.';
	@override String get unknown_error => 'Error desconegut.';
	@override String get error => 'Error!';
	@override String get leaderboards => 'Llista de líders';
	@override String get cancel => 'Cancel•lar';
	@override String get resume => 'Continuar';
	@override String get yes => 'Sí';
	@override String get unlock => 'Desbloqueja';
	@override String get unlock_all => 'Desbloqueja-ho tot';
	@override String get achievements => 'Assoliments';
	@override String get no => 'No';
	@override String get general => 'General';
	@override String get more => 'Més';
	@override String get source_code => 'Codi font';
	@override String get translation => 'Traduccions';
	@override String get language => 'Idioma';
	@override String get licenses => 'Llicències';
	@override String get google_play_games => 'Google Play Jocs';
	@override String get loading => 'Carregant…';
	@override String get creating_valid_game => 'Creant un joc vàlid…';
	@override String get connect => 'Connectar';
	@override String get connecting => 'Connectant…';
	@override String get disconnect => 'Desconnectar';
	@override String get disconnected => 'Desconnectat';
	@override String get new_game => 'Nou joc';
	@override String get share => 'Compartir';
	@override String get share_menu => 'Compartir…';
	@override String get no_network => 'No hi ha connexió a Internet.';
	@override String get delete_all => 'Esborra-ho tot';
	@override String get appearance => 'Aparença';
	@override String get themes => 'Temes';
	@override String get delete_all_message => 'Esborra tots els esdeveniments permanentment.';
	@override String get remove_ad => 'Elimina els anuncis';
	@override String get help => 'Pista';
	@override String get back => 'Tornar';
	@override String get donation => 'Donacions';
	@override String get open_on_game => 'Obre a la pantalla del joc';
	@override String get show_windows => 'Mostrar finestres';
	@override String get select_language => 'Selecciona un Idioma';
	@override String get switch_control => 'Alternativa: Marca i Destapa';
	@override String get switch_control_desc => 'Useu el botó per canviar entre \'Marcar\' i \'Destapar\'';
	@override String get app_description => 'Has de netejar un tauler rectangular amb mines amagades sense detonar-ne cap.';
	@override String get app_name => 'Antimines';
	@override String get do_you_know_how_to_play => 'Sabeu com es juga al buscamines?';
	@override String get close => 'Tancar';
	@override String get open_tutorial => 'Obriu el tutorial';
	@override String get click_numbers => 'Permet pressionar els números';
	@override String get flag_when_tap_numbers => 'Permet pressionar els números';
	@override String get tap_to_customize => 'Pressiona per a customitzar';
	@override String get no_guess_fail_warning => 'Aquest camp de mines pot no ser deduïble: hareu d\'arriscar!';
	@override String get fixed_size => 'Mida Fixa';
	@override String get progressive => 'Progressiu';
	@override String get value_limit_min => 'El mínim és %d';
	@override String get value_limit_max => 'El màxim és %d';
	@override String get proportion_too_high => 'La proporció és massa gran!';
	@override String get highlight_unsolved_numbers => 'Remarcar els números no resolts';
	@override String get show_clock => 'Mostra el rellotge';
	@override String get donate_request => 'Si t\'agrada aquest joc, considera fer una donació.';
	@override String get donate_help => 'Ajudarà a mantenir actiu aquest projecte!';
	@override String get acra_toast_text => 'Disculpes, hi ha hagut un error. Si us plau, envieu l\'informe als programadors.';
	@override String get immersive_mode => 'Mode immersiu';
	@override String get background_color => 'Color de fons';
	@override String get main_color => 'Color principal';
	@override String get premium_exclusive => 'Exclusiu per a Prémium!';
	@override String get preview => 'Previsualització';
	@override String get shared_game => 'Comparteix partida';
	@override String get shared_game_description => 'Insereix aquí el codi d\'un joc de dragamines compartit amb tu.';
	@override String get code => 'Codi';
	@override String get image => 'Imatge';
	@override String get free => 'Gratuït';
	@override String get restore_purchase => 'Restaurar compres';
}
