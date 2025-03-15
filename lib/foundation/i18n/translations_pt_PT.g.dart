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
class TranslationsPtPt extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsPtPt({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.ptPt,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <pt-PT>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsPtPt _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Tutorial';
  @override
  String get tutorial_basic =>
      'A regra do jogo é simples, o número em um quadrado mostra o número de minas adjacentes a ele e você tem que sinalizar todas as minas.';
  @override
  String get tutorial_text1 =>
      'Se um número está atingindo o mesmo número de quadrados, então os quadrados são todos as minas.';
  @override
  String get tutorial_text2 =>
      'Depois de marcares a tua primeira bandeira, verifica os números e analisa o próximo quadrado.';
  @override
  String get tutorial_text3 =>
      'Se um quadrado tem o mesmo número de bandeiras, todos os outros quadrados restantes adjacentes a este não são minas (seta verde).';
  @override
  String get tutorial_text4 =>
      'Verifica os números e continua a abrir os quadrados.';
  @override
  String get games => 'Jogos';
  @override
  String get tap_to_begin => 'Tocar para começar';
  @override
  String get previous_games => 'Jogos anteriores';
  @override
  String get minefield => 'Dificuldade';
  @override
  String get standard => 'Padrão';
  @override
  String get beginner => 'Iniciante';
  @override
  String get intermediate => 'Intermédio';
  @override
  String get expert => 'Perito';
  @override
  String get master => 'Mestre';
  @override
  String get legend => 'Lenda';
  @override
  String get open => 'Abrir';
  @override
  String get settings => 'Configurações';
  @override
  String get control_settings => 'Configurações de controlo';
  @override
  String get default_button => 'Botão padrão';
  @override
  String get shapes => 'Formas';
  @override
  String get animations => 'Animações';
  @override
  String get vibration => 'Resposta tátil';
  @override
  String get about => 'Sobre';
  @override
  String get quit => 'Sair';
  @override
  String get events => 'Estatísticas';
  @override
  String get custom => 'Personalizado';
  @override
  String get start => 'Começar';
  @override
  String get width => 'Largura';
  @override
  String get height => 'Altura';
  @override
  String get mines => 'Minas';
  @override
  String get seed => 'Semente';
  @override
  String get retry_sure =>
      'Se iniciares um novo jogo, o teu progresso atual será perdido.';
  @override
  String get show_licenses => 'Mostrar licenças';
  @override
  String get new_game_request => 'Queres começar um novo jogo?';
  @override
  String get mines_remaining => '%d minas';
  @override
  String get game_time => 'Tempo de jogo';
  @override
  String get settings_general => 'Geral';
  @override
  String get settings_gameplay => 'Jogabilidade';
  @override
  String get export_settings => 'Exportar';
  @override
  String get import_settings => 'Importar';
  @override
  String get exported_success => 'Configurações exportadas!';
  @override
  String get imported_success => 'Configurações importadas!';
  @override
  String get settings_accessibility => 'Acessibilidade';
  @override
  String get system => 'Sistema';
  @override
  String get sign_in_failed =>
      'Não foi possível fazer a autenticação. Por favor verifica a tua ligação à Internet e tenta de novo.';
  @override
  String get you_won => 'Ganhaste!';
  @override
  String get victories => 'Vitórias';
  @override
  String get you_lost => 'Perdeste!';
  @override
  String get you_finished => 'Terminaste!';
  @override
  String get defeats => 'Derrotas';
  @override
  String get generic_game_over => 'Boa sorte no teu próximo jogo.';
  @override
  String get generic_win => 'Encontraste %1\$d minas em %2\$d segundos.';
  @override
  String get fail_to_share => 'Falha ao partilhar';
  @override
  String get version_s => 'Versão %1\$s';
  @override
  String get sound_effects => 'Efeitos sonoros';
  @override
  String get music => 'Música';
  @override
  String get music_by => 'Música por %1\$s';
  @override
  String get check_music => 'Ouvir no Spotify…';
  @override
  String get selected => 'Selecionado';
  @override
  String get are_you_sure => 'Tens a certeza?';
  @override
  String get enable_automatic_flags =>
      'Ativar colocação automática de bandeiras';
  @override
  String get open_areas => 'Áreas abertas';
  @override
  String get total_time => 'Tempo total';
  @override
  String get average_time => 'Tempo médio';
  @override
  String get shortest_time => 'Menor tempo';
  @override
  String get performance => 'Desempenho';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => 'Usar ponto de interrogação';
  @override
  String get no_guessing_mode => 'Modo "sem adivinhação"';
  @override
  String get control => 'Controlos';
  @override
  String get control_types => 'Tipos de controlo';
  @override
  String get single_click => 'Toque único';
  @override
  String get double_click => 'Toque duplo';
  @override
  String get long_press => 'Toque longo';
  @override
  String get touch_sensibility => 'Sensibilidade tátil';
  @override
  String get open_tile => 'Abrir';
  @override
  String get flag_tile => 'Bandeira';
  @override
  String get retry => 'Tentar novamente';
  @override
  String get continue_game => 'Continuar';
  @override
  String get empty => 'Vazio';
  @override
  String get cant_do_it_now => 'Impossível fazer isso agora';
  @override
  String get mine_revealed => 'Uma mina foi revelada';
  @override
  String get fail_to_load_ad => 'Falha ao carregar anúncio';
  @override
  String get you_have_received => 'Recebeste: \$param1';
  @override
  String get help_win_a_game => 'Para mais dicas, tens de ganhar um jogo.';
  @override
  String get unknown_error => 'Erro desconhecido.';
  @override
  String get error => 'Erro!';
  @override
  String get leaderboards => 'Quadro de pontuações';
  @override
  String get cancel => 'Cancelar';
  @override
  String get resume => 'Continuar';
  @override
  String get yes => 'Sim';
  @override
  String get unlock => 'Desbloquear';
  @override
  String get unlock_all => 'Desbloquear tudo';
  @override
  String get achievements => 'Conquistas';
  @override
  String get no => 'Não';
  @override
  String get general => 'Geral';
  @override
  String get more => 'Mais';
  @override
  String get source_code => 'Código-fonte';
  @override
  String get translation => 'Tradução';
  @override
  String get language => 'Idioma';
  @override
  String get licenses => 'Licenças';
  @override
  String get google_play_games => 'Google Play Jogos';
  @override
  String get loading => 'A carregar…';
  @override
  String get creating_valid_game => 'A criar um jogo válido…';
  @override
  String get connect => 'Conectar';
  @override
  String get connecting => 'A conectar…';
  @override
  String get disconnect => 'Desconectar';
  @override
  String get disconnected => 'Desconectado';
  @override
  String get new_game => 'Novo jogo';
  @override
  String get share => 'Partilhar';
  @override
  String get share_menu => 'Partilhar…';
  @override
  String get no_network => 'Sem ligação à Internet.';
  @override
  String get delete_all => 'Apagar tudo';
  @override
  String get appearance => 'Aparência';
  @override
  String get themes => 'Temas';
  @override
  String get delete_all_message => 'Eliminar todos os eventos permanentemente.';
  @override
  String get remove_ad => 'Remover anúncios';
  @override
  String get help => 'Dica';
  @override
  String get back => 'Voltar';
  @override
  String get donation => 'Donativo';
  @override
  String get open_on_game => 'Abrir no ecrã do jogo';
  @override
  String get show_windows => 'Mostrar janelas';
  @override
  String get select_language => 'Selecionar idioma';
  @override
  String get switch_control => 'Alternador: Bandeira e Abrir';
  @override
  String get switch_control_desc =>
      'Usa o botão para alternar entre a Bandeira e Abrir';
  @override
  String get app_description =>
      'Tens de limpar um campo que contém minas escondidas sem detonar nenhuma delas.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => 'Sabes jogar Campo Minado?';
  @override
  String get close => 'Fechar';
  @override
  String get open_tutorial => 'Abrir tutorial';
  @override
  String get click_numbers => 'Permitir toque nos números';
  @override
  String get flag_when_tap_numbers => 'Colocar bandeira ao clicar nos números';
  @override
  String get tap_to_customize => 'Tocar para personalizar';
  @override
  String get no_guess_fail_warning =>
      'O campo minado atual pode não ser resolvido sem adivinhação!';
  @override
  String get fixed_size => 'Tamanho fixo';
  @override
  String get progressive => 'Progressivo';
  @override
  String get value_limit_min => 'Mínimo é %d';
  @override
  String get value_limit_max => 'Máximo é %d';
  @override
  String get proportion_too_high => 'A proporção é muito alta!';
  @override
  String get highlight_unsolved_numbers => 'Destacar números não resolvidos';
  @override
  String get show_clock => 'Mostrar Relógio';
  @override
  String get donate_request =>
      'Se você gosta deste jogo, considere fazer uma doação.';
  @override
  String get donate_help => 'Isso ajudará a manter este projeto ativo!';
  @override
  String get acra_toast_text =>
      'Desculpe, ocorreu um erro. Por favor, envie o relatório para os desenvolvedores.';
  @override
  String get immersive_mode => 'Modo imersivo';
  @override
  String get background_color => 'Cor de fundo';
  @override
  String get main_color => 'Cor principal';
  @override
  String get premium_exclusive => 'Exclusivo para premium!';
  @override
  String get preview => 'Pré-visualizar';
  @override
  String get shared_game => 'Jogo compartilhado';
  @override
  String get shared_game_description =>
      'Insira aqui o código de um jogo de Campo Minado compartilhado com você.';
  @override
  String get code => 'Código';
  @override
  String get image => 'Imagem';
  @override
  String get free => 'Grátis';
  @override
  String get restore_purchase => 'Restaurar compras';
}
