import 'dart:math';

import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final int xPos;
  final double yPos;
  final int millisecDuration;
  final double scaleSize;
  final double rotationDegrees;

  const OnHover(
      {Key? key,
      required this.builder,
      this.xPos = 0,
      this.yPos = 0,
      this.millisecDuration = 300,
      this.scaleSize = 1,
      this.rotationDegrees = 0})
      : super(key: key);
  @override
  _OnHoverState createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()
      ..translate(widget.xPos, widget.yPos, 0)
      ..setRotationZ(widget.rotationDegrees * pi / 180)
      ..scale(widget.scaleSize);
    final transform = isHovered ? hovered : Matrix4.identity();

    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: widget.millisecDuration),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
