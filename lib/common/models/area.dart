import 'package:equatable/equatable.dart';

import 'form.dart';
import 'mark.dart';
import 'neighbours.dart';

/// An area is a square on the map.
class Area extends Equatable {
  final int id;
  final int x;
  final int y;
  final bool covered;
  final Mark mark;
  final bool hasMine;
  final bool revealed;
  final bool ignoreError;
  final int minesAround;
  final bool dimNumber;

  final Neighbours neighbours;
  final List<int> neighboursList;
  final Form? form;

  bool get isIgnoredMine => hasMine && ignoreError && !covered;

  bool get isSolved => mark.isFlag || isIgnoredMine;

  const Area({
    required this.id,
    required this.x,
    required this.y,
    this.mark = Mark.none,
    this.covered = false,
    this.hasMine = false,
    this.revealed = false,
    this.dimNumber = false,
    this.ignoreError = false,
    this.minesAround = 0,
    this.neighboursList = const <int>[],
    this.neighbours = const Neighbours(),
    this.form,
  });

  Area copyWith({
    int? id,
    int? x,
    int? y,
    Mark? mark,
    bool? covered,
    bool? hasMine,
    bool? ignoreError,
    int? minesAround,
    bool? revealed,
    bool? dimNumber,
    List<int>? neighboursList,
    Neighbours? neighbours,
    Form? form,
  }) {
    return Area(
      id: id ?? this.id,
      x: x ?? this.x,
      y: y ?? this.y,
      mark: mark ?? this.mark,
      covered: covered ?? this.covered,
      hasMine: hasMine ?? this.hasMine,
      revealed: revealed ?? this.revealed,
      dimNumber: dimNumber ?? this.dimNumber,
      ignoreError: ignoreError ?? this.ignoreError,
      minesAround: minesAround ?? this.minesAround,
      neighboursList: neighboursList ?? this.neighboursList,
      neighbours: neighbours ?? this.neighbours,
      form: form ?? this.form,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    id,
    x,
    y,
    mark,
    covered,
    hasMine,
    revealed,
    ignoreError,
    minesAround,
    neighbours,
    neighboursList,
    form,
  ];
}
