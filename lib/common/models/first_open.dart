import 'dart:math';

import 'package:equatable/equatable.dart';

class FirstOpen extends Equatable {
  final int? initialId;

  FirstOpen({
    required int initialId,
  }) : initialId = max(-1, initialId);

  /// Is true before the first step or before this value be recorded.
  bool get isUnknown => initialId == null || initialId! < 0;

  /// Is true after the first step or after this value be recorded.
  bool get isNotUnknown => !isUnknown;

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        initialId,
      ];

  static final unknown = FirstOpen(
    initialId: unknownId,
  );

  static const unknownId = -1;
}
