import 'dart:ui';

import 'package:flame/components.dart';
import '../../constants/colors.dart';

class WorldBounds extends RectangleComponent {
  static const double worldWidth = 400;
  static const double worldHeight = 600;

  WorldBounds()
      : super(
    size: Vector2(worldWidth, worldHeight),
    position: Vector2.zero(), // Начинаем с (0,0) - позиционирует камера
    children: [
      // Фон (заливка)
      RectangleComponent(
        size: Vector2(worldWidth, worldHeight),
        paint: Paint()..color = GameColors.levelBackgroundColor.withAlpha((0.3 * 255).toInt()),
      ),
      // Обводка
      RectangleComponent(
        size: Vector2(worldWidth, worldHeight),
        paint: Paint()
          ..color = GameColors.strokeColor.withAlpha((0.3 * 255).toInt())
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.0,
      ),
    ],
  ) {
    debugMode = true;
  }
}
