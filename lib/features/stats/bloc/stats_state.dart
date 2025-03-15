import 'package:equatable/equatable.dart';

import '../models/stats_board.dart';

class StatsState extends Equatable {
  const StatsState({required this.loading, required this.boards});

  final bool loading;
  final List<StatsBoard> boards;

  StatsState copyWith({bool? loading, List<StatsBoard>? boards}) {
    return StatsState(
      loading: loading ?? this.loading,
      boards: boards ?? this.boards,
    );
  }

  @override
  List<Object?> get props => [loading, boards];
}
