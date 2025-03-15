import 'package:equatable/equatable.dart';

class LanguageItem extends Equatable {
  const LanguageItem({
    required this.name,
    required this.locale,
  });

  final String name;
  final String locale;

  @override
  List<Object?> get props => [
        name,
        locale,
      ];
}
