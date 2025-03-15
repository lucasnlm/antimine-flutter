import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'common/global/global_settings_bloc.dart';
import 'common/global/global_settings_state.dart';
import 'foundation/i18n/translations.g.dart';
import 'game_routing.dart';

class AntimineGame extends StatefulWidget {
  const AntimineGame({super.key});

  @override
  State<StatefulWidget> createState() {
    return AntimineGameState();
  }
}

class AntimineGameState extends State<AntimineGame> {
  late RouterConfig<Object> _routerConfig;

  @override
  void initState() {
    super.initState();
    _routerConfig = GameRouting.routeConfig;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalSettingsBloc, GlobalSettingsState>(
      builder: (context, state) {
        final locale = state.locale;
        final country = locale?.split('_').lastOrNull;
        if (locale != null) {
          LocaleSettings.setLocaleRaw(locale);
        }
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            systemNavigationBarDividerColor: Colors.transparent,
            systemNavigationBarIconBrightness:
                state.colorScheme.brightness == Brightness.light
                    ? Brightness.dark
                    : Brightness.light,
            statusBarColor: state.colorScheme.surface,
            systemNavigationBarColor: state.colorScheme.surface,
            // statusBarIconBrightness: state.colorScheme.brightness,
            // systemNavigationBarIconBrightness: state.colorScheme.brightness,
          ),
          child: MaterialApp.router(
            title: t.app_name,
            debugShowCheckedModeBanner: false,
            locale: locale != null ? Locale(locale, country) : null,
            theme: ThemeData(
              colorScheme: state.colorScheme,
              useMaterial3: true,
            ),
            supportedLocales: AppLocaleUtils.supportedLocales,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            routerConfig: _routerConfig,
          ),
        );
      },
    );
  }
}
