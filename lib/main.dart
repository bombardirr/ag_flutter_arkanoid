import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:ag_flutter_arkanoid/game/arkanoid_game.dart';

void main() {
  runApp(const GameWidget.controlled(gameFactory: ArkanoidGame.new));
}