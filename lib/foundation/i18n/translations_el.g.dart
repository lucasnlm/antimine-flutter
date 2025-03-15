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
class TranslationsEl extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.el,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <el>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsEl _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Οδηγίες';
	@override String get tutorial_basic => 'Ο κανόνας του παιχνιδιού είναι απλός, ο αριθμός σε ένα τετράγωνο δείχνει τον αριθμό των ναρκών δίπλα σε αυτό και θα πρέπει να επισημάνετε όλες τις νάρκες.';
	@override String get tutorial_text1 => 'Εάν ένας αριθμός αγγίζει τον ίδιο αριθμό τετραγώνων, τότε τα τετράγωνα είναι όλες οι νάρκες.';
	@override String get tutorial_text2 => 'Αφού επισημάνετε την πρώτη σας σημαία, εξετάστε τους αριθμούς και να αναλύσετε το επόμενο τετράγωνο.';
	@override String get tutorial_text3 => 'Αν ένα τετράγωνο έχει τον ίδιο αριθμό σημαιών, όλα τα υπόλοιπα τετράγωνα δίπλα σε αυτό δεν είναι ορυχεία (το πράσινο βέλος).';
	@override String get tutorial_text4 => 'Αναθεωρήστε τους αριθμούς και κρατήστε τα τετράγωνα ανοίγματος.';
	@override String get games => 'Παιχνίδια';
	@override String get tap_to_begin => 'Πατήστε για έναρξη';
	@override String get previous_games => 'Προηγούμενα Παιχνίδια';
	@override String get minefield => 'Δυσκολία';
	@override String get standard => 'Κανονική';
	@override String get beginner => 'Αρχάριος';
	@override String get intermediate => 'Ενδιάμεση';
	@override String get expert => 'Εξπέρ';
	@override String get master => 'Αρχηγός';
	@override String get legend => 'Θρύλος';
	@override String get open => 'Άνοιγμα';
	@override String get settings => 'Ρυθμίσεις';
	@override String get control_settings => 'Ρυθμίσεις Ελέγχου';
	@override String get default_button => 'Προεπιλεγμένο Κουμπί';
	@override String get shapes => 'Σχήματα';
	@override String get animations => 'Εφέ Κίνησης';
	@override String get vibration => 'Δόνηση';
	@override String get about => 'Σχετικά';
	@override String get quit => 'Έξοδος';
	@override String get events => 'Στατιστικά';
	@override String get custom => 'Προσαρμοσμένο';
	@override String get start => 'Έναρξη';
	@override String get width => 'Πλάτος';
	@override String get height => 'Ύψος';
	@override String get mines => 'Νάρκες';
	@override String get seed => 'Αριθμός';
	@override String get retry_sure => 'Εάν ξεκινήσετε ένα νέο παιχνίδι,\nη τρέχουσα πρόοδός σας θα χαθεί.';
	@override String get show_licenses => 'Εμφάνιση αδειών';
	@override String get new_game_request => 'Θέλετε να ξεκινήσετε ένα νέο παιχνίδι;';
	@override String get mines_remaining => '%d νάρκες';
	@override String get game_time => 'Ώρα Παιχνιδιού';
	@override String get settings_general => 'Γενικά';
	@override String get settings_gameplay => 'Gameplay';
	@override String get export_settings => 'Εξαγωγή';
	@override String get import_settings => 'Εισαγωγή';
	@override String get exported_success => 'Οι ρυθμίσεις εξήχθησαν!';
	@override String get imported_success => 'Οι ρυθμίσεις εισήχθησαν!';
	@override String get settings_accessibility => 'Προσβασιμότητα';
	@override String get system => 'Σύστημα';
	@override String get sign_in_failed => 'Αποτυχία σύνδεσης. Ελέγξτε τη σύνδεση δικτύου σας και δοκιμάστε ξανά.';
	@override String get you_won => 'Κέρδισες!';
	@override String get victories => 'Νίκες';
	@override String get you_lost => 'Έχασες!';
	@override String get you_finished => 'Ολοκληρώσατε!';
	@override String get defeats => 'Ήττες';
	@override String get generic_game_over => 'Καλή τύχη στο επόμενο παιχνίδι σας.';
	@override String get generic_win => 'Βρήκατε %1\$d νάρκες σε %2\$d δευτερόλεπτα.';
	@override String get fail_to_share => 'Αποτυχία κοινοποίησης';
	@override String get version_s => 'Έκδοση %1\$s';
	@override String get sound_effects => 'Ηχητικά εφέ';
	@override String get music => 'Μουσική';
	@override String get music_by => 'Μουσική από %1\$s';
	@override String get check_music => 'Άκουσε στο Spotify…';
	@override String get selected => 'Επιλέχθηκε';
	@override String get are_you_sure => 'Είσαι σίγουρος;';
	@override String get enable_automatic_flags => 'Ενεργοποίηση αυτόματης τοποθέτησης σημαιών';
	@override String get open_areas => 'Ανοιχτές περιοχές';
	@override String get total_time => 'Συνολικός Χρόνος';
	@override String get average_time => 'Μέσος χρόνος';
	@override String get shortest_time => 'Συντομότερος χρόνος';
	@override String get performance => 'Επίδοση';
	@override String get ok => 'Εντάξει';
	@override String get use_question_mark => 'Χρήση ερωτηματικών';
	@override String get no_guessing_mode => 'Λειτουργία «Χωρίς μαντέψεις»';
	@override String get control => 'Ελεγχος';
	@override String get control_types => 'Τύποι Ελέγχου';
	@override String get single_click => 'Απλό χτύπημα';
	@override String get double_click => 'Διπλό κτύπημα';
	@override String get long_press => 'Παρατεταμένο πάτημα';
	@override String get touch_sensibility => 'Ευαισθησία αφής';
	@override String get open_tile => 'Άνοιγμα';
	@override String get flag_tile => 'Σημαία';
	@override String get retry => 'Ξαναδοκιμάστε';
	@override String get continue_game => 'Συνέχεια';
	@override String get empty => 'Κενό';
	@override String get cant_do_it_now => 'Αδύνατο να το κάνουμε τώρα';
	@override String get mine_revealed => 'Μια νάρκη έχει αποκαλυφθεί';
	@override String get fail_to_load_ad => 'Αποτυχία φόρτωσης διαφήμισης';
	@override String get you_have_received => 'Εχεις λάβει: \$param1';
	@override String get help_win_a_game => 'Για περισσότερες υποδείξεις, θα πρέπει να κερδίσετε ένα παιχνίδι.';
	@override String get unknown_error => 'Άγνωστο σφάλμα.';
	@override String get error => 'Σφάλμα!';
	@override String get leaderboards => 'Πίνακες κατάταξης';
	@override String get cancel => 'Ακύρωση';
	@override String get resume => 'Συνέχεια';
	@override String get yes => 'Ναι';
	@override String get unlock => 'Ξεκλείδωμα';
	@override String get unlock_all => 'Ξεκλείδωμα όλων';
	@override String get achievements => 'Επιτεύγματα';
	@override String get no => 'Όχι';
	@override String get general => 'Γενικά';
	@override String get more => 'Περισσότερα';
	@override String get source_code => 'Πηγαίος Κώδικας';
	@override String get translation => 'Μετάφραση';
	@override String get language => 'Γλώσσα';
	@override String get licenses => 'Άδειες';
	@override String get google_play_games => 'Google Play Games';
	@override String get loading => 'Φόρτωση…';
	@override String get creating_valid_game => 'Δημιουργία έγκυρου παιχνιδιού…';
	@override String get connect => 'Σύνδεση';
	@override String get connecting => 'Σύνδεση…';
	@override String get disconnect => 'Αποσύνδεση';
	@override String get disconnected => 'Αποσυνδέθηκε';
	@override String get new_game => 'Νέο Παιχνίδι';
	@override String get share => 'Κοινοποίηση';
	@override String get share_menu => 'Κοινοποίηση με…';
	@override String get no_network => 'Δεν υπάρχει σύνδεση στο διαδίκτυο.';
	@override String get delete_all => 'Διαγραφή όλων';
	@override String get appearance => 'Εμφάνιση';
	@override String get themes => 'Θέμα';
	@override String get delete_all_message => 'Μόνιμη διαγραφή επιλεγμένων.';
	@override String get remove_ad => 'Κατάργηση διαφημίσεων';
	@override String get help => 'Υπόδειξη';
	@override String get back => 'Πίσω';
	@override String get donation => 'Δωρεά';
	@override String get open_on_game => 'Άνοιγμα στην οθόνη του παιχνιδιού';
	@override String get show_windows => 'Εμφάνιση παραθύρων';
	@override String get select_language => 'Επιλέξτε γλώσσα';
	@override String get switch_control => 'Διακόπτης: Σημαία και Άνοιγμα';
	@override String get switch_control_desc => 'Χρησιμοποιήστε το κουμπί για εναλλαγή μεταξύ Σημαίας και Ανοίγματος';
	@override String get app_description => 'Πρέπει να καθαρίσετε μια ορθογώνια πλακέτα που περιέχει κρυμμένες "νάρκες" χωρίς να πυροδοτήσετε καμία από αυτές.';
	@override String get app_name => 'Antimine';
	@override String get do_you_know_how_to_play => 'Ξέρετε πώς να παίξετε το Minesweeper;';
	@override String get close => 'Κλείσιμο';
	@override String get open_tutorial => 'Άνοιγμα Οδηγού';
	@override String get click_numbers => 'Επίτρεψε το πάτημα σε αριθμούς';
	@override String get flag_when_tap_numbers => 'Σημαία όταν πατάτε σε αριθμούς';
	@override String get tap_to_customize => 'Πατήστε για προσαρμογή';
	@override String get no_guess_fail_warning => 'Το τρέχον ναρκοπέδιο δεν μπορεί να λυθεί χωρίς μαντεψιές!';
	@override String get fixed_size => 'Προεπιλεγμένο Μέγεθος';
	@override String get progressive => 'Προοδευτικό';
	@override String get value_limit_min => 'Το ελάχιστο είναι %d';
	@override String get value_limit_max => 'Το μέγιστο είναι %d';
	@override String get proportion_too_high => 'Η αναλογία είναι πολύ υψηλή!';
	@override String get highlight_unsolved_numbers => 'Επισήμανση άλυτων αριθμών';
	@override String get show_clock => 'Εμφάνιση ρολογιού';
	@override String get donate_request => 'Αν σας αρέσει αυτό το παιχνίδι, σκεφτείτε να κάνετε μια δωρεά.';
	@override String get donate_help => 'Θα βοηθήσει να διατηρηθεί αυτό το έργο ενεργό!';
	@override String get acra_toast_text => 'Λυπούμαστε, προέκυψε ένα σφάλμα. Παρακαλούμε, στείλτε την αναφορά στους προγραμματιστές.';
	@override String get immersive_mode => 'Λειτουργία Πλήρους Οθόνης';
	@override String get background_color => 'Χρώμα φόντου';
	@override String get main_color => 'Κύριο χρώμα';
	@override String get premium_exclusive => 'Premium αποκλειστικά!';
	@override String get preview => 'Προεπισκόπηση';
	@override String get shared_game => 'Κοινόχρηστο παιχνίδι';
	@override String get shared_game_description => 'Εισάγετε εδώ τον κωδικό ενός παιχνιδιού ναρκοπεδίων που μοιράζεται μαζί σας.';
	@override String get code => 'Κωδικός';
	@override String get image => 'Εικόνα';
	@override String get free => 'Δωρεάν';
	@override String get restore_purchase => 'Επαναφορά αγορών';
}
