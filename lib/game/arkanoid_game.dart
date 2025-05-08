import 'dart:ui';
import 'package:ag_flutter_arkanoid/components/paddle/paddle.dart';
import 'package:ag_flutter_arkanoid/constants/colors.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import '../components/world/world_bounds.dart';
import '../constants/dimensions.dart';

class ArkanoidGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // Обновляем размеры мира под экран
    GameDimensions.updateDimensions(size);

    // Добавляем мир с новыми размерами
    world.add(WorldBounds());

    // Настраиваем камеру
    camera.viewfinder.visibleGameSize = Vector2(
      GameDimensions.levelWidth,
      GameDimensions.levelHeight,
    );
    camera.viewfinder.anchor = Anchor.center;
    camera.viewfinder.position = Vector2(
      GameDimensions.levelWidth / 2,
      GameDimensions.levelHeight / 2,
    );

    // Добавляем платформу
    world.add(
      Paddle()
        ..position = Vector2(
          GameDimensions.levelWidth / 2 - GameDimensions.paddleWidth / 2,
          GameDimensions.levelHeight - 50,
        ),
    );
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    // При изменении размера экрана пересчитываем
    GameDimensions.updateDimensions(size);
    camera.viewfinder.visibleGameSize = Vector2(
      GameDimensions.levelWidth,
      GameDimensions.levelHeight,
    );
  }

  @override
  Color backgroundColor() => GameColors.worldBackgroundColor;
}
