import 'package:equatable/equatable.dart';

class StartupState extends Equatable {
  const StartupState({
    required this.initialized,
    required this.openGameDirectly,
  });

  final bool initialized;
  final bool openGameDirectly;

  StartupState copyWith({
    bool? initialized,
    bool? openGameDirectly,
  }) {
    return StartupState(
      initialized: initialized ?? this.initialized,
      openGameDirectly: openGameDirectly ?? this.openGameDirectly,
    );
  }

  @override
  List<Object?> get props => [
        initialized,
        openGameDirectly,
      ];
}
