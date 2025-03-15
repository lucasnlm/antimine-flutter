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
class TranslationsDe extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsDe _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Anleitung';
	@override String get tutorial_basic => 'Die Regeln des Spiels sind einfach. Die Zahl auf einem Quadrat zeigt die Anzahl an benachbarten Minen an, und deine Aufgabe ist es, alle Minen zu markieren.';
	@override String get tutorial_text1 => 'Falls eine Zahl gleich der Anzahl an berührenden Quadraten ist, dann sind diese Quadrate alle vermint.';
	@override String get tutorial_text2 => 'Nachdem Sie Ihre erste Markierung markiert haben, überprüfen Sie die Zahlen und analysieren Sie das nächste Quadrat.';
	@override String get tutorial_text3 => 'Falls ein Quadrat die gleiche Zahl an Markierungen hat wie ein benachbartes Quadrat, dann sind alle anderen verbleibenden, angrenzenden Quadrate minenfrei (grüner Pfeil).';
	@override String get tutorial_text4 => 'Überprüfe die Zahlen, und mache weiter mit dem Öffnen von Quadraten.';
	@override String get games => 'Spiele';
	@override String get tap_to_begin => 'Tippen um anzufangen';
	@override String get previous_games => 'Vorherige Spiele';
	@override String get minefield => 'Schwierigkeitsgrad';
	@override String get standard => 'Voreinstellung';
	@override String get beginner => 'Anfänger';
	@override String get intermediate => 'Fortgeschritten';
	@override String get expert => 'Experte';
	@override String get master => 'Meister';
	@override String get legend => 'Ikone';
	@override String get open => 'Öffnen';
	@override String get settings => 'Einstellungen';
	@override String get control_settings => 'Steuerungseinstellungen';
	@override String get default_button => 'Standard-Taste';
	@override String get shapes => 'Formen';
	@override String get animations => 'Animationen';
	@override String get vibration => 'Haptische Rückmeldung';
	@override String get about => 'Über';
	@override String get quit => 'Beenden';
	@override String get events => 'Statistiken';
	@override String get custom => 'Benutzerdefiniert';
	@override String get start => 'Start';
	@override String get width => 'Breite';
	@override String get height => 'Höhe';
	@override String get mines => 'Minen';
	@override String get seed => 'Startwert / Seed';
	@override String get retry_sure => 'Wenn du ein neues Spiel startest,\nwird dein aktueller Verlauf verloren gehen.';
	@override String get show_licenses => 'Lizenzen anzeigen';
	@override String get new_game_request => 'Möchtest du ein neues Spiel beginnen?';
	@override String get mines_remaining => '%d Minen';
	@override String get game_time => 'Spielzeit';
	@override String get settings_general => 'Allgemein';
	@override String get settings_gameplay => 'Spielablauf';
	@override String get export_settings => 'Einstellungen exportieren';
	@override String get import_settings => 'Einstellungen importieren';
	@override String get exported_success => 'Einstellungen exportiert!';
	@override String get imported_success => 'Einstellungen importiert!';
	@override String get settings_accessibility => 'Barrierefreiheit';
	@override String get system => 'System';
	@override String get sign_in_failed => 'Login fehlgeschlagen. Überprüfe Deine Netzwerkverbindung und versuche es erneut.';
	@override String get you_won => 'Du hast gewonnen!';
	@override String get victories => 'Siege';
	@override String get you_lost => 'Du hast verloren!';
	@override String get you_finished => 'Du bist fertig!';
	@override String get defeats => 'Niederlagen';
	@override String get generic_game_over => 'Viel Glück bei deinem nächsten Spiel.';
	@override String get generic_win => 'Du hast %1\$d Minen in %2\$d Sekunden gefunden.';
	@override String get fail_to_share => 'Fehler beim Teilen';
	@override String get version_s => 'Version %1\$s';
	@override String get sound_effects => 'Toneffekte';
	@override String get music => 'Musik';
	@override String get music_by => 'Musik von %1\$s';
	@override String get check_music => 'Auf Spotify anhören...';
	@override String get selected => 'Ausgewählt';
	@override String get are_you_sure => 'Bist du sicher?';
	@override String get enable_automatic_flags => 'Automatische Markierungen aktivieren';
	@override String get open_areas => 'Offene Flächen';
	@override String get total_time => 'Gesamtzeit';
	@override String get average_time => 'Durchschnittliche Zeit';
	@override String get shortest_time => 'Kürzeste Zeit';
	@override String get performance => 'Erfolgsergebnis';
	@override String get ok => 'Ok';
	@override String get use_question_mark => 'Fragezeichen benutzen';
	@override String get no_guessing_mode => '"Kein Erraten"-Modus';
	@override String get control => 'Steuerung';
	@override String get control_types => 'Steuerungstypen';
	@override String get single_click => 'Einfaches Tippen';
	@override String get double_click => 'Doppeltes Tippen';
	@override String get long_press => 'Langes Tippen';
	@override String get touch_sensibility => 'Berührungsempfindlichkeit';
	@override String get open_tile => 'Öffnen';
	@override String get flag_tile => 'Flagge';
	@override String get retry => 'Erneut versuchen';
	@override String get continue_game => 'Fortsetzen';
	@override String get empty => 'Leer';
	@override String get cant_do_it_now => 'Dies jetzt nicht möglich';
	@override String get mine_revealed => 'Eine Mine wurde aufgedeckt';
	@override String get fail_to_load_ad => 'Fehler beim Laden der Werbung';
	@override String get you_have_received => 'Du hast \$param1 erhalten';
	@override String get help_win_a_game => 'Gewinne ein weiteres Spiel für mehr Tipps.';
	@override String get unknown_error => 'Unbekannter Fehler.';
	@override String get error => 'Fehler!';
	@override String get leaderboards => 'Ranglisten';
	@override String get cancel => 'Abbrechen';
	@override String get resume => 'Fortfahren';
	@override String get yes => 'Ja';
	@override String get unlock => 'Entsperren';
	@override String get unlock_all => 'Alles entsperren';
	@override String get achievements => 'Erfolge';
	@override String get no => 'Nein';
	@override String get general => 'Allgemein';
	@override String get more => 'Mehr';
	@override String get source_code => 'Quellcode';
	@override String get translation => 'Übersetzung';
	@override String get language => 'Sprache';
	@override String get licenses => 'Lizenzen';
	@override String get google_play_games => 'Google Play Games';
	@override String get loading => 'Wird geladen...';
	@override String get creating_valid_game => 'Gültiges Spiel wird erstellt…';
	@override String get connect => 'Verbinden';
	@override String get connecting => 'Verbindung wird hergestellt…';
	@override String get disconnect => 'Trennen';
	@override String get disconnected => 'Getrennt';
	@override String get new_game => 'Neues Spiel';
	@override String get share => 'Teilen';
	@override String get share_menu => 'Teilen…';
	@override String get no_network => 'Keine Internetverbindung.';
	@override String get delete_all => 'Alles löschen';
	@override String get appearance => 'Erscheinungsbild';
	@override String get themes => 'Themen';
	@override String get delete_all_message => 'Alle Ereignisse dauerhaft löschen.';
	@override String get remove_ad => 'Werbung entfernen';
	@override String get help => 'Tipp';
	@override String get back => 'Zurück';
	@override String get donation => 'Spende';
	@override String get open_on_game => 'Im Spiel-Bildschirm öffnen';
	@override String get show_windows => 'Fenster anzeigen';
	@override String get select_language => 'Sprache auswählen';
	@override String get switch_control => 'Umschalter: Markieren und Öffnen';
	@override String get switch_control_desc => 'Benutze den Knopf, um zwischen Markierung und Öffnen zu wechseln';
	@override String get app_description => 'Du musst ein rechteckiges Spielfeld, das versteckte Minen enthält, räumen, ohne irgendeine davon zur Explosion zu bringen.';
	@override String get app_name => 'Antimine';
	@override String get do_you_know_how_to_play => 'Weißt du, wie man Minesweeper spielt?';
	@override String get close => 'Schließen';
	@override String get open_tutorial => 'Anleitung öffnen';
	@override String get click_numbers => 'Antippen von Zahlenquadraten erlauben';
	@override String get flag_when_tap_numbers => 'Beim Tippen auf Zahlen markieren';
	@override String get tap_to_customize => 'Zum Anpassen tippen';
	@override String get no_guess_fail_warning => 'Das aktuelle Minenfeld ist möglicherweise nicht ratenfrei!';
	@override String get fixed_size => 'Feste Größe';
	@override String get progressive => 'Fortschrittlich';
	@override String get value_limit_min => 'Minimum ist %d';
	@override String get value_limit_max => 'Maximum ist %d';
	@override String get proportion_too_high => 'Die Proportion ist zu hoch!';
	@override String get highlight_unsolved_numbers => 'Ungelöste Zahlen hervorheben';
	@override String get show_clock => 'Uhr anzeigen';
	@override String get donate_request => 'Wenn dir dieses Spiel gefällt, erwäge eine Spende zu tätigen.';
	@override String get donate_help => 'Es wird helfen, dieses Projekt aktiv zu halten!';
	@override String get acra_toast_text => 'Entschuldigung, aber leider ist ein Fehler aufgetreten. Bitte senden Sie den Bericht an die Entwickler.';
	@override String get immersive_mode => 'Vollbild-Modus';
	@override String get background_color => 'Hintergrundfarbe';
	@override String get main_color => 'Hauptfarbe';
	@override String get premium_exclusive => 'Premium exklusiv!';
	@override String get preview => 'Vorschau';
	@override String get shared_game => 'Geteiltes Spiel';
	@override String get shared_game_description => 'Füge hier den Code eines Minesweeper Spiels ein, das mit dir geteilt wird.';
	@override String get code => 'Code';
	@override String get image => 'Bild';
	@override String get free => 'Free';
	@override String get restore_purchase => 'Käufe wiederherstellen';
}
