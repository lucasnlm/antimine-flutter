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
class TranslationsFil extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsFil({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.fil,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <fil>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsFil _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Tutorial';
  @override
  String get tutorial_basic =>
      'Ang panuntunan ng laro ay simple, ang numero sa isang parisukat ay nagpapakita ng bilang ng mga mina na katabi nito at kailangan mong i-flag ang lahat ng mga mina.';
  @override
  String get tutorial_text1 =>
      'Kung ang isang numero ay humahawak sa parehong bilang ng mga parisukat, kung gayon ang mga parisukat ay lahat ng mina.';
  @override
  String get tutorial_text2 =>
      'Pagkatapos markahan ang iyong unang bandila, suriin ang mga numero at suriin ang susunod na parisukat.';
  @override
  String get tutorial_text3 =>
      'Kung ang isang parisukat ay may parehong bilang ng mga flag, ang lahat ng iba pang natitirang mga parisukat na katabi nito ay hindi mina (ang berdeng arrow).';
  @override
  String get tutorial_text4 =>
      'Suriin ang mga numero at panatilihin ang pagbubukas ng mga parisukat.';
  @override
  String get games => 'Mga Laro';
  @override
  String get tap_to_begin => 'Itap para Magsimula';
  @override
  String get previous_games => 'Naunang Laro';
  @override
  String get minefield => 'Kahirapan';
  @override
  String get standard => 'Standard';
  @override
  String get beginner => 'Baguhan';
  @override
  String get intermediate => 'Intermediya';
  @override
  String get expert => 'Dalubhasa';
  @override
  String get master => 'Master';
  @override
  String get legend => 'Legend';
  @override
  String get open => 'Bukas';
  @override
  String get settings => 'Mga-setting';
  @override
  String get control_settings => 'Setings ng Control';
  @override
  String get default_button => 'Default Button';
  @override
  String get shapes => 'Mga hugis';
  @override
  String get animations => 'Mga animation';
  @override
  String get vibration => 'Haptic Feedback';
  @override
  String get about => 'Tungkol dito';
  @override
  String get quit => 'Quit';
  @override
  String get events => 'Statistics';
  @override
  String get custom => 'Custom';
  @override
  String get start => 'Start';
  @override
  String get width => 'Width';
  @override
  String get height => 'Height';
  @override
  String get mines => 'Mines';
  @override
  String get seed => 'Seed';
  @override
  String get retry_sure =>
      'If you start a new game, your current progress will be lost.';
  @override
  String get show_licenses => 'Show Licenses';
  @override
  String get new_game_request => 'Do you want to start a new game?';
  @override
  String get mines_remaining => '%d mines';
  @override
  String get game_time => 'Game Time';
  @override
  String get settings_general => 'General';
  @override
  String get settings_gameplay => 'Gameplay';
  @override
  String get export_settings => 'Export';
  @override
  String get import_settings => 'Import';
  @override
  String get exported_success => 'Settings exported!';
  @override
  String get imported_success => 'Settings imported!';
  @override
  String get settings_accessibility => 'Accessibility';
  @override
  String get system => 'System';
  @override
  String get sign_in_failed =>
      'Failed to sign in. Please check your network connection and try again.';
  @override
  String get you_won => 'You won!';
  @override
  String get victories => 'Victories';
  @override
  String get you_lost => 'You lost!';
  @override
  String get you_finished => 'You finished!';
  @override
  String get defeats => 'Defeats';
  @override
  String get generic_game_over => 'Good luck on your next game.';
  @override
  String get generic_win => 'You found %1\$d mines in %2\$d seconds.';
  @override
  String get fail_to_share => 'Failed to share';
  @override
  String get version_s => 'Version %1\$s';
  @override
  String get sound_effects => 'Sound Effects';
  @override
  String get music => 'Music';
  @override
  String get music_by => 'Music by %1\$s';
  @override
  String get check_music => 'Listen on Spotify…';
  @override
  String get selected => 'Selected';
  @override
  String get are_you_sure => 'Are you sure?';
  @override
  String get enable_automatic_flags => 'Enable automatic placing of flags';
  @override
  String get open_areas => 'Open Areas';
  @override
  String get total_time => 'Total Time';
  @override
  String get average_time => 'Average Time';
  @override
  String get shortest_time => 'Shortest Time';
  @override
  String get performance => 'Performance';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Use Question Mark';
  @override
  String get no_guessing_mode => '\'No guessing\' mode';
  @override
  String get control => 'Controls';
  @override
  String get control_types => 'Control Types';
  @override
  String get single_click => 'Single Tap';
  @override
  String get double_click => 'Double Tap';
  @override
  String get long_press => 'Long Tap';
  @override
  String get touch_sensibility => 'Touch Sensibility';
  @override
  String get open_tile => 'Open';
  @override
  String get flag_tile => 'Flag';
  @override
  String get retry => 'Retry';
  @override
  String get continue_game => 'Continue';
  @override
  String get empty => 'Empty';
  @override
  String get cant_do_it_now => 'Impossible to do that now';
  @override
  String get mine_revealed => 'A mine has been revealed';
  @override
  String get fail_to_load_ad => 'Fail to load ad';
  @override
  String get you_have_received => 'You have received: \$param1';
  @override
  String get help_win_a_game => 'For more hints, you must win a game.';
  @override
  String get unknown_error => 'Unknown error.';
  @override
  String get error => 'Error!';
  @override
  String get leaderboards => 'Leaderboards';
  @override
  String get cancel => 'Cancel';
  @override
  String get resume => 'Resume';
  @override
  String get yes => 'Yes';
  @override
  String get unlock => 'Unlock';
  @override
  String get unlock_all => 'Unlock all';
  @override
  String get achievements => 'Achievements';
  @override
  String get no => 'No';
  @override
  String get general => 'General';
  @override
  String get more => 'More';
  @override
  String get source_code => 'Source Code';
  @override
  String get translation => 'Translation';
  @override
  String get language => 'Language';
  @override
  String get licenses => 'Licenses';
  @override
  String get google_play_games => 'Google Play Games';
  @override
  String get loading => 'Loading…';
  @override
  String get creating_valid_game => 'Creating valid game…';
  @override
  String get connect => 'Connect';
  @override
  String get connecting => 'Connecting…';
  @override
  String get disconnect => 'Disconnect';
  @override
  String get disconnected => 'Disconnected';
  @override
  String get new_game => 'New Game';
  @override
  String get share => 'Share';
  @override
  String get share_menu => 'Share…';
  @override
  String get no_network => 'No internet connection.';
  @override
  String get delete_all => 'Delete all';
  @override
  String get appearance => 'Appearance';
  @override
  String get themes => 'Themes';
  @override
  String get delete_all_message => 'Delete all events permanently.';
  @override
  String get remove_ad => 'Premium';
  @override
  String get help => 'Hint';
  @override
  String get back => 'Back';
  @override
  String get donation => 'Donation';
  @override
  String get open_on_game => 'Open on game screen';
  @override
  String get show_windows => 'Show windows';
  @override
  String get select_language => 'Select Language';
  @override
  String get switch_control => 'Switch: Flag and Open';
  @override
  String get switch_control_desc =>
      'Use button to switch between Flag and Open';
  @override
  String get app_description =>
      'You have to clear a rectangular board containing hidden mines without detonating any of them.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => 'Do you know how to play minesweeper?';
  @override
  String get close => 'Close';
  @override
  String get open_tutorial => 'Open Tutorial';
  @override
  String get click_numbers => 'Allow tap on numbers';
  @override
  String get flag_when_tap_numbers => 'Flag when tap on numbers';
  @override
  String get tap_to_customize => 'Tap to customize';
  @override
  String get no_guess_fail_warning =>
      'The current minefield may not be guess-free!';
  @override
  String get fixed_size => 'Fixed Size';
  @override
  String get progressive => 'Progressive';
  @override
  String get value_limit_min => 'Min is %d';
  @override
  String get value_limit_max => 'Max is %d';
  @override
  String get proportion_too_high => 'Proportion is too high!';
  @override
  String get highlight_unsolved_numbers => 'Highlight unsolved numbers';
  @override
  String get show_clock => 'Show clock';
  @override
  String get donate_request =>
      'If you like this game, consider making a donation.';
  @override
  String get donate_help => 'It will help keep this project active!';
  @override
  String get acra_toast_text =>
      'Sorry, an error occurred. Please, send the report to the developers.';
  @override
  String get immersive_mode => 'Immersive Mode';
  @override
  String get background_color => 'Background color';
  @override
  String get main_color => 'Main color';
  @override
  String get premium_exclusive => 'Premium exclusive!';
  @override
  String get preview => 'Preview';
  @override
  String get shared_game => 'Shared game';
  @override
  String get shared_game_description =>
      'Insert here the code of a minesweeper game shared with you.';
  @override
  String get code => 'Code';
  @override
  String get image => 'Image';
  @override
  String get free => 'Free';
  @override
  String get restore_purchase => 'Restore purchase';
}
