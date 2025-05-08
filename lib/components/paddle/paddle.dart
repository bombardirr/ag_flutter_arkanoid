import 'package:ag_flutter_arkanoid/constants/dimensions.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

class Paddle extends PositionComponent with DragCallbacks {
  final _paint = Paint();
  bool _isDragged = false;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    size = Vector2(GameDimensions.paddleWidth, GameDimensions.paddleHeight);
    position = Vector2(
      (GameDimensions.levelWidth - GameDimensions.paddleWidth) / 2,
      GameDimensions.levelHeight - 40, // Фиксированная позиция по Y
    );

    _paint
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
  }

  @override
  void onDragStart(DragStartEvent event) {
    super.onDragStart(event);
    _isDragged = true;
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    position.x = (position.x + event.localDelta.x).clamp(
      0,
      GameDimensions.levelWidth - size.x,
    );
  }

  @override
  void onDragEnd(DragEndEvent event) {
    super.onDragEnd(event);
    _isDragged = false;
  }

  @override
  void render(Canvas canvas) {
    _paint.color = _isDragged ? Colors.red : Colors.blue;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.x, size.y), _paint);
  }
}
