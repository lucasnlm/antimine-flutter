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
class TranslationsPtBr extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsPtBr({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.ptBr,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <pt-BR>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsPtBr _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => 'Tutorial';
  @override
  String get tutorial_basic =>
      'É simples. O número de um quadrado mostra o número de minas adjacentes a ele. O objetivo é encontrar e sinalizar todas as minas. Se você tocar em uma mina, ela explode.';
  @override
  String get tutorial_text1 =>
      'Se um número está tocando o mesmo número de quadrados, então os quadrados são todos as minas.';
  @override
  String get tutorial_text2 =>
      'Depois de marcar sua primeira bandeira, revise os números e analise o próximo quadrado.';
  @override
  String get tutorial_text3 =>
      'Se um quadrado tem o mesmo número de bandeiras, todos os outros quadrados restantes adjacentes a ele não são minas (a seta verde).';
  @override
  String get tutorial_text4 =>
      'Revise os números e continue abrindo os quadrados.';
  @override
  String get games => 'Jogos';
  @override
  String get tap_to_begin => 'Toque para iniciar';
  @override
  String get previous_games => 'Jogos anteriores';
  @override
  String get minefield => 'Dificuldade';
  @override
  String get standard => 'Padrão';
  @override
  String get beginner => 'Iniciante';
  @override
  String get intermediate => 'Intermediário';
  @override
  String get expert => 'Especialista';
  @override
  String get master => 'Mestre';
  @override
  String get legend => 'Lenda';
  @override
  String get open => 'Abrir';
  @override
  String get settings => 'Preferências';
  @override
  String get control_settings => 'Configurações de Controle';
  @override
  String get default_button => 'Botão Padrão';
  @override
  String get shapes => 'Formas';
  @override
  String get animations => 'Animações';
  @override
  String get vibration => 'Feedback tátil';
  @override
  String get about => 'Sobre';
  @override
  String get quit => 'Sair';
  @override
  String get events => 'Estatísticas';
  @override
  String get custom => 'Personalizado';
  @override
  String get start => 'Iniciar';
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
      'Se você começar um novo jogo, o seu progresso atual será perdido.';
  @override
  String get show_licenses => 'Exibir Licenças';
  @override
  String get new_game_request => 'Você quer começar um novo jogo?';
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
      'Não foi possível conectar. Favor verificar sua conexão de rede e tente novamente.';
  @override
  String get you_won => 'Você venceu!';
  @override
  String get victories => 'Vitórias';
  @override
  String get you_lost => 'Você perdeu!';
  @override
  String get you_finished => 'Você terminou!';
  @override
  String get defeats => 'Derrotas';
  @override
  String get generic_game_over => 'Boa sorte no seu próximo jogo.';
  @override
  String get generic_win => 'Você encontrou %1\$d minas em %2\$d segundos.';
  @override
  String get fail_to_share => 'Falha ao compartilhar';
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
  String get are_you_sure => 'Tem certeza?';
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
  String get use_question_mark => 'Usar Ponto de Interrogação';
  @override
  String get no_guessing_mode => 'Modo "Sem adivinhação"';
  @override
  String get control => 'Controles';
  @override
  String get control_types => 'Tipo de Controle';
  @override
  String get single_click => 'Toque Único';
  @override
  String get double_click => 'Toque Duplo';
  @override
  String get long_press => 'Toque Longo';
  @override
  String get touch_sensibility => 'Sensibilidade ao Toque';
  @override
  String get open_tile => 'Abrir';
  @override
  String get flag_tile => 'Bandeira';
  @override
  String get retry => 'Tentar de novo';
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
  String get you_have_received => 'Você recebeu: \$param1';
  @override
  String get help_win_a_game => 'Para mais dicas, você deve ganhar um jogo.';
  @override
  String get unknown_error => 'Erro Desconhecido.';
  @override
  String get error => 'Erro!';
  @override
  String get leaderboards => 'Classificações';
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
  String get loading => 'Carregando…';
  @override
  String get creating_valid_game => 'Criando um jogo válido…';
  @override
  String get connect => 'Conectar';
  @override
  String get connecting => 'Conectando…';
  @override
  String get disconnect => 'Desconectar';
  @override
  String get disconnected => 'Desconectado';
  @override
  String get new_game => 'Novo Jogo';
  @override
  String get share => 'Compartilhar';
  @override
  String get share_menu => 'Compartilhar…';
  @override
  String get no_network => 'Sem conexão com a internet.';
  @override
  String get delete_all => 'Apagar tudo';
  @override
  String get appearance => 'Aparência';
  @override
  String get themes => 'Temas';
  @override
  String get delete_all_message => 'Apagar todos os eventos permanentemente.';
  @override
  String get remove_ad => 'Remover Propagandas';
  @override
  String get help => 'Dica';
  @override
  String get back => 'Voltar';
  @override
  String get donation => 'Doação';
  @override
  String get open_on_game => 'Abrir na tela do jogo';
  @override
  String get show_windows => 'Mostrar janelas';
  @override
  String get select_language => 'Selecionar Idioma';
  @override
  String get switch_control => 'Alternar: sinalizar e abrir';
  @override
  String get switch_control_desc =>
      'Usar um botão para alternar entre a Bandeira e Abrir';
  @override
  String get app_description =>
      'Você deve limpar um campo cheio de minas escondidas sem detonar nenhumas delas.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => 'Você sabe como jogar Campo Minado?';
  @override
  String get close => 'Fechar';
  @override
  String get open_tutorial => 'Abrir Tutorial';
  @override
  String get click_numbers => 'Permitir toque nos números';
  @override
  String get flag_when_tap_numbers => 'Bandeira ao clicar nos números';
  @override
  String get tap_to_customize => 'Toque para personalizar';
  @override
  String get no_guess_fail_warning =>
      'O campo minado atual pode não ser resolvido sem adivinhação!';
  @override
  String get fixed_size => 'Tamanho Fixo';
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
  String get immersive_mode => 'Modo Imersivo';
  @override
  String get background_color => 'Cor de Fundo';
  @override
  String get main_color => 'Cor Principal';
  @override
  String get premium_exclusive => 'Exclusivo Premium!';
  @override
  String get preview => 'Pré-visualizar';
  @override
  String get shared_game => 'Jogo compartilhado';
  @override
  String get shared_game_description =>
      'Insira aqui o código de um jogo de campo minado compartilhado com você.';
  @override
  String get code => 'Código';
  @override
  String get image => 'Imagem';
  @override
  String get free => 'Grátis';
  @override
  String get restore_purchase => 'Restaurar compras';
}
