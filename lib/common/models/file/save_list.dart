import 'package:equatable/equatable.dart';

class SaveList extends Equatable {
  const SaveList({
    this.saves = const {},
  });

  final Set<String> saves;
  String? get current => saves.lastOrNull;

  bool get hasCurrent => current != null;

  SaveList copyWith({
    String? current,
    Set<String>? saves,
  }) {
    return SaveList(
      saves: saves ?? this.saves,
    );
  }

  @override
  List<Object?> get props => [
        current,
        saves,
      ];

  static get empty => const SaveList(
        saves: {},
      );
}
