import 'dart:ui';

import 'package:flame/components.dart';
import '../../constants/colors.dart';

class WorldBounds extends RectangleComponent {
  static const double worldWidth = 400;
  static const double worldHeight = 600;

  WorldBounds() // Убрали параметр gameSize
      : super(
    size: Vector2(worldWidth, worldHeight),
    position: Vector2.zero(), // Начинаем с (0,0) - позиционирует камера
    paint: Paint()
      ..color = GameColors.worldBackground.withAlpha((0.3 * 255).toInt())
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0,
  ) {
    debugMode = true;
  }
}
