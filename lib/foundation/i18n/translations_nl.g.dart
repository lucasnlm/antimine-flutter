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
class TranslationsNl extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsNl _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Tutorial';
	@override String get tutorial_basic => 'De regels van het spel zijn eenvoudig: het getal op een vierkant toont het aantal mijnen dat ernaast ligt, en je moet alle mijnen markeren met een vlag.';
	@override String get tutorial_text1 => 'Als een nummer hetzelfde aantal vierkanten raakt, zijn de vierkanten allemaal mijnen.';
	@override String get tutorial_text2 => 'Bekijk nadat je je eerste vlag hebt neergezet, de nummers en analyseer het volgende vierkant.';
	@override String get tutorial_text3 => 'Als een getal precies dat aantal mijnen raakt, dan is er geen mijn onder de overgebleven aangrenzende vierkanten (de groene pijl).';
	@override String get tutorial_text4 => 'Bekijk de getallen en blijf vierkanten openen.';
	@override String get games => 'Games';
	@override String get tap_to_begin => 'Tik om te beginnen';
	@override String get previous_games => 'Vorige games';
	@override String get minefield => 'Moeilijkheidsgraad';
	@override String get standard => 'Standaard';
	@override String get beginner => 'Beginner';
	@override String get intermediate => 'Gemiddeld';
	@override String get expert => 'Expert';
	@override String get master => 'Meester';
	@override String get legend => 'Legende';
	@override String get open => 'Open';
	@override String get settings => 'Instellingen';
	@override String get control_settings => 'Besturingsinstellingen';
	@override String get default_button => 'Standaard knop';
	@override String get shapes => 'Vormen';
	@override String get animations => 'Animaties';
	@override String get vibration => 'Haptische feedback';
	@override String get about => 'Over';
	@override String get quit => 'Stoppen';
	@override String get events => 'Statistieken';
	@override String get custom => 'Aangepast';
	@override String get start => 'Start';
	@override String get width => 'Breedte';
	@override String get height => 'Hoogte';
	@override String get mines => 'Mijnen';
	@override String get seed => 'Seed';
	@override String get retry_sure => 'Als je een nieuw spel start,\nzal je huidige voortgang verloren gaan.';
	@override String get show_licenses => 'Licenties tonen';
	@override String get new_game_request => 'Wil je een nieuw spel beginnen?';
	@override String get mines_remaining => '%d mijnen';
	@override String get game_time => 'Game Tijd';
	@override String get settings_general => 'Algemeen';
	@override String get settings_gameplay => 'Gameplay';
	@override String get export_settings => 'Exporteer';
	@override String get import_settings => 'Importeer';
	@override String get exported_success => 'Instellingen zijn geëxporteerd!';
	@override String get imported_success => 'Instellingen geïmporteerd!';
	@override String get settings_accessibility => 'Toegankelijkheid';
	@override String get system => 'Systeem';
	@override String get sign_in_failed => 'Aanmelden mislukt. Controleer uw netwerkverbinding en probeer het opnieuw.';
	@override String get you_won => 'Je hebt gewonnen!';
	@override String get victories => 'Overwinningen';
	@override String get you_lost => 'Je hebt verloren!';
	@override String get you_finished => 'Je bent klaar!';
	@override String get defeats => 'Nederlagen';
	@override String get generic_game_over => 'Veel succes bij je volgende spel.';
	@override String get generic_win => 'Je hebt %1\$d mijnen gevonden in %2\$d seconden.';
	@override String get fail_to_share => 'Delen mislukt';
	@override String get version_s => 'Versie %1\$s';
	@override String get sound_effects => 'Geluids Effecten';
	@override String get music => 'Muziek';
	@override String get music_by => 'Muziek door %1\$s';
	@override String get check_music => 'Beluisteren op Spotify…';
	@override String get selected => 'Geselecteerd';
	@override String get are_you_sure => 'Weet je het zeker?';
	@override String get enable_automatic_flags => 'Schakel automatisch plaatsen van vlaggen in';
	@override String get open_areas => 'Open gebieden';
	@override String get total_time => 'Totale Tijd';
	@override String get average_time => 'Gemiddelde Tijd';
	@override String get shortest_time => 'Kortste tijd';
	@override String get performance => 'Prestatie';
	@override String get ok => 'Oké';
	@override String get use_question_mark => 'Gebruik vraagteken';
	@override String get no_guessing_mode => '\'Niet-gokken\' modus';
	@override String get control => 'Besturing';
	@override String get control_types => 'Controletype';
	@override String get single_click => 'Enkele tik';
	@override String get double_click => 'Dubbeltik';
	@override String get long_press => 'Lang aanraken';
	@override String get touch_sensibility => 'Aanraakgevoeligheid';
	@override String get open_tile => 'Open';
	@override String get flag_tile => 'Vlag';
	@override String get retry => 'Opnieuw';
	@override String get continue_game => 'Doorgaan';
	@override String get empty => 'Leeg';
	@override String get cant_do_it_now => 'Onmogelijk om dat nu te doen';
	@override String get mine_revealed => 'Er is een mijn onthuld';
	@override String get fail_to_load_ad => 'Kon advertentie niet laden';
	@override String get you_have_received => 'Je hebt ontvangen: \$param1';
	@override String get help_win_a_game => 'Voor meer hints, moet je een spel winnen.';
	@override String get unknown_error => 'Onbekende fout.';
	@override String get error => 'Fout!';
	@override String get leaderboards => 'Ranglijsten';
	@override String get cancel => 'Annuleren';
	@override String get resume => 'Doorgaan';
	@override String get yes => 'Ja';
	@override String get unlock => 'Ontgrendelen';
	@override String get unlock_all => 'Ontgrendel alles';
	@override String get achievements => 'Prestaties';
	@override String get no => 'Nee';
	@override String get general => 'Algemeen';
	@override String get more => 'Meer';
	@override String get source_code => 'Bron code';
	@override String get translation => 'Vertaling';
	@override String get language => 'Taal';
	@override String get licenses => 'Licenties';
	@override String get google_play_games => 'Google Play Games';
	@override String get loading => 'Bezig met laden…';
	@override String get creating_valid_game => 'Aanmaken van een geldig spel…';
	@override String get connect => 'Verbinden';
	@override String get connecting => 'Verbinden…';
	@override String get disconnect => 'Verbinding verbreken';
	@override String get disconnected => 'Verbinding verbroken';
	@override String get new_game => 'Nieuw spel';
	@override String get share => 'Delen';
	@override String get share_menu => 'Delen…';
	@override String get no_network => 'Geen internetverbinding.';
	@override String get delete_all => 'Alles verwijderen';
	@override String get appearance => 'Uiterlijk';
	@override String get themes => 'Thema\'s';
	@override String get delete_all_message => 'Verwijder alle gebeurtenissen permanent.';
	@override String get remove_ad => 'Verwijder advertenties';
	@override String get help => 'Hint';
	@override String get back => 'Terug';
	@override String get donation => 'Doneren';
	@override String get open_on_game => 'Open op spelscherm';
	@override String get show_windows => 'Vensters weergeven';
	@override String get select_language => 'Kies taal';
	@override String get switch_control => 'Verander: Vlag en Open';
	@override String get switch_control_desc => 'Gebruik de knop om te wisselen tussen vlag en open';
	@override String get app_description => 'Je moet een rechthoekig bord met verborgen mijnen verwijderen zonder er een te ontploffen.';
	@override String get app_name => 'Antimijn';
	@override String get do_you_know_how_to_play => 'Weet je hoe je Minesweeper moet spelen?';
	@override String get close => 'Sluiten';
	@override String get open_tutorial => 'Handleiding openen';
	@override String get click_numbers => 'Tikken op getallen toestaan';
	@override String get flag_when_tap_numbers => 'Vlag als je op een nummer klikt';
	@override String get tap_to_customize => 'Tik om aan te passen';
	@override String get no_guess_fail_warning => 'Het huidige mijnenveld kan meschien niet opgelost worden zonder te raden!';
	@override String get fixed_size => 'Vaste afmetingen';
	@override String get progressive => 'Progressief';
	@override String get value_limit_min => 'Minimaal is %d';
	@override String get value_limit_max => 'Maximaal is %d';
	@override String get proportion_too_high => 'Verhouding is te hoog!';
	@override String get highlight_unsolved_numbers => 'Onopgeloste nummers markeren';
	@override String get show_clock => 'Klok weergeven';
	@override String get donate_request => 'Overweeg een donatie te doen als je dit spel leuk vind.';
	@override String get donate_help => 'Hierdoor kan het project actief blijven!';
	@override String get acra_toast_text => 'Sorry, er is een fout opgetreden. Stuur het rapport naar de ontwikkelaars.';
	@override String get immersive_mode => 'Beeldvullende modus';
	@override String get background_color => 'Achtergrondkleur';
	@override String get main_color => 'Hoofdkleur';
	@override String get premium_exclusive => 'Enkel premium!';
	@override String get preview => 'Voorbeeld';
	@override String get shared_game => 'Gedeeld spel';
	@override String get shared_game_description => 'Voer hier de code in van een minesweeper spel gedeeld met jou.';
	@override String get code => 'Code';
	@override String get image => 'Afbeelding';
	@override String get free => 'Gratis';
	@override String get restore_purchase => 'Aankopen terugzetten';
}
