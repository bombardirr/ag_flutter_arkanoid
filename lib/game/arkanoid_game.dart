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
    super.onLoad();

    final double verticalPadding = 100.0; // Отступ сверху и снизу

    // Границы мира (фон уровня)
    world.add(WorldBounds());

    camera.viewfinder.visibleGameSize = Vector2(
      GameDimensions.levelWidth + verticalPadding,
      GameDimensions.levelHeight + verticalPadding,
    );
    camera.viewfinder.zoom = 2;
    camera.viewfinder.position = Vector2(
      GameDimensions.levelWidth / 2,
      GameDimensions.levelHeight / 2,
    );
    camera.viewfinder.anchor = Anchor.center;

    world.add(Paddle());
  }

  @override
  Color backgroundColor() =>
      GameColors.worldBackgroundColor.withAlpha((0.3 * 255).toInt());
}
