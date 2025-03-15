import 'package:equatable/equatable.dart';

import '../models/history_item.dart';

class HistoryState extends Equatable {
  const HistoryState({this.isLoading = false, this.historyItems = const []});

  final bool isLoading;
  final List<HistoryItem> historyItems;

  @override
  List<Object?> get props => [isLoading, historyItems];
}
