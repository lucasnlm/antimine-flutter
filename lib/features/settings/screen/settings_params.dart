import 'package:equatable/equatable.dart';

class SettingsParams extends Equatable {
  const SettingsParams({this.backToGame = false});

  final bool backToGame;

  @override
  List<Object?> get props => [backToGame];

  Map<String, dynamic> toMap() {
    return {_backToGameKey: backToGame};
  }

  static SettingsParams fromMap(Object? object) {
    if (object is SettingsParams) {
      return object;
    } else if (object is Map<String, dynamic>) {
      return SettingsParams(backToGame: object[_backToGameKey] as bool);
    } else {
      return const SettingsParams();
    }
  }

  static const _backToGameKey = 'backToGame';
}
