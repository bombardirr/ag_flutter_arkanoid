import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class Paddle extends PositionComponent {
  @override
  Future<void> onLoad() async {
    super.onLoad();
    size = Vector2(150, 20);
    position = Vector2(size.x, size.y * 10);
    add(
      RectangleComponent(
        size: size,
        paint: Paint()..color = Colors.blue,
      ),
    );
  }
}