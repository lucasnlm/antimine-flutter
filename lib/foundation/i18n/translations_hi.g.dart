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
class TranslationsHi extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsHi _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'ट्यूटोरियल';
	@override String get tutorial_basic => 'गेम का नियम सरल है, स्क्वेयर पर मौजूद संख्या उसके पास वाले माइन की संख्या को दर्शाती है और आपको सभी माइन पर फ़्लैग लगाना है.';
	@override String get tutorial_text1 => 'यदि कोई संख्या स्क्वेयर की समान संख्या को टच कर रही है, तो इसका मतलब है कि सभी स्क्वेयर माइन हैं.';
	@override String get tutorial_text2 => 'अपना पहला फ़्लैग मार्क करने के बाद, संख्याओं को देखें और अगले स्क्वेयर पर ध्यान दें.';
	@override String get tutorial_text3 => 'यदि किसी स्क्वेयर में फ़्लैग की संख्या समान है, तो इसका मतलब है कि उसके आस-पास के सभी बचे हुए स्क्वेयर माइन (हरा तीर) नहीं हैं.';
	@override String get tutorial_text4 => 'संख्याओं को देखें और माइन को खोलते रहें.';
	@override String get games => 'गेम';
	@override String get tap_to_begin => 'शुरू करने के लिए टैप करें';
	@override String get previous_games => 'पिछला गेम';
	@override String get minefield => 'कठिनाई';
	@override String get standard => 'स्टैंडर्ड';
	@override String get beginner => 'नौसिखिया';
	@override String get intermediate => 'मध्यम';
	@override String get expert => 'विशेषज्ञ';
	@override String get master => 'माहिर';
	@override String get legend => 'दिग्गज';
	@override String get open => 'खोलें';
	@override String get settings => 'सेटिंग';
	@override String get control_settings => 'नियंत्रण सेटिंग्स';
	@override String get default_button => 'तयशुदा बटन';
	@override String get shapes => 'आकार';
	@override String get animations => 'एनिमेशन';
	@override String get vibration => 'हैप्टिक फ़ीडबैक';
	@override String get about => 'परिचय';
	@override String get quit => 'छोड़ें';
	@override String get events => 'आंकड़े';
	@override String get custom => 'कस्टम';
	@override String get start => 'शुरू करें';
	@override String get width => 'चौड़ाई';
	@override String get height => 'ऊंचाई';
	@override String get mines => 'माइन';
	@override String get seed => 'बीज';
	@override String get retry_sure => 'यदि आप नया गेम शुरू करते हैं, तो आपकी वर्तमान प्रगति खो जाएगी.';
	@override String get show_licenses => 'लाइसेंस दिखाएं';
	@override String get new_game_request => 'क्या आप एक नया गेम शुरू करना चाहते हैं?';
	@override String get mines_remaining => '%d माइन';
	@override String get game_time => 'गेम टाइम';
	@override String get settings_general => 'सामान्य';
	@override String get settings_gameplay => 'गेमप्ले';
	@override String get export_settings => 'निर्यात';
	@override String get import_settings => 'आयात';
	@override String get exported_success => 'Settings exported!';
	@override String get imported_success => 'Settings imported!';
	@override String get settings_accessibility => 'एक्सेसिबिलिटी';
	@override String get system => 'सिस्ट';
	@override String get sign_in_failed => 'साइन इन करने में विफल. कृपया अपने नेटवर्क कनेक्शन की जांच करें और फिर कोशिश करें.';
	@override String get you_won => 'आप जीत गए!';
	@override String get victories => 'जीत';
	@override String get you_lost => 'आप हार गए!';
	@override String get you_finished => 'आपने पूरा किया!';
	@override String get defeats => 'हार';
	@override String get generic_game_over => 'आपके अगले गेम के लिए शुभकामनाएं.';
	@override String get generic_win => 'आपको %2\$d सेकंड में %1\$d माइन मिलीं.';
	@override String get fail_to_share => 'शेयर करने में विफल';
	@override String get version_s => 'वर्शन %1\$s';
	@override String get sound_effects => 'साउंड इफ़ेक्ट';
	@override String get music => 'संगीत';
	@override String get music_by => 'Music by %1\$s';
	@override String get check_music => 'Spotify पर सुनें...';
	@override String get selected => 'चयनित';
	@override String get are_you_sure => 'क्या आप वाकई ऐसा चाहते हैं?';
	@override String get enable_automatic_flags => 'फ़्लैग को अपने आप रखना चालू करें';
	@override String get open_areas => 'खुले क्षेत्र';
	@override String get total_time => 'कुल समय';
	@override String get average_time => 'औसत समय';
	@override String get shortest_time => 'सबसे छोटा समय';
	@override String get performance => 'प्रदर्शन';
	@override String get ok => 'ओके';
	@override String get use_question_mark => 'प्रश्न चिह्न का उपयोग करें';
	@override String get no_guessing_mode => '\'कोई अनुमान नहीं\' मोड';
	@override String get control => 'नियंत्रण';
	@override String get control_types => 'नियंत्रण प्रकार';
	@override String get single_click => 'एक टैप';
	@override String get double_click => 'दो बार टैप';
	@override String get long_press => 'लंबा टैप';
	@override String get touch_sensibility => 'टच सेंसिबिलिटी';
	@override String get open_tile => 'खोलें';
	@override String get flag_tile => 'फ़्लैग';
	@override String get retry => 'फिर कोशिश करें';
	@override String get continue_game => 'जारी रखें';
	@override String get empty => 'खाली';
	@override String get cant_do_it_now => 'अब ऐसा करना नामुमकिन है';
	@override String get mine_revealed => 'A mine has been revealed';
	@override String get fail_to_load_ad => 'Fail to load ad';
	@override String get you_have_received => 'आपको मिला है: \$param1';
	@override String get help_win_a_game => 'अधिक सहायता के लिए, आपको एक गेम जीतना होगा.';
	@override String get unknown_error => 'अज्ञात त्रुटि.';
	@override String get error => 'गलती!';
	@override String get leaderboards => 'लीडरबोर्ड';
	@override String get cancel => 'रद्द करें';
	@override String get resume => 'फिर शुरू करें';
	@override String get yes => 'हां';
	@override String get unlock => 'अनलॉक करें';
	@override String get unlock_all => 'सभी अनलॉक करें';
	@override String get achievements => 'उपलब्धियां';
	@override String get no => 'नहीं';
	@override String get general => 'सामान्य';
	@override String get more => 'अधिक';
	@override String get source_code => 'सोर्स कोड';
	@override String get translation => 'अनुवाद';
	@override String get language => 'भाषा';
	@override String get licenses => 'लाइसेंस';
	@override String get google_play_games => 'Google Play गेम';
	@override String get loading => 'लोड हो रहा है…';
	@override String get creating_valid_game => 'वैध गेम बनाया जा रहा है...';
	@override String get connect => 'कनेक्ट हों';
	@override String get connecting => 'कनेक्ट हो रहा है…';
	@override String get disconnect => 'डिस्कनेक्ट करें';
	@override String get disconnected => 'डिस्कनेक्ट हुआ';
	@override String get new_game => 'नया गेम';
	@override String get share => 'शेयर करें';
	@override String get share_menu => 'शेयर करें…';
	@override String get no_network => 'कोई इंटरनेट कनेक्शन नहीं.';
	@override String get delete_all => 'सभी डिलीट करें';
	@override String get appearance => 'रूप-रंग';
	@override String get themes => 'थीम';
	@override String get delete_all_message => 'सभी इवेंट को स्थायी रूप से डिलीट करें.';
	@override String get remove_ad => 'प्रीमियम';
	@override String get help => 'Hint';
	@override String get back => 'वापस जाएं';
	@override String get donation => 'डोनेशन';
	@override String get open_on_game => 'गेम स्क्रीन पर खोलें';
	@override String get show_windows => 'विंडो दिखाएं';
	@override String get select_language => 'भाषा चुनें';
	@override String get switch_control => 'स्विच करें: फ्लैग करें और खोलें';
	@override String get switch_control_desc => 'फ्लैग करें और खोलें के बीच स्विच करने के लिए बटन का उपयोग करें';
	@override String get app_description => 'आपको एक आयताकार बोर्ड को साफ करना होगा जिसमें छिपी हुई माइन हैं, साथ ही उनमें से कोई भी विस्फोट न हो.';
	@override String get app_name => 'एंटीमाइन';
	@override String get do_you_know_how_to_play => 'क्या आप माइनस्वीपर खेलना जानते हैं?';
	@override String get close => 'बंद करे';
	@override String get open_tutorial => 'ट्यूटोरियल खोलें';
	@override String get click_numbers => 'नंबरों पर टैप करने दें';
	@override String get flag_when_tap_numbers => 'Flag when tap on numbers';
	@override String get tap_to_customize => 'कस्टमाइज़ करने के लिए टैप करें';
	@override String get no_guess_fail_warning => 'वर्तमान माइनफ़ील्ड अनुमान-मुक्त नहीं हो सकता है!';
	@override String get fixed_size => 'निर्धारित आकार';
	@override String get progressive => 'प्रोग्रेसिव';
	@override String get value_limit_min => 'Min is %d';
	@override String get value_limit_max => 'Max is %d';
	@override String get proportion_too_high => 'Proportion is too high!';
	@override String get highlight_unsolved_numbers => 'Highlight unsolved numbers';
	@override String get show_clock => 'घड़ी दिखाएँ';
	@override String get donate_request => 'अगर आपको यह खेल पसंद है, तो दान करने पर विचार करें।';
	@override String get donate_help => 'यह इस प्रोजैक्ट को सक्रिय रखने में मदद करेगा!';
	@override String get acra_toast_text => 'Sorry, an error occurred. Please, send the report to the developers.';
	@override String get immersive_mode => 'Immersive मोड';
	@override String get background_color => 'पृष्ठभूमि का रंग';
	@override String get main_color => 'मुख्य रंग';
	@override String get premium_exclusive => 'प्रीमियम विशेष!';
	@override String get preview => 'पूर्व दर्शन';
	@override String get shared_game => 'गेम साझा करें';
	@override String get shared_game_description => 'आपके साथ साझा किए गए माइनस्वीपर गेम का कोड यहां डालें।';
	@override String get code => 'कोड';
	@override String get image => 'चित्र';
	@override String get free => 'Free';
	@override String get restore_purchase => 'खरीदारी वापस लौटाएं';
}
