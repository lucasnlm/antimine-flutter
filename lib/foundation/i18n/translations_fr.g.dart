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
class TranslationsFr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	late final TranslationsFr _root = this; // ignore: unused_field

	// Translations
	@override String get tutorial => 'Tutoriel';
	@override String get tutorial_basic => 'La règle du jeu est simple, le numéro sur un carré indique le nombre de mines adjacentes et vous devez marquer toutes les mines.';
	@override String get tutorial_text1 => 'Si un numéro touche le même nombre de carrés, alors les carrés sont tous des mines.';
	@override String get tutorial_text2 => 'Après avoir placé votre premier drapeau, examinez les numéros et analysez le carré suivant.';
	@override String get tutorial_text3 => 'Si un carré a le même nombre de drapeaux, tous les autres carrés restants adjacents ne sont pas des mines (la flèche verte).';
	@override String get tutorial_text4 => 'Examinez les numéros et gardez les cases ouvertes.';
	@override String get games => 'Jeux';
	@override String get tap_to_begin => 'Cliquer pour commencer';
	@override String get previous_games => 'Parties précédentes';
	@override String get minefield => 'Difficulté';
	@override String get standard => 'Standard';
	@override String get beginner => 'Facile';
	@override String get intermediate => 'Intermédiaire';
	@override String get expert => 'Difficile';
	@override String get master => 'Maître';
	@override String get legend => 'Légende';
	@override String get open => 'Ouvrir';
	@override String get settings => 'Réglages';
	@override String get control_settings => 'Paramètres de contrôle';
	@override String get default_button => 'Bouton par défaut';
	@override String get shapes => 'Formes';
	@override String get animations => 'Animations';
	@override String get vibration => 'Retour tactile';
	@override String get about => 'À propos';
	@override String get quit => 'Quitter';
	@override String get events => 'Statistiques';
	@override String get custom => 'Personnalisé';
	@override String get start => 'Commencer';
	@override String get width => 'Largeur';
	@override String get height => 'Hauteur';
	@override String get mines => 'Mines';
	@override String get seed => 'Graine';
	@override String get retry_sure => 'Si vous commencez une nouvelle partie,\nvotre progression actuelle sera perdue.';
	@override String get show_licenses => 'Afficher les licences';
	@override String get new_game_request => 'Voulez-vous commencer une nouvelle partie ?';
	@override String get mines_remaining => '%d mines';
	@override String get game_time => 'Temps de jeu';
	@override String get settings_general => 'Général';
	@override String get settings_gameplay => 'Jouabilité';
	@override String get export_settings => 'Exporter';
	@override String get import_settings => 'Importer';
	@override String get exported_success => 'Paramètres exportés !';
	@override String get imported_success => 'Paramètres importés !';
	@override String get settings_accessibility => 'Accessibilité';
	@override String get system => 'Système';
	@override String get sign_in_failed => 'Erreur lors de la connexion. Vérifiez l\'état de votre connexion Internet et réessayez.';
	@override String get you_won => 'Victoire !';
	@override String get victories => 'Victoires';
	@override String get you_lost => 'Défaite !';
	@override String get you_finished => 'Vous avez fini!';
	@override String get defeats => 'Défaites';
	@override String get generic_game_over => 'Bonne chance pour votre prochaine partie.';
	@override String get generic_win => 'Vous avez trouvé %1\$d mines en %2\$d secondes.';
	@override String get fail_to_share => 'Échec du partage';
	@override String get version_s => 'Version %1\$s';
	@override String get sound_effects => 'Effets sonores';
	@override String get music => 'Musique';
	@override String get music_by => 'Musique par %1\$s';
	@override String get check_music => 'Écouter sur Spotify…';
	@override String get selected => 'Sélectionné';
	@override String get are_you_sure => 'Êtes-vous sûr ?';
	@override String get enable_automatic_flags => 'Activer le placement automatique de drapeaux';
	@override String get open_areas => 'Zones ouvertes';
	@override String get total_time => 'Temps de jeu total';
	@override String get average_time => 'Temps de jeu moyen';
	@override String get shortest_time => 'Temps le plus court';
	@override String get performance => 'Performance';
	@override String get ok => 'OK';
	@override String get use_question_mark => 'Utiliser des drapeaux points d’interrogation';
	@override String get no_guessing_mode => 'Mode sans prédiction';
	@override String get control => 'Contrôles';
	@override String get control_types => 'Types de contrôles';
	@override String get single_click => 'Appui court';
	@override String get double_click => 'Appui Double';
	@override String get long_press => 'Appui Long';
	@override String get touch_sensibility => 'Sensibilité tactile';
	@override String get open_tile => 'Ouvrir';
	@override String get flag_tile => 'Drapeau';
	@override String get retry => 'Réessayer';
	@override String get continue_game => 'Continuer';
	@override String get empty => 'Vide';
	@override String get cant_do_it_now => 'Impossible de faire ça maintenant';
	@override String get mine_revealed => 'Une mine a été révélée';
	@override String get fail_to_load_ad => 'Échec du chargement de la publicité';
	@override String get you_have_received => 'Vous avez reçu : \$param1';
	@override String get help_win_a_game => 'Pour plus d\'indices, vous devez gagner une partie.';
	@override String get unknown_error => 'Erreur inconnue.';
	@override String get error => 'Erreur !';
	@override String get leaderboards => 'Classements';
	@override String get cancel => 'Annuler';
	@override String get resume => 'Continuer la partie';
	@override String get yes => 'Oui';
	@override String get unlock => 'Déverrouiller';
	@override String get unlock_all => 'Débloquer tout';
	@override String get achievements => 'Succès';
	@override String get no => 'Non';
	@override String get general => 'Général';
	@override String get more => 'Plus';
	@override String get source_code => 'Code source';
	@override String get translation => 'Traduction';
	@override String get language => 'Langue';
	@override String get licenses => 'Licences';
	@override String get google_play_games => 'Google Play Games';
	@override String get loading => 'Chargement…';
	@override String get creating_valid_game => 'Création d\'une partie valide…';
	@override String get connect => 'Connexion';
	@override String get connecting => 'Connexion en cours…';
	@override String get disconnect => 'Déconnexion';
	@override String get disconnected => 'Deconnecté';
	@override String get new_game => 'Nouvelle partie';
	@override String get share => 'Partager';
	@override String get share_menu => 'Partager…';
	@override String get no_network => 'Pas de connexion Internet.';
	@override String get delete_all => 'Supprimer tout';
	@override String get appearance => 'Apparence';
	@override String get themes => 'Thèmes';
	@override String get delete_all_message => 'Supprimer définitivement tous les événements.';
	@override String get remove_ad => 'Supprimer les publicités';
	@override String get help => 'Indice';
	@override String get back => 'Retour';
	@override String get donation => 'Faire un don';
	@override String get open_on_game => 'Ouvrir dans l\'écran de jeu';
	@override String get show_windows => 'Afficher les fenêtres';
	@override String get select_language => 'Sélectionner la langue';
	@override String get switch_control => 'Commutateur : Drapeau et Ouvrir';
	@override String get switch_control_desc => 'Utiliser le bouton pour basculer entre Drapeau et Ouvrir';
	@override String get app_description => 'Vous devez vider un tableau rectangulaire contenant des mines cachées sans en détonner.';
	@override String get app_name => 'Anti-Mine';
	@override String get do_you_know_how_to_play => 'Savez-vous comment jouer au Démineur ?';
	@override String get close => 'Fermer';
	@override String get open_tutorial => 'Ouvrir le tutoriel';
	@override String get click_numbers => 'Permettre de cliquer sur les numéros';
	@override String get flag_when_tap_numbers => 'Placer un drapeau quand on clique sur des numéros';
	@override String get tap_to_customize => 'Appuyer pour personnaliser';
	@override String get no_guess_fail_warning => 'Le champ de mines actuel ne peut pas être résolu sans deviner !';
	@override String get fixed_size => 'Taille fixe';
	@override String get progressive => 'Progressif';
	@override String get value_limit_min => 'Le minimum est %d';
	@override String get value_limit_max => 'Le maximum est %d';
	@override String get proportion_too_high => 'La proportion est trop élevée !';
	@override String get highlight_unsolved_numbers => 'Mettre en évidence les nombres non résolus';
	@override String get show_clock => 'Afficher l’horloge';
	@override String get donate_request => 'Si vous appréciez ce jeu, pensez à faire un don.';
	@override String get donate_help => 'Cela aidera à maintenir ce projet actif !';
	@override String get acra_toast_text => 'Désolé, une erreur s\'est produite. S\'il vous plaît, envoyez le rapport aux développeurs.';
	@override String get immersive_mode => 'Mode immersif';
	@override String get background_color => 'Couleur d\'arrière-plan';
	@override String get main_color => 'Couleur principale';
	@override String get premium_exclusive => 'Exclusivité premium !';
	@override String get preview => 'Aperçu';
	@override String get shared_game => 'Partie partagée';
	@override String get shared_game_description => 'Insérez ici le code d\'un jeu de minesweeper partagé avec vous.';
	@override String get code => 'Code';
	@override String get image => 'Image';
	@override String get free => 'Gratuit';
	@override String get restore_purchase => 'Restaurer les achats';
}
