import 'dart:ui';
import 'package:ag_flutter_arkanoid/components/paddle/paddle.dart';
import 'package:ag_flutter_arkanoid/constants/colors.dart';
import 'package:flame/game.dart';
import '../components/world/world_bounds.dart';

class ArkanoidGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    // Добавляем границы мира (фон уровня)
    add(WorldBounds(gameSize: size));

    // Остальные компоненты
    add(Paddle());
  }

  @override
  Color backgroundColor() => GameColors.worldBackground;
}