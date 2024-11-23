import 'dart:async';
import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/material.dart';

class BackgroundTile extends ParallaxComponent {
  final String color;
  final double scrollSpeed;

  BackgroundTile({
    this.color = 'Blue',
    this.scrollSpeed = 30,
    Vector2? position,
  }) : super(
          position: position,
        );

  @override
  FutureOr<void> onLoad() async {
    priority = -10;

    parallax = await Parallax.load(
      [ParallaxImageData('Background/$color.png')],
      baseVelocity: Vector2(0, -scrollSpeed),
      repeat: ImageRepeat.repeat,
      fill: LayerFill.none,
    );

    return super.onLoad();
  }
}

