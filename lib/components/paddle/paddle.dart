import 'package:ag_flutter_arkanoid/constants/dimensions.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Paddle extends PositionComponent {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    size = Vector2(GameDimensions.paddleWidth, GameDimensions.paddleHeight);
    position = Vector2(
      (GameDimensions.levelWidth - GameDimensions.paddleWidth) / 2,
      GameDimensions.levelHeight - 40,
    );
    add(
      RectangleComponent(
        size: size,
        paint:
            Paint()
              ..color = Colors.blue
              ..style = PaintingStyle.fill,
      ),
    );
  }
}
