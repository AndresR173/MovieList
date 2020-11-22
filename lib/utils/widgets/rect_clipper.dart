import 'package:flutter/material.dart';

class RectClipper extends CustomClipper<RRect> {
  final double radius;

  RectClipper({@required this.radius});

  @override
  RRect getClip(Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    return RRect.fromRectAndRadius(rect, Radius.circular(radius));
  }

  @override
  bool shouldReclip(covariant CustomClipper<RRect> oldClipper) {
    return false;
  }
}
