///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  );

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get tutorial => 'Tutorial';
	String get tutorial_basic => 'It\'s simple. The number on a square shows the number of mines adjacent to it. The objective is to find and flag all the mines. If you tap on a mine, it explodes.';
	String get tutorial_text1 => 'If a number is touching the same number of squares, then the squares are all mines.';
	String get tutorial_text2 => 'After marking your first flag, review the numbers and analyze the next square.';
	String get tutorial_text3 => 'If a square has the same number of flags, all other remaining squares adjacent to it aren\'t mines (the green arrow).';
	String get tutorial_text4 => 'Review the numbers and keep opening squares.';
	String get games => 'Games';
	String get tap_to_begin => 'Tap to begin';
	String get previous_games => 'Previous Games';
	String get minefield => 'Difficulty';
	String get standard => 'Standard';
	String get beginner => 'Beginner';
	String get intermediate => 'Intermediate';
	String get expert => 'Expert';
	String get master => 'Master';
	String get legend => 'Legend';
	String get open => 'Open';
	String get settings => 'Settings';
	String get control_settings => 'Control Settings';
	String get default_button => 'Default Button';
	String get shapes => 'Shapes';
	String get animations => 'Animations';
	String get vibration => 'Haptic Feedback';
	String get about => 'About';
	String get quit => 'Quit';
	String get events => 'Statistics';
	String get custom => 'Custom';
	String get start => 'Start';
	String get width => 'Width';
	String get height => 'Height';
	String get mines => 'Mines';
	String get seed => 'Seed';
	String get retry_sure => 'If you start a new game, your current progress will be lost.';
	String get show_licenses => 'Show Licenses';
	String get new_game_request => 'Do you want to start a new game?';
	String get mines_remaining => '%d mines';
	String get game_time => 'Game Time';
	String get settings_general => 'General';
	String get settings_gameplay => 'Gameplay';
	String get export_settings => 'Export';
	String get import_settings => 'Import';
	String get exported_success => 'Settings exported!';
	String get imported_success => 'Settings imported!';
	String get settings_accessibility => 'Accessibility';
	String get system => 'System';
	String get sign_in_failed => 'Failed to sign in. Please check your network connection and try again.';
	String get you_won => 'You won!';
	String get victories => 'Victories';
	String get you_lost => 'You lost!';
	String get you_finished => 'You have finished!';
	String get defeats => 'Defeats';
	String get generic_game_over => 'Good luck on your next game.';
	String get generic_win => 'You found %1\$d mines in %2\$d seconds.';
	String get fail_to_share => 'Failed to share';
	String get version_s => 'Version %1\$s';
	String get sound_effects => 'Sound Effects';
	String get music => 'Music';
	String get music_by => 'Music by %1\$s';
	String get check_music => 'Listen on Spotify…';
	String get selected => 'Selected';
	String get are_you_sure => 'Are you sure?';
	String get enable_automatic_flags => 'Enable automatic placing of flags';
	String get open_areas => 'Open Areas';
	String get total_time => 'Total Time';
	String get average_time => 'Average Time';
	String get shortest_time => 'Shortest Time';
	String get performance => 'Performance';
	String get ok => 'OK';
	String get use_question_mark => 'Use Question Mark';
	String get no_guessing_mode => '\'No guessing\' mode';
	String get control => 'Controls';
	String get control_types => 'Control Types';
	String get single_click => 'Single Tap';
	String get double_click => 'Double Tap';
	String get long_press => 'Long Tap';
	String get touch_sensibility => 'Touch Sensibility';
	String get open_tile => 'Open';
	String get flag_tile => 'Flag';
	String get retry => 'Retry';
	String get continue_game => 'Continue';
	String get empty => 'Empty';
	String get cant_do_it_now => 'Impossible to do that now';
	String get mine_revealed => 'A mine has been revealed';
	String get fail_to_load_ad => 'Failed to load ad';
	String get you_have_received => 'You have received: %1\$d';
	String get help_win_a_game => 'For more hints, you must win a game.';
	String get unknown_error => 'Unknown error.';
	String get error => 'Error!';
	String get leaderboards => 'Leaderboards';
	String get cancel => 'Cancel';
	String get resume => 'Resume';
	String get yes => 'Yes';
	String get unlock => 'Unlock';
	String get unlock_all => 'Unlock All';
	String get achievements => 'Achievements';
	String get no => 'No';
	String get general => 'General';
	String get more => 'More';
	String get source_code => 'Source Code';
	String get translation => 'Translation';
	String get language => 'Language';
	String get licenses => 'Licenses';
	String get google_play_games => 'Google Play Games';
	String get loading => 'Loading…';
	String get creating_valid_game => 'Creating valid game…';
	String get connect => 'Connect';
	String get connecting => 'Connecting…';
	String get disconnect => 'Disconnect';
	String get disconnected => 'Disconnected';
	String get new_game => 'New Game';
	String get share => 'Share';
	String get share_menu => 'Share…';
	String get no_network => 'No internet connection.';
	String get delete_all => 'Delete all';
	String get appearance => 'Appearance';
	String get themes => 'Themes';
	String get delete_all_message => 'Delete all events permanently.';
	String get remove_ad => 'Remove Ads';
	String get help => 'Hint';
	String get back => 'Back';
	String get donation => 'Donation';
	String get open_on_game => 'Open on game screen';
	String get show_windows => 'Show windows';
	String get select_language => 'Select Language';
	String get switch_control => 'Switch: Flag and Open';
	String get switch_control_desc => 'Use button to switch between Flag and Open';
	String get app_description => 'You have to clear a rectangular board containing hidden mines without detonating any of them.';
	String get app_name => 'Antimine';
	String get do_you_know_how_to_play => 'Do you know how to play minesweeper?';
	String get close => 'Close';
	String get open_tutorial => 'Open Tutorial';
	String get click_numbers => 'Allow tap on numbers';
	String get flag_when_tap_numbers => 'Flag when tap on numbers';
	String get tap_to_customize => 'Tap to customize';
	String get no_guess_fail_warning => 'The current minefield may not be guess-free!';
	String get fixed_size => 'Fixed Size';
	String get progressive => 'Progressive';
	String get value_limit_min => 'Min is %d';
	String get value_limit_max => 'Max is %d';
	String get proportion_too_high => 'Proportion is too high!';
	String get highlight_unsolved_numbers => 'Highlight unsolved numbers';
	String get show_clock => 'Show Clock';
	String get donate_request => 'If you like this game, consider making a donation.';
	String get donate_help => 'It will help keep this project active!';
	String get acra_toast_text => 'Sorry, an error occurred. Please, send the report to the developers.';
	String get immersive_mode => 'Immersive Mode';
	String get background_color => 'Background Color';
	String get main_color => 'Main Color';
	String get premium_exclusive => 'Premium exclusive!';
	String get preview => 'Preview';
	String get shared_game => 'Shared game';
	String get shared_game_description => 'Insert here the code of a minesweeper game shared with you.';
	String get code => 'Code';
	String get image => 'Image';
	String get free => 'Free';
	String get restore_purchase => 'Restore purchase';
}
