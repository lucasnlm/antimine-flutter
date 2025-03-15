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
class TranslationsFi extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <fi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsFi _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Johdanto';
	@override String get tutorial_basic => 'Pelin sääntö on yksinkertainen: ruudussa oleva numero kertoo sen vierellä olevien miinojen määrän, ja sinun täytyy merkitä kaikki miinat.';
	@override String get tutorial_text1 => 'Jos numero koskettaa samaa määrää ruutuja, ovat ne kaikki ruudut miinoja.';
	@override String get tutorial_text2 => 'Merkattuasi ensimmäisen lippusi, tarkista numerot ja analysoi seuraava ruutu.';
	@override String get tutorial_text3 => 'Jos ruudulla on sama määrä lippuja, kaikki muut jäljellä olevat ruudut sen vierellä eivät ole miinoja (vihreä nuoli).';
	@override String get tutorial_text4 => 'Tarkista numerot ja avaa neliöitä.';
	@override String get games => 'Pelit';
	@override String get tap_to_begin => 'Aloita napauttamalla';
	@override String get previous_games => 'Edelliset pelit';
	@override String get minefield => 'Vaikeustaso';
	@override String get standard => 'Normaali';
	@override String get beginner => 'Aloittelija';
	@override String get intermediate => 'Keskitaso';
	@override String get expert => 'Edistynyt';
	@override String get master => 'Mestari';
	@override String get legend => 'Legenda';
	@override String get open => 'Avaa';
	@override String get settings => 'Asetukset';
	@override String get control_settings => 'Ohjainasetukset';
	@override String get default_button => 'Oletuspainike';
	@override String get shapes => 'Muodot';
	@override String get animations => 'Animaatiot';
	@override String get vibration => 'Värinä';
	@override String get about => 'Tietoja';
	@override String get quit => 'Poistu';
	@override String get events => 'Tilastot';
	@override String get custom => 'Mukautettu';
	@override String get start => 'Aloita';
	@override String get width => 'Leveys';
	@override String get height => 'Korkeus';
	@override String get mines => 'Miinoja';
	@override String get seed => 'Siemen';
	@override String get retry_sure => 'Jos aloitat uuden pelin, nykyinen edistymisesi tyhjennetään.';
	@override String get show_licenses => 'Näytä lisenssit';
	@override String get new_game_request => 'Tahdotko aloittaa uuden pelin?';
	@override String get mines_remaining => '%d miinaa';
	@override String get game_time => 'Peliaika';
	@override String get settings_general => 'Yleiset';
	@override String get settings_gameplay => 'Pelattavuus';
	@override String get export_settings => 'Vie';
	@override String get import_settings => 'Tuo';
	@override String get exported_success => 'Asetukset viety!';
	@override String get imported_success => 'Asetukset tuotu!';
	@override String get settings_accessibility => 'Esteettömyys';
	@override String get system => 'Järjestelmä';
	@override String get sign_in_failed => 'Virhe kirjautuessa sisään. Tarkista verkkoyhteytesi ja yritä uudelleen.';
	@override String get you_won => 'Sinä voitit!';
	@override String get victories => 'Voittoja';
	@override String get you_lost => 'Hävisit!';
	@override String get you_finished => 'Olet valmis!';
	@override String get defeats => 'Tappioita';
	@override String get generic_game_over => 'Onnea seuraavaan peliisi.';
	@override String get generic_win => 'Löysit %1\$d miinaa %2\$d sekuntissa.';
	@override String get fail_to_share => 'Jakaminen epäonnistui';
	@override String get version_s => 'Versio %1\$s';
	@override String get sound_effects => 'Äänitehosteet';
	@override String get music => 'Musiikki';
	@override String get music_by => 'Musiikin tekijä: %1\$s';
	@override String get check_music => 'Kuuntele Spotifyssa…';
	@override String get selected => 'Valittu';
	@override String get are_you_sure => 'Oletko varma?';
	@override String get enable_automatic_flags => 'Kytke lippujen automaattinen asettaminen päälle';
	@override String get open_areas => 'Avaa alueita';
	@override String get total_time => 'Aika yhteensä';
	@override String get average_time => 'Keskimääräinen aika';
	@override String get shortest_time => 'Lyhin aika';
	@override String get performance => 'Suorituskyky';
	@override String get ok => 'OK';
	@override String get use_question_mark => 'Käytä kysymysmerkkiä';
	@override String get no_guessing_mode => '\'Ei arvausta\' -tilaa';
	@override String get control => 'Kontrollit';
	@override String get control_types => 'Ohjaintyypit';
	@override String get single_click => 'Yksi napautus';
	@override String get double_click => 'Kaksoisnapautus';
	@override String get long_press => 'Pitkä painallus';
	@override String get touch_sensibility => 'Kosketuksen herkkyys';
	@override String get open_tile => 'Avaa';
	@override String get flag_tile => 'Lippu';
	@override String get retry => 'Yritä uudelleen';
	@override String get continue_game => 'Jatka';
	@override String get empty => 'Tyhjä';
	@override String get cant_do_it_now => 'Ei mahdollista tehdä sitä nyt';
	@override String get mine_revealed => 'Miina on paljastettu';
	@override String get fail_to_load_ad => 'Mainoksen lataus epäonnistui';
	@override String get you_have_received => 'Olet saanut: \$param1';
	@override String get help_win_a_game => 'Saat enemmän vinkkejä, kun voitat pelin.';
	@override String get unknown_error => 'Tuntematon virhe.';
	@override String get error => 'Virhe!';
	@override String get leaderboards => 'Tulostaulukot';
	@override String get cancel => 'Peruuta';
	@override String get resume => 'Jatka';
	@override String get yes => 'Kyllä';
	@override String get unlock => 'Avaa';
	@override String get unlock_all => 'Avaa kaikki';
	@override String get achievements => 'Saavutukset';
	@override String get no => 'Ei';
	@override String get general => 'Yleiset';
	@override String get more => 'Lisää';
	@override String get source_code => 'Lähdekoodi';
	@override String get translation => 'Käännökset';
	@override String get language => 'Kieli';
	@override String get licenses => 'Lisenssit';
	@override String get google_play_games => 'Google Play Pelit';
	@override String get loading => 'Ladataan…';
	@override String get creating_valid_game => 'Luodaan sopivaa peliä…';
	@override String get connect => 'Yhdistä';
	@override String get connecting => 'Yhdistetään…';
	@override String get disconnect => 'Katkaise yhteys';
	@override String get disconnected => 'Yhteys katkaistu';
	@override String get new_game => 'Uusi peli';
	@override String get share => 'Jaa';
	@override String get share_menu => 'Jaa…';
	@override String get no_network => 'Ei Internet-yhteyttä.';
	@override String get delete_all => 'Poista kaikki';
	@override String get appearance => 'Ulkoasu';
	@override String get themes => 'Teemat';
	@override String get delete_all_message => 'Poistetaanko kaikki tapahtumat pysyvästi.';
	@override String get remove_ad => 'Poista Mainokset';
	@override String get help => 'Vihje';
	@override String get back => 'Takaisin';
	@override String get donation => 'Lahjoitus';
	@override String get open_on_game => 'Avaa pelinäytöllä';
	@override String get show_windows => 'Näytä ikkunoita';
	@override String get select_language => 'Valitse Kieli';
	@override String get switch_control => 'Vaihda: lippu ja avaa';
	@override String get switch_control_desc => 'Käytä painiketta vaihtaaksesi lipun ja avaamisen välillä';
	@override String get app_description => 'Sinun täytyy tyhjentää piileskeleviä miinoja sisältävä suorakulmainen taulu räjäyttämättä miinoja kertaakaan.';
	@override String get app_name => 'Antimine';
	@override String get do_you_know_how_to_play => 'Tiedätkö miten pelata miinanharavaa?';
	@override String get close => 'Sulje';
	@override String get open_tutorial => 'Avaa Johdanto';
	@override String get click_numbers => 'Salli numeroiden napauttaminen';
	@override String get flag_when_tap_numbers => 'Merkitse napauttaessasi numeroa';
	@override String get tap_to_customize => 'Paina mukauttaaksesi';
	@override String get no_guess_fail_warning => 'Nykyinen miinakenttä ei välttämättä ole arvattamaton!';
	@override String get fixed_size => 'Kiinteä koko';
	@override String get progressive => 'Edistyvä';
	@override String get value_limit_min => 'Min on %d';
	@override String get value_limit_max => 'Maksimi on %d';
	@override String get proportion_too_high => 'Osuus on liian korkea!';
	@override String get highlight_unsolved_numbers => 'Korosta ratkaisemattomat numerot';
	@override String get show_clock => 'Näytä kello';
	@override String get donate_request => 'Jos pidät pelistä, harkitse lahjoittamista.';
	@override String get donate_help => 'Se auttaisi pitämään tämän projektin aktiivisena!';
	@override String get acra_toast_text => 'Valitettavasti tapahtui virhe. Ole hyvä ja lähetä raportti kehittäjille.';
	@override String get immersive_mode => 'Kokoruututila';
	@override String get background_color => 'Taustaväri';
	@override String get main_color => 'Pääasiallinen väri';
	@override String get premium_exclusive => 'Premium poissulkeva!';
	@override String get preview => 'Esikatsele';
	@override String get shared_game => 'Jaettu peli';
	@override String get shared_game_description => 'Aseta tähän miinanraivaaja pelin koodi, joka on jaettu sinun kanssasi.';
	@override String get code => 'Koodi';
	@override String get image => 'Kuva';
	@override String get free => 'Vapaa';
	@override String get restore_purchase => 'Palauta ostokset';
}
