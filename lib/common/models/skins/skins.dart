import 'skin.dart';

class Skins {
  Skins._();

  static const Skin standard = Skin(
    id: 0,
    skin: 'standard.png',
    spritePreview: 'standard-preview.png',
    canTint: true,
    isPremium: false,
  );

  static const Skin square = Skin(
    id: 1,
    skin: 'square.png',
    spritePreview: 'square-preview.png',
  );

  static const Skin square2 = Skin(
    id: 2,
    skin: 'square-2.png',
    spritePreview: 'square-2-preview.png',
  );

  static const Skin classic = Skin(
    id: 3,
    skin: 'classic.png',
    spritePreview: 'classic-preview.png',
    connectAreas: false,
    canTint: false,
    fillBackground: true,
  );

  static const Skin classic2 = Skin(
    id: 4,
    skin: 'classic.png',
    spritePreview: 'classic-preview.png',
    connectAreas: false,
    canTint: true,
    fillBackground: true,
  );

  static const Skin glass = Skin(
    id: 6,
    skin: 'glass.png',
    spritePreview: 'glass-preview.png',
    connectAreas: false,
    canTint: true,
  );

  static const Skin stone = Skin(
    id: 7,
    skin: 'stone.png',
    spritePreview: 'stone-preview.png',
    connectAreas: false,
    canTint: true,
  );

  static const Skin stone2 = Skin(
    id: 8,
    skin: 'grass.png',
    spritePreview: 'grass-preview.png',
    connectAreas: true,
    canTint: false,
  );

  static List<Skin> all = [
    standard,
    square,
    square2,
    classic,
    classic2,
    glass,
    stone,
    stone2,
  ];
}
