import 'package:flutter/material.dart';

import 'clipped_shadow.dart';
import 'rect_clipper.dart';

class RoundedCard extends StatelessWidget {
  final Widget child;
  final CustomClipper clipper;

  const RoundedCard({
    Key key,
    this.child,
    this.clipper,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClippedShadow(
      clipper: clipper ?? RectClipper(radius: 20),
      shadow: Shadow(
        color: Colors.black.withOpacity(0.1),
        offset: const Offset(3.0, 3.0),
        blurRadius: 4,
      ),
      child: child,
    );
    //)
  }
}
