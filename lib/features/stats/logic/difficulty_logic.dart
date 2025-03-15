import '../../../common/models/difficulty.dart';
import '../../../common/models/stats.dart';

bool isCustom(Stats stats) {
  return stats.difficulty == Difficulty.custom;
}

bool isStandard(Stats stats) {
  return stats.difficulty == Difficulty.standard;
}

bool isFixedSize(Stats stats) {
  return stats.difficulty == Difficulty.fixedSize;
}

bool isLegend(Stats stats) {
  return stats.difficulty == Difficulty.legend;
}

bool isMaster(Stats stats) {
  return stats.difficulty == Difficulty.master;
}

bool isExpert(Stats stats) {
  return stats.difficulty == Difficulty.expert;
}

bool isIntermediate(Stats stats) {
  return stats.difficulty == Difficulty.intermediate;
}

bool isBeginner(Stats stats) {
  return stats.difficulty == Difficulty.beginner;
}
