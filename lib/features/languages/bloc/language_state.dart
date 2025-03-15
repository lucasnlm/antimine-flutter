import 'package:equatable/equatable.dart';

import '../models/language_item.dart';

class LanguageState extends Equatable {
  const LanguageState({
    required this.loading,
    this.selected,
    this.languages = const [],
  });

  final bool loading;
  final String? selected;
  final List<LanguageItem> languages;

  LanguageState copyWith({
    bool? loading,
    String? selected,
    List<LanguageItem>? languages,
  }) {
    return LanguageState(
      loading: loading ?? this.loading,
      selected: selected ?? this.selected,
      languages: languages ?? this.languages,
    );
  }

  @override
  List<Object?> get props => [loading, selected, languages];
}
