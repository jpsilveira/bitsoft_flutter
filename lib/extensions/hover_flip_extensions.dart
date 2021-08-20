import 'dart:math';

import 'package:flutter/material.dart';

class OnHover2 extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  final int xPos;
  final double yPos;
  final int millisecDuration;
  final double scaleSize;
  final double rotationDegrees;

  const OnHover2(
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

class _OnHoverState extends State<OnHover2>
    with SingleTickerProviderStateMixin {
  bool isHovered = false;
  //
  late AnimationController _animationController;
  late Animation _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(end: 1.0, begin: 0.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()
      ..setEntry(3, 2, 0.002)
      ..rotateX(pi * _animation.value);
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
