import 'dart:ui';

import 'package:ag_flutter_arkanoid/constants/dimensions.dart';
import 'package:flame/components.dart';
import '../../constants/colors.dart';

class WorldBounds extends RectangleComponent {
  WorldBounds()
      : super(
    size: Vector2(GameDimensions.levelWidth, GameDimensions.levelHeight),
    position: Vector2.zero(), // Начинаем с (0,0) - позиционирует камера
    children: [
      // Фон (заливка)
      RectangleComponent(
        size: Vector2(GameDimensions.levelWidth, GameDimensions.levelHeight),
        paint: Paint()..color = GameColors.levelBackgroundColor.withAlpha((0.3 * 255).toInt()),
      ),
      // Обводка
      RectangleComponent(
        size: Vector2(GameDimensions.levelWidth, GameDimensions.levelHeight),
        paint: Paint()
          ..color = GameColors.levelStrokeColor.withAlpha((0.3 * 255).toInt())
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2.0,
      ),
    ],
  ) {
    debugMode = true;
  }
}
