import 'dart:ui';

import 'package:flame/components.dart';
import '../../constants/colors.dart';

class WorldBounds extends RectangleComponent {
  static const double worldWidth = 200;
  static const double worldHeight = 300;

  WorldBounds({required Vector2 gameSize})
    : super(
        size: Vector2(worldWidth, worldHeight),
        position: Vector2(
          (gameSize.x - worldWidth) / 2, // Центрирование по X
          (gameSize.y - worldHeight) / 2, // Центрирование по Y
        ),
        paint:
            Paint()
              ..color = GameColors.worldBackground.withValues(
                alpha: 0.3 * 255, // Конвертируем opacity 0.3 в alpha (0-255)
              )
              ..style = PaintingStyle.stroke
              ..strokeWidth = 4.0,
      ) {
    debugMode = true;
  }

  @override
  void onGameResize(Vector2 size) {
    position = Vector2(
      (size.x - worldWidth) / 2,
      (size.y - worldHeight) / 2,
    );
    super.onGameResize(size);
  }
}
