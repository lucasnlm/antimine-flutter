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
class TranslationsEs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsEs _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Tutorial';
	@override String get tutorial_basic => 'Las reglas de este juego son sencillas. El número de un cuadrado te muestra la cantidad de minas adyacentes. Deberás colocar una bandera sobre cada mina.';
	@override String get tutorial_text1 => 'Si el número que aparece es el mismo número de cuadrados adyacentes, entonces todos esos cuadrados serán minas.';
	@override String get tutorial_text2 => 'Después de colocar tu primera bandera, revisa los números y analiza el siguiente cuadrado.';
	@override String get tutorial_text3 => 'Si un cuadrado tiene el mismo número de banderas, todos los cuadrados adyacentes restantes no son minas (flecha verde).';
	@override String get tutorial_text4 => 'Revisa los números y sigue abriendo los cuadrados.';
	@override String get games => 'Juegos';
	@override String get tap_to_begin => 'Pulsa para comenzar';
	@override String get previous_games => 'Juegos anteriores';
	@override String get minefield => 'Dificultad';
	@override String get standard => 'Patrón';
	@override String get beginner => 'Novato';
	@override String get intermediate => 'Intermedio';
	@override String get expert => 'Experto';
	@override String get master => 'Maestro';
	@override String get legend => 'Leyenda';
	@override String get open => 'Abrir';
	@override String get settings => 'Configuración';
	@override String get control_settings => 'Ajustes de control';
	@override String get default_button => 'Botón por defecto';
	@override String get shapes => 'Formas';
	@override String get animations => 'Animaciones';
	@override String get vibration => 'Respuesta háptica';
	@override String get about => 'Acerca de';
	@override String get quit => 'Salir';
	@override String get events => 'Estadísticas';
	@override String get custom => 'Personalizado';
	@override String get start => 'Empezar';
	@override String get width => 'Ancho';
	@override String get height => 'Alto';
	@override String get mines => 'Minas';
	@override String get seed => 'Semilla';
	@override String get retry_sure => 'Si comienzas una partida nueva,\ntu progreso actual se perderá.';
	@override String get show_licenses => 'Ver Licencias';
	@override String get new_game_request => '¿Deseas empezar una nueva partida?';
	@override String get mines_remaining => '%d minas';
	@override String get game_time => 'Tiempo de juego';
	@override String get settings_general => 'General';
	@override String get settings_gameplay => 'Jugabilidad';
	@override String get export_settings => 'Exportar';
	@override String get import_settings => 'Importar';
	@override String get exported_success => '¡Ajustes exportados!';
	@override String get imported_success => '¡Ajustes importados!';
	@override String get settings_accessibility => 'Accesibilidad';
	@override String get system => 'Sistema';
	@override String get sign_in_failed => 'Imposible conectar. Por favor, revisa tu conexión de datos e inténtalo nuevamente.';
	@override String get you_won => '¡Ganaste!';
	@override String get victories => 'Victorias';
	@override String get you_lost => '¡Perdiste!';
	@override String get you_finished => '¡Has terminado!';
	@override String get defeats => 'Derrotas';
	@override String get generic_game_over => 'Buena suerte en tu próxima partida.';
	@override String get generic_win => 'Encontraste %1\$d minas en %2\$d segundos.';
	@override String get fail_to_share => 'Error al compartir';
	@override String get version_s => 'Versión %1\$s';
	@override String get sound_effects => 'Efectos Sonoros';
	@override String get music => 'Música';
	@override String get music_by => 'Música: %1\$s';
	@override String get check_music => 'Escuchar en Spotify…';
	@override String get selected => 'Seleccionados';
	@override String get are_you_sure => '¿Estás seguro?';
	@override String get enable_automatic_flags => 'Activar situación automática de banderas';
	@override String get open_areas => 'Abrir Áreas';
	@override String get total_time => 'Tiempo total';
	@override String get average_time => 'Tiempo promedio';
	@override String get shortest_time => 'Tiempo Más Corto';
	@override String get performance => 'Desempeño';
	@override String get ok => 'OK';
	@override String get use_question_mark => 'Usar signo de interrogación';
	@override String get no_guessing_mode => 'Modo "Sin adivinación"';
	@override String get control => 'Controles';
	@override String get control_types => 'Tipos de control';
	@override String get single_click => 'Un toque';
	@override String get double_click => 'Dos toques';
	@override String get long_press => 'Toque largo';
	@override String get touch_sensibility => 'Sensibilidad táctil';
	@override String get open_tile => 'Abrir';
	@override String get flag_tile => 'Bandera';
	@override String get retry => 'Reintentar';
	@override String get continue_game => 'Continuar';
	@override String get empty => 'Vacío';
	@override String get cant_do_it_now => 'Imposible hacer eso ahora';
	@override String get mine_revealed => 'Se ha encontrado una mina';
	@override String get fail_to_load_ad => 'Fallo al cargar anuncio';
	@override String get you_have_received => 'Has recibido: \$param1';
	@override String get help_win_a_game => 'Para conseguir más pistas, debes ganar una partida.';
	@override String get unknown_error => 'Error desconocido.';
	@override String get error => '¡Error!';
	@override String get leaderboards => 'Ránking';
	@override String get cancel => 'Cancelar';
	@override String get resume => 'Continuar';
	@override String get yes => 'Sí';
	@override String get unlock => 'Desbloquear';
	@override String get unlock_all => 'Desbloquear todo';
	@override String get achievements => 'Logros';
	@override String get no => 'No';
	@override String get general => 'General';
	@override String get more => 'Más';
	@override String get source_code => 'Código Fuente';
	@override String get translation => 'Traducción';
	@override String get language => 'Idioma';
	@override String get licenses => 'Licencias';
	@override String get google_play_games => 'Google Play Games';
	@override String get loading => 'Cargando…';
	@override String get creating_valid_game => 'Creando partida válida…';
	@override String get connect => 'Conectar';
	@override String get connecting => 'Conectando…';
	@override String get disconnect => 'Desconectar';
	@override String get disconnected => 'Desconectado';
	@override String get new_game => 'Nuevo Juego';
	@override String get share => 'Compartir';
	@override String get share_menu => 'Compartir…';
	@override String get no_network => 'No hay conexión a Internet.';
	@override String get delete_all => 'Borrar todo';
	@override String get appearance => 'Aspecto';
	@override String get themes => 'Temas';
	@override String get delete_all_message => 'Borrar todos los eventos permanentemente.';
	@override String get remove_ad => 'Eliminar anuncios';
	@override String get help => 'Pista';
	@override String get back => 'Volver';
	@override String get donation => 'Donación';
	@override String get open_on_game => 'Abrir en la pantalla del juego';
	@override String get show_windows => 'Mostrar ventanas';
	@override String get select_language => 'Seleccionar Idioma';
	@override String get switch_control => 'Cambiar: Bandera y Abrir';
	@override String get switch_control_desc => 'Usa el boton para cambiar entre Bandera y Abrir';
	@override String get app_description => 'Usted tiene que limpiar un tablero cuadrado que contiene minas escondidas sin detonarlas.';
	@override String get app_name => 'Anti-Mina';
	@override String get do_you_know_how_to_play => '¿Sabes cómo se juega al buscaminas?';
	@override String get close => 'Cerrar';
	@override String get open_tutorial => 'Abrir Tutorial';
	@override String get click_numbers => 'Permitir tocar números';
	@override String get flag_when_tap_numbers => 'Marcar al pulsar números';
	@override String get tap_to_customize => 'Toca para personalizar';
	@override String get no_guess_fail_warning => '¡Es posible que necesites una pista para solucionar este nivel!';
	@override String get fixed_size => 'Tamaño fijo';
	@override String get progressive => 'Progresivo';
	@override String get value_limit_min => 'El mínimo es %d';
	@override String get value_limit_max => 'El máximo es %d';
	@override String get proportion_too_high => '¡La proporción es demasiado alta!';
	@override String get highlight_unsolved_numbers => 'Resaltar números sin completar';
	@override String get show_clock => 'Mostrar reloj';
	@override String get donate_request => 'Si te gusta el juego, aceptamos cualquier tipo de donación.';
	@override String get donate_help => '¡Eso nos ayudará a mantener este proyecto activo!';
	@override String get acra_toast_text => 'Lo sentimos, ha ocurrido un error. Envía el informe a los desarrolladores.';
	@override String get immersive_mode => 'Modo Immersivo';
	@override String get background_color => 'Color de fondo';
	@override String get main_color => 'Color principal';
	@override String get premium_exclusive => '¡Exclusivo para prémium!';
	@override String get preview => 'Vista previa';
	@override String get shared_game => 'Partida compartida';
	@override String get shared_game_description => 'Escribe aquí el código de una partida de Buscaminas compartida contigo.';
	@override String get code => 'Código';
	@override String get image => 'Imagen';
	@override String get free => 'Gratis';
	@override String get restore_purchase => 'Restablecer compras';
}
