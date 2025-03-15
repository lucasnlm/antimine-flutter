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
class TranslationsKo extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsKo({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta = TranslationMetadata(
         locale: AppLocale.ko,
         overrides: overrides ?? {},
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       ),
       super(
         cardinalResolver: cardinalResolver,
         ordinalResolver: ordinalResolver,
       );

  /// Metadata for the translations of <ko>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  late final TranslationsKo _root = this; // ignore: unused_field

  // Translations
  @override
  String get tutorial => '튜토리얼';
  @override
  String get tutorial_basic =>
      '게임의 규칙은 간단합니다. 네모 위의 숫자는 인접한 칸의 지뢰의 수를 보여주고, 지뢰가 있는 모든 칸에 깃발을 꽂아야 합니다.';
  @override
  String get tutorial_text1 =>
      '만약 숫자가 맞닿은 네모 칸의 수와 같다면, 그 칸들에는 모두 지뢰가 있는 것입니다.';
  @override
  String get tutorial_text2 => '처음 깃발을 꽂은 다음에는, 숫자를 다시 확인한 뒤 다음 칸을 찾아봅니다.';
  @override
  String get tutorial_text3 =>
      '네모의 숫자와 깃발의 수가 같다면, 그 네모와 인접한 나머지 칸(초록 화살표로 표시)에는 지뢰가 없습니다.';
  @override
  String get tutorial_text4 => '숫자를 재차 확인하면서 칸을 밝혀나가세요.';
  @override
  String get games => '게임';
  @override
  String get tap_to_begin => '시작하려면 탭하세요';
  @override
  String get previous_games => '이전 게임';
  @override
  String get minefield => '난이도';
  @override
  String get standard => '표준';
  @override
  String get beginner => '초급';
  @override
  String get intermediate => '중급';
  @override
  String get expert => '고급';
  @override
  String get master => '마스터';
  @override
  String get legend => '전설';
  @override
  String get open => '오픈';
  @override
  String get settings => '설정';
  @override
  String get control_settings => '조작 설정';
  @override
  String get default_button => '기본 버튼';
  @override
  String get shapes => '모양';
  @override
  String get animations => '애니메이션';
  @override
  String get vibration => '터치 시 진동';
  @override
  String get about => '앱 정보';
  @override
  String get quit => '나가기';
  @override
  String get events => '통계';
  @override
  String get custom => '사용자 지정';
  @override
  String get start => '시작';
  @override
  String get width => '가로';
  @override
  String get height => '세로';
  @override
  String get mines => '지뢰 수';
  @override
  String get seed => '시드';
  @override
  String get retry_sure => '새 게임을 시작하면 현재 진행 상황이 손실됩니다.';
  @override
  String get show_licenses => '저작권 표시';
  @override
  String get new_game_request => '새로운 게임을 시작하시겠습니까?';
  @override
  String get mines_remaining => '%d 개';
  @override
  String get game_time => '게임 시간';
  @override
  String get settings_general => '일반';
  @override
  String get settings_gameplay => '게임 플레이';
  @override
  String get export_settings => '내보내기';
  @override
  String get import_settings => '가져오기';
  @override
  String get exported_success => '설정을 내보냈습니다!';
  @override
  String get imported_success => '설정을 불러왔습니다!';
  @override
  String get settings_accessibility => '접근성';
  @override
  String get system => '시스템';
  @override
  String get sign_in_failed => '게임에 접속할 수 없습니다. 네트워크 환경을 확인해고 다시 접속해주세요.';
  @override
  String get you_won => '성공!';
  @override
  String get victories => '성공 횟수';
  @override
  String get you_lost => '실패!';
  @override
  String get you_finished => '끝났어!';
  @override
  String get defeats => '실패 횟수';
  @override
  String get generic_game_over => '다음 판에서는 잘하시길 빕니다.';
  @override
  String get generic_win => '%2\$d 초 동안 %1\$d 개의 지뢰을 찾았습니다.';
  @override
  String get fail_to_share => '공유 실패';
  @override
  String get version_s => '버전: %1\$s';
  @override
  String get sound_effects => '효과음';
  @override
  String get music => '음악';
  @override
  String get music_by => '음악 제공: %1\$s';
  @override
  String get check_music => 'Spotify에서 듣기…';
  @override
  String get selected => '선택함';
  @override
  String get are_you_sure => '계속하시겠습니까?';
  @override
  String get enable_automatic_flags => '자동으로 깃발 놓기 사용';
  @override
  String get open_areas => '칸 열기';
  @override
  String get total_time => '총 시간';
  @override
  String get average_time => '평균 시간';
  @override
  String get shortest_time => '더 짧은 시간';
  @override
  String get performance => '퍼포먼스';
  @override
  String get ok => 'OK';
  @override
  String get use_question_mark => '물음표 깃발 사용';
  @override
  String get no_guessing_mode => '\'추측 없음\' 모드';
  @override
  String get control => '컨트롤';
  @override
  String get control_types => '조작 유형';
  @override
  String get single_click => '한 번 누르기';
  @override
  String get double_click => '두 번 누르기';
  @override
  String get long_press => '길게 누르기';
  @override
  String get touch_sensibility => '터치 감도';
  @override
  String get open_tile => '칸 열기';
  @override
  String get flag_tile => '깃발 놓기';
  @override
  String get retry => '재시도';
  @override
  String get continue_game => '계속';
  @override
  String get empty => '비어있음';
  @override
  String get cant_do_it_now => '지금은 불가능한 작업입니다';
  @override
  String get mine_revealed => '지뢰가 드러났습니다';
  @override
  String get fail_to_load_ad => '광고 불러오기 실패';
  @override
  String get you_have_received => '당신은 받았습니다: \$param1';
  @override
  String get help_win_a_game => '더 많은 힌트를 받으려면 게임에서 승리해야 합니다.';
  @override
  String get unknown_error => '알 수 없는 오류';
  @override
  String get error => '오류!';
  @override
  String get leaderboards => '리더보드';
  @override
  String get cancel => '취소';
  @override
  String get resume => '계속하기';
  @override
  String get yes => '네';
  @override
  String get unlock => '잠금 해제';
  @override
  String get unlock_all => '모두 잠금 해제';
  @override
  String get achievements => '도전 과제';
  @override
  String get no => '아니오';
  @override
  String get general => '기본설정';
  @override
  String get more => '더보기';
  @override
  String get source_code => '소스 코드';
  @override
  String get translation => '번역';
  @override
  String get language => '언어';
  @override
  String get licenses => '라이선스';
  @override
  String get google_play_games => 'Google Play 게임';
  @override
  String get loading => '로딩중…';
  @override
  String get creating_valid_game => '유효한 게임 생성 중…';
  @override
  String get connect => '연결하기';
  @override
  String get connecting => '연결중…';
  @override
  String get disconnect => '연결 해제';
  @override
  String get disconnected => '연결 해제됨';
  @override
  String get new_game => '새 게임';
  @override
  String get share => '공유하기';
  @override
  String get share_menu => '…을 통해 공유하기';
  @override
  String get no_network => '인터넷에 연결되어 있지 않습니다.';
  @override
  String get delete_all => '모두 삭제';
  @override
  String get appearance => '모양새';
  @override
  String get themes => '테마 선택';
  @override
  String get delete_all_message => '모든 이벤트 알림을 영구히 삭제합니다.';
  @override
  String get remove_ad => '광고 제거';
  @override
  String get help => '힌트';
  @override
  String get back => '뒤로';
  @override
  String get donation => '공헌';
  @override
  String get open_on_game => '게임 화면에서 열기';
  @override
  String get show_windows => '진행상황 게이지 활성화';
  @override
  String get select_language => '언어 선택';
  @override
  String get switch_control => '전환: 깃발 놓기 및 열기';
  @override
  String get switch_control_desc => '버튼으로 깃발 놓기와 열기 전환';
  @override
  String get app_description =>
      '당신은 이 사각형 게임판에 숨겨진 지뢰를 하나도 터뜨리지 않고 게임을 끝내야 합니다.';
  @override
  String get app_name => 'Antimine';
  @override
  String get do_you_know_how_to_play => '지뢰찾기를 하는 방법을 아십니까?';
  @override
  String get close => '닫기';
  @override
  String get open_tutorial => '튜토리얼 열기';
  @override
  String get click_numbers => '숫자 누르기 허용';
  @override
  String get flag_when_tap_numbers => '숫자를 눌러 깃발 놓기';
  @override
  String get tap_to_customize => '눌러서 사용자 지정';
  @override
  String get no_guess_fail_warning => '현재 레벨은 추정 없이 깨지 못할 수도 있습니다!';
  @override
  String get fixed_size => '고정 크기';
  @override
  String get progressive => '프로그레시브';
  @override
  String get value_limit_min => '최소 %d';
  @override
  String get value_limit_max => '최대 %d';
  @override
  String get proportion_too_high => '비율이 너무 큽니다!';
  @override
  String get highlight_unsolved_numbers => '미해결 숫자 강조';
  @override
  String get show_clock => '시계 표시';
  @override
  String get donate_request => '이 게임이 좋으시다면, 후원을 고려해주세요.';
  @override
  String get donate_help => '프로젝트를 지속적으로 진행하는 데 도움이 됩니다!';
  @override
  String get acra_toast_text => '죄송합니다. 오류가 발생했습니다. 개발자에게 오류 보고서를 전송해주세요.';
  @override
  String get immersive_mode => '전체화면 모드';
  @override
  String get background_color => '배경 색상';
  @override
  String get main_color => '주 색상';
  @override
  String get premium_exclusive => '프리미엄 한정!';
  @override
  String get preview => '미리보기';
  @override
  String get shared_game => '공유한 게임';
  @override
  String get shared_game_description => '전달받은 지뢰찾기 게임의 코드를 여기에 입력하세요.';
  @override
  String get code => '코드';
  @override
  String get image => '이미지';
  @override
  String get free => '무료';
  @override
  String get restore_purchase => '구매 복구';
}
