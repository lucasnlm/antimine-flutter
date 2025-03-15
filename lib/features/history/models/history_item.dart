import 'package:equatable/equatable.dart';

import '../../../common/hash/game_hash.dart';
import '../../../common/models/file/save.dart';

class HistoryItem extends Equatable {
  const HistoryItem({required this.save, required this.hash});

  final SaveGame save;
  final GameHash hash;

  @override
  List<Object?> get props => [save, hash];
}
