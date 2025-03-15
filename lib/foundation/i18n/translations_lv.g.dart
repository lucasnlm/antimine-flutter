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
class TranslationsLv extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsLv({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.lv,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <lv>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsLv _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Pamācība';
	@override String get tutorial_basic => 'Spēles noteikumi ir vienkārši: kvadrātā ierakstītiais skaitlis apzīmē apkārt esošo mīnu skaitu, un tās visas ir nepieciešams atzīmēt ar karogu.';
	@override String get tutorial_text1 => 'Ja skaitlis pieskaras tikpat kvadrātiem cik norādīts, tad visi kvadrāti ir mīnas.';
	@override String get tutorial_text2 => 'Pēc pirmās mīnas atzīmēšanas pārskati un izvērtē nākamo kvadrātu.';
	@override String get tutorial_text3 => 'Ja skaitlis ir tikpat liels cik atzīmēto kvadrātu skaits, pārējie kvadrāti nav mīnas (norādīts ar zaļo bultu).';
	@override String get tutorial_text4 => 'Apskati skaitļus un turpini lauku atklāšanu.';
	@override String get games => 'Spēles';
	@override String get tap_to_begin => 'Piesist, lai sāktu';
	@override String get previous_games => 'Iepriekšējās spēles';
	@override String get minefield => 'Sarežģītība';
	@override String get standard => 'Standarta';
	@override String get beginner => 'Iesācēja';
	@override String get intermediate => 'Vidēji grūts';
	@override String get expert => 'Eksperta';
	@override String get master => 'Meistara';
	@override String get legend => 'Leģendas';
	@override String get open => 'Atvērt';
	@override String get settings => 'Iestatījumi';
	@override String get control_settings => 'Vadības iestatījumi';
	@override String get default_button => 'Noklusējuma poga';
	@override String get shapes => 'Apveidi';
	@override String get animations => 'Animācijas';
	@override String get vibration => 'Sajūtu atgriezeniskā saite';
	@override String get about => 'Par lietotni';
	@override String get quit => 'Iziet';
	@override String get events => 'Apkopojums';
	@override String get custom => 'Pielāgots';
	@override String get start => 'Sākt';
	@override String get width => 'Platums';
	@override String get height => 'Augstums';
	@override String get mines => 'Mīnu skaits';
	@override String get seed => 'Sēkla';
	@override String get retry_sure => 'Uzsākot jaunu spēli pašreizējais progress tiks zaudēts.';
	@override String get show_licenses => 'Rādīt licences';
	@override String get new_game_request => 'Vai tu vēlies uzsākt jaunu spēli?';
	@override String get mines_remaining => '%d mīnas';
	@override String get game_time => 'Spēles laiks';
	@override String get settings_general => 'Vispārīgi';
	@override String get settings_gameplay => 'Spēlē';
	@override String get export_settings => 'Izdot';
	@override String get import_settings => 'Ievietot';
	@override String get exported_success => 'Iestatījumi izdoti';
	@override String get imported_success => 'Iestatījumi ievietoti';
	@override String get settings_accessibility => 'Pieejamība';
	@override String get system => 'Sistēmas';
	@override String get sign_in_failed => 'Neizdevās pierakstīties. Lūdzu, pārbaudiet savu tīkla savienojumu un mēģiniet vēlreiz.';
	@override String get you_won => 'Tu uzvarēji!';
	@override String get victories => 'Uzvaras';
	@override String get you_lost => 'Tu zaudēji!';
	@override String get you_finished => 'Tu pabeidzi!';
	@override String get defeats => 'Zaudējumi';
	@override String get generic_game_over => 'Vēlu veiksmi nākamajā reizē.';
	@override String get generic_win => 'Tu %2\$d sekundēs atzīmēji %1\$d mīnas.';
	@override String get fail_to_share => 'Neizdevās kopīgot';
	@override String get version_s => 'Versija %1\$s';
	@override String get sound_effects => 'Skaņas efekti';
	@override String get music => 'Mūzika';
	@override String get music_by => '%1\$s mūzika';
	@override String get check_music => 'Klausīties Spotify…';
	@override String get selected => 'Atlasīts';
	@override String get are_you_sure => 'Vai esi pārliecināts(a)?';
	@override String get enable_automatic_flags => 'Iespējot automātisku atzīmēšanu';
	@override String get open_areas => 'Atvērti lauki';
	@override String get total_time => 'Kopējais laiks';
	@override String get average_time => 'Vidējais laiks';
	@override String get shortest_time => 'Īsākais laiks';
	@override String get performance => 'Izpilde';
	@override String get ok => 'Labi';
	@override String get use_question_mark => 'Iespējot jautājuma zīmi';
	@override String get no_guessing_mode => 'Režīms bez minēšanas';
	@override String get control => 'Vadība';
	@override String get control_types => 'Vadības veidi';
	@override String get single_click => 'Pieskāriens';
	@override String get double_click => 'Divkāršs piesitiens';
	@override String get long_press => 'Ilgs pieskāriens';
	@override String get touch_sensibility => 'Saskares jutīgums';
	@override String get open_tile => 'Atvērt';
	@override String get flag_tile => 'Atzīmēt';
	@override String get retry => 'Mēģināt vēlreiz';
	@override String get continue_game => 'Turpināt';
	@override String get empty => 'Tukšs';
	@override String get cant_do_it_now => 'To pašreiz nav iespējams veikt';
	@override String get mine_revealed => 'Tika atklāta mīna';
	@override String get fail_to_load_ad => 'Neizdevās ielādēt reklāmu';
	@override String get you_have_received => 'Tu esi saņēmis: \$param1';
	@override String get help_win_a_game => 'Jauzvar spēle, lai iegūt vairāk norāžu.';
	@override String get unknown_error => 'Nezināma kļūda.';
	@override String get error => 'Kļūda!';
	@override String get leaderboards => 'Labāko spēlētāju saraksts';
	@override String get cancel => 'Atcelt';
	@override String get resume => 'Vienalga turpināt';
	@override String get yes => 'Jā';
	@override String get unlock => 'Atbloķēt';
	@override String get unlock_all => 'Atslēgt visu';
	@override String get achievements => 'Sasniegumi';
	@override String get no => 'Nē';
	@override String get general => 'Vispārīgi';
	@override String get more => 'Vairāk';
	@override String get source_code => 'Pirmkods';
	@override String get translation => 'Tulkojums';
	@override String get language => 'Valoda';
	@override String get licenses => 'Licences';
	@override String get google_play_games => 'Google Play spēles';
	@override String get loading => 'Notiek ielāde…';
	@override String get creating_valid_game => 'Izveido derīgu spēli…';
	@override String get connect => 'Savienot';
	@override String get connecting => 'Notiek savienojuma izveide…';
	@override String get disconnect => 'Atvienot';
	@override String get disconnected => 'Atvienots';
	@override String get new_game => 'Jauna spēle';
	@override String get share => 'Kopīgot';
	@override String get share_menu => 'Kopīgot…';
	@override String get no_network => 'Nav interneta savienojuma.';
	@override String get delete_all => 'Dzēst visu';
	@override String get appearance => 'Izskats';
	@override String get themes => 'Izskats';
	@override String get delete_all_message => 'Neatgriezeniski dzēst visus notikumus.';
	@override String get remove_ad => 'Premium';
	@override String get help => 'Norāde';
	@override String get back => 'Atpakaļ';
	@override String get donation => 'Ziedot';
	@override String get open_on_game => 'Atverot lietotni turpināt pēdējo spēli';
	@override String get show_windows => 'Rādīt logus';
	@override String get select_language => 'Izvēlēties valodu';
	@override String get switch_control => 'Slēdzis: atzīmēt un atvērt';
	@override String get switch_control_desc => 'Izmantot pogu, lai pārslēgtos starp atzīmēšanu un atvēršanu';
	@override String get app_description => 'Tev ir jāatzīmē visas mīnas laukumā bez nevienas mīnas detonēšanas.';
	@override String get app_name => 'Antimine';
	@override String get do_you_know_how_to_play => 'Vai tu zini kā spēlēt Minesweeper?';
	@override String get close => 'Aizvērt';
	@override String get open_tutorial => 'Atvērt pamācību';
	@override String get click_numbers => 'Atļaut pieskaršanos skaitļiem';
	@override String get flag_when_tap_numbers => 'Atzīmēt, kad piesit skaitļiem';
	@override String get tap_to_customize => 'Piesist, lai pielāgotu';
	@override String get no_guess_fail_warning => 'Pašreizējais mīnu lauks nav no minēšanas brīvs!';
	@override String get fixed_size => 'Nemainīga lieluma';
	@override String get progressive => 'Ar attīstību';
	@override String get value_limit_min => 'Mazākā vērtība ir %d';
	@override String get value_limit_max => 'Lielākā vērtība ir %d';
	@override String get proportion_too_high => 'Attiecība ir pārāk liela.';
	@override String get highlight_unsolved_numbers => 'Izcelt neatrisinātos skaitļus';
	@override String get show_clock => 'Rādīt pulksteni';
	@override String get donate_request => 'Lūgums apsvērt ziedojumu, ja patīk šī spēle.';
	@override String get donate_help => 'Tas palīdzēs nodrošināt izstrādi.';
	@override String get acra_toast_text => 'Atvainojamies, atgadījās kļūda. Lūgums nosūtīt izstrādātājiem ziņojumu.';
	@override String get immersive_mode => 'Iesaistošais režīms';
	@override String get background_color => 'Fona krāsa';
	@override String get main_color => 'Galvenā krāsa';
	@override String get premium_exclusive => 'Pieejams tikai ar Premium.';
	@override String get preview => 'Priekšskatīt';
	@override String get shared_game => 'Kopīgota spēle';
	@override String get shared_game_description => 'Šeit ir jāievada kopīgotas mīnu meklēšanas spēles kods.';
	@override String get code => 'Kods';
	@override String get image => 'Attēls';
	@override String get free => 'Bezmaksas';
	@override String get restore_purchase => 'Atjaunot pirkumus';
}
