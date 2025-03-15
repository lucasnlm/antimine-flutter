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
class TranslationsIt extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsIt({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.it,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <it>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsIt _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Tutorial';
  @override
  String get tutorial_basic =>
      'Hai un\'unica regola da seguire: il numero della casella mostra la quantità di mine adiacenti a essa; dovrai segnalare tutte le mine.';
  @override
  String get tutorial_text1 =>
      'Se il numero è adiacente allo stesso numero di caselle ignote, allora quelle caselle saranno tutte mine.';
  @override
  String get tutorial_text2 =>
      'Dopo aver posizionato la prima bandiera, controlla i numeri e passa alla casella successiva.';
  @override
  String get tutorial_text3 =>
      'Se due caselle adiacenti hanno lo stesso numero di bandiere, allora tutte le altre caselle ignote non sono mine (vedi freccia verde).';
  @override
  String get tutorial_text4 =>
      'Controlla i numeri e continua ad aprire le caselle.';
  @override
  String get games => 'Giochi';
  @override
  String get tap_to_begin => 'Tocca per iniziare';
  @override
  String get previous_games => 'Partite Precedenti';
  @override
  String get minefield => 'Difficoltà';
  @override
  String get standard => 'Predefinito';
  @override
  String get beginner => 'Principiante';
  @override
  String get intermediate => 'Normale';
  @override
  String get expert => 'Esperto';
  @override
  String get master => 'Maestro';
  @override
  String get legend => 'Leggenda';
  @override
  String get open => 'Aprire';
  @override
  String get settings => 'Impostazioni';
  @override
  String get control_settings => 'Impostazioni dei comandi';
  @override
  String get default_button => 'Pulsante Predefinito';
  @override
  String get shapes => 'Forme';
  @override
  String get animations => 'Animazioni';
  @override
  String get vibration => 'Feedback tattile';
  @override
  String get about => 'Informazioni';
  @override
  String get quit => 'Esci';
  @override
  String get events => 'Statistiche';
  @override
  String get custom => 'Personalizza';
  @override
  String get start => 'Inizia';
  @override
  String get width => 'Larghezza';
  @override
  String get height => 'Altezza';
  @override
  String get mines => 'Mine';
  @override
  String get seed => 'Seme';
  @override
  String get retry_sure =>
      'Se inizi una nuova partita, i progressi attuali andranno persi.';
  @override
  String get show_licenses => 'Visualizza licenze';
  @override
  String get new_game_request => 'Vuoi iniziare una nuova partita?';
  @override
  String get mines_remaining => '%d mine';
  @override
  String get game_time => 'Tempo di gioco';
  @override
  String get settings_general => 'Generale';
  @override
  String get settings_gameplay => 'Gioco';
  @override
  String get export_settings => 'Esporta';
  @override
  String get import_settings => 'Importa';
  @override
  String get exported_success => 'Impostazioni esportate!';
  @override
  String get imported_success => 'Impostazioni importate!';
  @override
  String get settings_accessibility => 'Accessibilità';
  @override
  String get system => 'Sistema';
  @override
  String get sign_in_failed =>
      'Impossibile accedere. Controllare la connessione di rete e riprovare.';
  @override
  String get you_won => 'Hai vinto!';
  @override
  String get victories => 'Vittorie';
  @override
  String get you_lost => 'Hai perso!';
  @override
  String get you_finished => 'Hai finito!';
  @override
  String get defeats => 'Sconfitte';
  @override
  String get generic_game_over => 'Buona fortuna per la prossima partita!';
  @override
  String get generic_win => 'Hai trovato %1\$d mine in %2\$d secondi.';
  @override
  String get fail_to_share => 'Condivisione fallita';
  @override
  String get version_s => 'Versione %1\$s';
  @override
  String get sound_effects => 'Effetti Sonori';
  @override
  String get music => 'Musica';
  @override
  String get music_by => 'Musica di %1\$s';
  @override
  String get check_music => 'Ascolta su Spotify…';
  @override
  String get selected => 'Selezionato';
  @override
  String get are_you_sure => 'Sei sicuro?';
  @override
  String get enable_automatic_flags =>
      'Abilita il posizionamento automatico delle bandiere';
  @override
  String get open_areas => 'Aree Aperte';
  @override
  String get total_time => 'Tempo Totale';
  @override
  String get average_time => 'Durata Media';
  @override
  String get shortest_time => 'Tempo più breve';
  @override
  String get performance => 'Prestazione';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Usa il Punto Interrogativo';
  @override
  String get no_guessing_mode => 'Modalità "Senza predizione"';
  @override
  String get control => 'Comandi';
  @override
  String get control_types => 'Tipi di comandi';
  @override
  String get single_click => 'Singolo Tocco';
  @override
  String get double_click => 'Doppio Tocco';
  @override
  String get long_press => 'Tieni Premuto';
  @override
  String get touch_sensibility => 'Sensibilità tocco';
  @override
  String get open_tile => 'Apri';
  @override
  String get flag_tile => 'Bandiera';
  @override
  String get retry => 'Riprova';
  @override
  String get continue_game => 'Continua';
  @override
  String get empty => 'Vuoto';
  @override
  String get cant_do_it_now => 'Impossibile farlo ora';
  @override
  String get mine_revealed => 'Una mina è stata rivelata';
  @override
  String get fail_to_load_ad => 'Errore nel caricamento dell\'annuncio';
  @override
  String get you_have_received => 'Hai ricevuto: \$param1';
  @override
  String get help_win_a_game =>
      'Per ricevere altri suggerimenti devi prima vincere una partita.';
  @override
  String get unknown_error => 'Errore sconosciuto.';
  @override
  String get error => 'Errore!';
  @override
  String get leaderboards => 'Classifiche';
  @override
  String get cancel => 'Annulla';
  @override
  String get resume => 'Riprendi';
  @override
  String get yes => 'Sì';
  @override
  String get unlock => 'Sblocca';
  @override
  String get unlock_all => 'Sblocca tutto';
  @override
  String get achievements => 'Progressi';
  @override
  String get no => 'No';
  @override
  String get general => 'Generale';
  @override
  String get more => 'Altro';
  @override
  String get source_code => 'Codice sorgente';
  @override
  String get translation => 'Traduzione';
  @override
  String get language => 'Lingua';
  @override
  String get licenses => 'Licenze';
  @override
  String get google_play_games => 'Google Play Games';
  @override
  String get loading => 'Caricamento…';
  @override
  String get creating_valid_game => 'Creazione partita valida…';
  @override
  String get connect => 'Connetti';
  @override
  String get connecting => 'Connessione in corso…';
  @override
  String get disconnect => 'Disconnetti';
  @override
  String get disconnected => 'Disconnesso';
  @override
  String get new_game => 'Nuova partita';
  @override
  String get share => 'Condividi';
  @override
  String get share_menu => 'Condividi…';
  @override
  String get no_network => 'Nessuna connessione internet.';
  @override
  String get delete_all => 'Elimina tutti';
  @override
  String get appearance => 'Aspetto';
  @override
  String get themes => 'Temi';
  @override
  String get delete_all_message => 'Elimina tutti gli eventi permanentemente.';
  @override
  String get remove_ad => 'Rimuovi gli Annunci';
  @override
  String get help => 'Suggerimento';
  @override
  String get back => 'Indietro';
  @override
  String get donation => 'Donazione';
  @override
  String get open_on_game => 'Apri schermata di gioco';
  @override
  String get show_windows => 'Visualizza finestre';
  @override
  String get select_language => 'Seleziona Lingua';
  @override
  String get switch_control => 'Pulsante: Bandiera e Aperto';
  @override
  String get switch_control_desc =>
      'Usa il tasto per passare da Bandiera ad Apri';
  @override
  String get app_description =>
      'L\'obbiettivo del gioco è ripulire un campo rettangolare che contiene mine nascoste senza detonarne nessuna.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play =>
      'Conosci già le regole di Campo Minato?';
  @override
  String get close => 'Chiudi';
  @override
  String get open_tutorial => 'Apri Tutorial';
  @override
  String get click_numbers => 'Consenti tocco sui numeri';
  @override
  String get flag_when_tap_numbers => 'Contrassegna quando tocca i numeri';
  @override
  String get tap_to_customize => 'Tocca per modificare';
  @override
  String get no_guess_fail_warning =>
      'L\'attuale campo minato potrebbe non essere risolvibile senza indovinare!';
  @override
  String get fixed_size => 'Dimensione Fissa';
  @override
  String get progressive => 'Progressivo';
  @override
  String get value_limit_min => 'Min è %d';
  @override
  String get value_limit_max => 'Max è %d';
  @override
  String get proportion_too_high => 'La quota è troppo elevata!';
  @override
  String get highlight_unsolved_numbers => 'Evidenzia numeri non risolti';
  @override
  String get show_clock => 'Mostra orologio';
  @override
  String get donate_request =>
      'Se il gioco ti è piaciuto, supporta i creatori con una donazione.';
  @override
  String get donate_help => 'Contribuirai a mantenere il progetto attivo!';
  @override
  String get acra_toast_text =>
      'Siamo spiacenti, si è verificato un errore. Si prega di inviare il report agli sviluppatori.';
  @override
  String get immersive_mode => 'Modalità immersiva';
  @override
  String get background_color => 'Colore di sfondo';
  @override
  String get main_color => 'Colore principale';
  @override
  String get premium_exclusive => 'Premium esclusivo!';
  @override
  String get preview => 'Anteprima';
  @override
  String get shared_game => 'Condividi Gioco';
  @override
  String get shared_game_description =>
      'Inserisci qui il codice di un gioco minesweeper condiviso con te.';
  @override
  String get code => 'Codice';
  @override
  String get image => 'Immagine';
  @override
  String get free => 'Free';
  @override
  String get restore_purchase => 'Ripristina gli Acquisti';
}
