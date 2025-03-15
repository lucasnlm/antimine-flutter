import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/utils/build_context_ext.dart';
import '../../../foundation/i18n/translations.g.dart';
import '../../../foundation/ui/spacing.dart';
import '../bloc/language_bloc.dart';
import '../bloc/language_state.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(leading: const BackButton(), title: Text(t.language)),
          body: SafeArea(
            child: ListView.builder(
              itemCount: state.languages.length,
              itemBuilder: (context, index) {
                final current = state.languages[index];
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isTablet ? Spacing.x128 : Spacing.x8,
                  ),
                  child: ListTile(
                    leading: Radio<String>(
                      value: current.locale,
                      groupValue: state.selected,
                      onChanged: (value) {
                        if (value != null) {
                          context.read<LanguageBloc>().select(value);
                        }
                      },
                    ),
                    title: Text(current.name),
                    onTap: () {
                      context.read<LanguageBloc>().select(current.locale);
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
