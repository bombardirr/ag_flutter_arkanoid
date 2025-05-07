import 'dart:ui';
import 'package:ag_flutter_arkanoid/components/paddle/paddle.dart';
import 'package:ag_flutter_arkanoid/constants/colors.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import '../components/world/world_bounds.dart';

class ArkanoidGame extends FlameGame {

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // Добавляем границы мира (фон уровня)
    world.add(WorldBounds());

    camera.viewfinder.visibleGameSize = Vector2(WorldBounds.worldWidth, WorldBounds.worldHeight);
    camera.viewfinder.position = Vector2(
        WorldBounds.worldWidth / 2,
        WorldBounds.worldHeight / 2
    );
    camera.viewfinder.anchor = Anchor.center;

    // Остальные компоненты
    add(Paddle());
  }

  @override
  Color backgroundColor() => GameColors.worldBackground;
}