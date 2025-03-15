import 'package:go_router/go_router.dart';

import 'features/about/about_route.dart';
import 'features/controls/controls_route.dart';
import 'features/game/game_route.dart';
import 'features/game/screen/game_params.dart';
import 'features/history/history_route.dart';
import 'features/home/home_route.dart';
import 'features/languages/language_route.dart';
import 'features/settings/screen/settings_params.dart';
import 'features/settings/settings_route.dart';
import 'features/startup/startup_route.dart';
import 'features/stats/stats_route.dart';
import 'features/themes/themes_router.dart';
import 'features/tutorial/tutorial_route.dart';

class GameRouting {
  static get routeConfig {
    return GoRouter(
      initialLocation: GameRoutes.startUp,
      routes: [
        GoRoute(
          path: GameRoutes.startUp,
          builder: (_, __) => const StartupRoute(),
        ),
        GoRoute(
          path: GameRoutes.home,
          builder: (_, __) => const HomeRoute(),
        ),
        GoRoute(
          path: GameRoutes.game,
          builder: (_, state) {
            return GameRoute(
              params: GameParams.fromMap(
                state.extra,
              ),
            );
          },
        ),
        GoRoute(
          path: GameRoutes.stats,
          builder: (_, __) => const StatsRoute(),
        ),
        GoRoute(
          path: GameRoutes.tutorial,
          builder: (_, __) => const TutorialRoute(),
        ),
        GoRoute(
          path: GameRoutes.settings,
          builder: (_, state) => SettingsRoute(
            params: SettingsParams.fromMap(
              state.extra,
            ),
          ),
        ),
        GoRoute(
          path: GameRoutes.themes,
          builder: (_, __) => const ThemesRoute(),
        ),
        GoRoute(
          path: GameRoutes.controls,
          builder: (_, __) => const ControlsRoute(),
        ),
        GoRoute(
          path: GameRoutes.languages,
          builder: (_, __) => const LanguageRoute(),
        ),
        GoRoute(
          path: GameRoutes.about,
          builder: (_, __) => const AboutRoute(),
        ),
        GoRoute(
          path: GameRoutes.history,
          builder: (_, __) => const HistoryRoute(),
        ),
      ],
    );
  }
}

mixin GameRoutes {
  static const home = '/home';
  static const startUp = '/startup';
  static const tutorial = '/tutorial';
  static const game = '/game';
  static const settings = '/settings';
  static const themes = '/themes';
  static const controls = '/controls';
  static const stats = '/stats';
  static const languages = '/languages';
  static const about = '/about';
  static const history = '/history';
}
