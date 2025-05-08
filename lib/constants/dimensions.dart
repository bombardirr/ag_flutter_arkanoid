import 'package:flame/components.dart';

class GameDimensions {
  static double levelWidth = 400;
  static double levelHeight = 800;

  static const double paddleWidth = 100;
  static const double paddleHeight = 20;

  // Метод для расчета масштаба
  static void updateDimensions(Vector2 screenSize) {
    final targetRatio = levelWidth / levelHeight;
    final screenRatio = screenSize.x / screenSize.y;

    if (screenRatio > targetRatio) {
      // Широкий экран - масштабируем по высоте
      final scale = screenSize.y / levelHeight;
      levelWidth *= scale;
      levelHeight = screenSize.y;
    } else {
      // Узкий экран - масштабируем по ширине
      final scale = screenSize.x / levelWidth;
      levelWidth = screenSize.x;
      levelHeight *= scale;
    }
  }
}
