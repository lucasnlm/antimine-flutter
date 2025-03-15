import 'package:equatable/equatable.dart';

class Skin extends Equatable {
  final int id;
  final String skin;
  final String spritePreview;
  final bool canTint;
  final bool connectAreas;
  final bool isPremium;
  final bool fillBackground;

  const Skin({
    required this.id,
    required this.skin,
    required this.spritePreview,
    this.connectAreas = true,
    this.canTint = true,
    this.isPremium = true,
    this.fillBackground = false,
  });

  @override
  List<Object?> get props => [
    id,
    skin,
    spritePreview,
    connectAreas,
    canTint,
    isPremium,
    fillBackground,
  ];

  @override
  bool get stringify => true;
}
