import 'package:antimine/common/models/area.dart';

/// Filter the areas that have a mine.
bool hasMine(Area area) => area.hasMine;

/// Filter the areas that are covered.
bool isCovered(Area area) => area.covered;

/// Filter the areas that have a form.
bool hasForm(Area area) => area.form != null;

/// Filter the areas that have no form.
bool hasNoForm(Area area) => area.form == null;
