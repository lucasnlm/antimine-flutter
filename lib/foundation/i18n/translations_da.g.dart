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
class TranslationsDa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.da,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <da>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsDa _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Vejledning';
	@override String get tutorial_basic => 'Reglen for spillet er enkel, nummeret på en firkant viser antallet af miner ved siden af, og du skal markere alle minerne.';
	@override String get tutorial_text1 => 'Hvis et tal rører det samme antal firkanter, så er kvadraterne alle miner.';
	@override String get tutorial_text2 => 'Efter markeringen af dit første flag, gennemse tallene og analyser det næste felt.';
	@override String get tutorial_text3 => 'Hvis en firkant har det samme antal af flag, er alle andre resterende firkanter ved siden af det ikke miner. (Den grønne pil).';
	@override String get tutorial_text4 => 'Gennemgå tallene og behold åbningskvardrater.';
	@override String get games => 'Spil';
	@override String get tap_to_begin => 'Tryk for at starte';
	@override String get previous_games => 'Tidligere Spil';
	@override String get minefield => 'Sværhedsgrad';
	@override String get standard => 'Standard';
	@override String get beginner => 'Begynder';
	@override String get intermediate => 'Mellem';
	@override String get expert => 'Ekspert';
	@override String get master => 'Mester';
	@override String get legend => 'Legende';
	@override String get open => 'Åbn';
	@override String get settings => 'Indstillinger';
	@override String get control_settings => 'Indstilling af kontroller';
	@override String get default_button => 'Standardknap';
	@override String get shapes => 'Figurer';
	@override String get animations => 'Animationer';
	@override String get vibration => 'Haptisk Feedback';
	@override String get about => 'Om';
	@override String get quit => 'Afslut';
	@override String get events => 'Statistik';
	@override String get custom => 'Tilpasset';
	@override String get start => 'Start';
	@override String get width => 'Bredde';
	@override String get height => 'Højde';
	@override String get mines => 'Miner';
	@override String get seed => 'Frø';
	@override String get retry_sure => 'Hvis du starter et nyt spil, vil dit nuværende fremskridt gå tabt.';
	@override String get show_licenses => 'Vis Licenser';
	@override String get new_game_request => 'Vil du starte et nyt spil?';
	@override String get mines_remaining => '%d miner';
	@override String get game_time => 'Spiltid';
	@override String get settings_general => 'Generelt';
	@override String get settings_gameplay => 'Gameplay';
	@override String get export_settings => 'Eksporter';
	@override String get import_settings => 'Importer';
	@override String get exported_success => 'Indstillinger eksporteret!';
	@override String get imported_success => 'Indstillinger importeret!';
	@override String get settings_accessibility => 'Tilgængelighed';
	@override String get system => 'System';
	@override String get sign_in_failed => 'Kan ikke forbinde. Tjek venligst din netværksforbindelse og prøv igen.';
	@override String get you_won => 'Du vandt!';
	@override String get victories => 'Sejre';
	@override String get you_lost => 'Du tabte!';
	@override String get you_finished => 'Du er færdig!';
	@override String get defeats => 'Nederlag';
	@override String get generic_game_over => 'Held og lykke med dit næste spil.';
	@override String get generic_win => 'Du fandt %1\$d miner på %2\$d sekunder.';
	@override String get fail_to_share => 'Deling mislykkedes';
	@override String get version_s => 'Version %1\$s';
	@override String get sound_effects => 'Lydeffekter';
	@override String get music => 'Musik';
	@override String get music_by => 'Musik af %1\$s';
	@override String get check_music => 'Lyt på Spotify…';
	@override String get selected => 'Valgt';
	@override String get are_you_sure => 'Er du sikker?';
	@override String get enable_automatic_flags => 'Aktivér automatisk placering af flag';
	@override String get open_areas => 'Åbne Områder';
	@override String get total_time => 'Total Tid';
	@override String get average_time => 'Gennemsnitlig Tid';
	@override String get shortest_time => 'Korteste Tid';
	@override String get performance => 'Præstation';
	@override String get ok => 'OK';
	@override String get use_question_mark => 'Brug Spørgsmålstegn';
	@override String get no_guessing_mode => '\'Ingen gætning\' tilstand';
	@override String get control => 'Controls';
	@override String get control_types => 'Kontrol typer';
	@override String get single_click => 'Enkelt tryk';
	@override String get double_click => 'Dobbelt tryk';
	@override String get long_press => 'Langt tryk';
	@override String get touch_sensibility => 'Berøringsfølsomhed';
	@override String get open_tile => 'Åbn';
	@override String get flag_tile => 'Flag';
	@override String get retry => 'Prøv igen';
	@override String get continue_game => 'Fortsæt';
	@override String get empty => 'Tom';
	@override String get cant_do_it_now => 'Umuligt at gøre det nu';
	@override String get mine_revealed => 'En mine er blevet afsløret';
	@override String get fail_to_load_ad => 'Kunne ikke indlæse annonce';
	@override String get you_have_received => 'Du har modtaget: \$param1';
	@override String get help_win_a_game => 'For flere tips skal du vinde et spil.';
	@override String get unknown_error => 'Ukendt fejl.';
	@override String get error => 'Fejl!';
	@override String get leaderboards => 'Ranglister';
	@override String get cancel => 'Annuller';
	@override String get resume => 'Fortsæt';
	@override String get yes => 'Ja';
	@override String get unlock => 'Lås op';
	@override String get unlock_all => 'Åben alle';
	@override String get achievements => 'Bedrifter';
	@override String get no => 'Nej';
	@override String get general => 'Generelt';
	@override String get more => 'Mere';
	@override String get source_code => 'Kildekode';
	@override String get translation => 'Oversættelse';
	@override String get language => 'Sprog';
	@override String get licenses => 'Licenser';
	@override String get google_play_games => 'Google Play Spil';
	@override String get loading => 'Indlæser…';
	@override String get creating_valid_game => 'Opretter gyldigt spil…';
	@override String get connect => 'Forbind';
	@override String get connecting => 'Forbinder…';
	@override String get disconnect => 'Afbryd forbindelse';
	@override String get disconnected => 'Forbindelse afbrudt';
	@override String get new_game => 'Nyt Spil';
	@override String get share => 'Del';
	@override String get share_menu => 'Del…';
	@override String get no_network => 'Ingen internetforbindelse.';
	@override String get delete_all => 'Slet alt';
	@override String get appearance => 'Udseende';
	@override String get themes => 'Temaer';
	@override String get delete_all_message => 'Slet alle begivenheder permanent.';
	@override String get remove_ad => 'Fjern annoncer';
	@override String get help => 'Tip';
	@override String get back => 'Tilbage';
	@override String get donation => 'Donation';
	@override String get open_on_game => 'Åbn på spilskærmen';
	@override String get show_windows => 'Vis vinduer';
	@override String get select_language => 'Vælg sprog';
	@override String get switch_control => 'Skifter: Flag og Åbn';
	@override String get switch_control_desc => 'Brug knap til at skifte mellem Flag og Åbn';
	@override String get app_description => 'Du skal rydde en rektangulær tavle med skjulte miner uden at detonere nogen af dem.';
	@override String get app_name => 'Antimine - Minestryger';
	@override String get do_you_know_how_to_play => 'Ved du hvordan man spiller minesweeper?';
	@override String get close => 'Luk';
	@override String get open_tutorial => 'Åben vejledning';
	@override String get click_numbers => 'Tillad tryk på numre';
	@override String get flag_when_tap_numbers => 'Markér når du trykker på tal';
	@override String get tap_to_customize => 'Tryk for at tilpasse';
	@override String get no_guess_fail_warning => 'Det nuværende minefelt kan muligvis ikke løses uden at gætte!';
	@override String get fixed_size => 'Fast Størrelse';
	@override String get progressive => 'Progressiv';
	@override String get value_limit_min => 'Minimum er %d';
	@override String get value_limit_max => 'Maksimum er %d';
	@override String get proportion_too_high => 'Andelen er for høj!';
	@override String get highlight_unsolved_numbers => 'Fremhæv uløste tal';
	@override String get show_clock => 'Vis ur';
	@override String get donate_request => 'Hvis du kan lide dette spil, overvej at lave en donation.';
	@override String get donate_help => 'Det vil bidrage til at holde projektet aktivt!';
	@override String get acra_toast_text => 'Beklager, der opstod en fejl. Send venligst rapporten til udviklerne.';
	@override String get immersive_mode => 'Fuldskærmstilstand';
	@override String get background_color => 'Bakgrunn farge';
	@override String get main_color => 'Hovedfarve';
	@override String get premium_exclusive => 'Premium eksklusiv!';
	@override String get preview => 'Forhåndsvisning';
	@override String get shared_game => 'Delte spil';
	@override String get shared_game_description => 'Indsæt her koden for et minestryger spil, der deles med dig.';
	@override String get code => 'Kode';
	@override String get image => 'Billede';
	@override String get free => 'Ledig';
	@override String get restore_purchase => 'Gendan køb';
}
