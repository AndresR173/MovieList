import 'package:flutter/material.dart';

class ClippedShadow extends StatelessWidget {
  final Shadow shadow;
  final CustomClipper clipper;
  final Widget child;

  const ClippedShadow({
    @required this.shadow,
    @required this.clipper,
    @required this.child,
  });

  Widget clipperWidget({Widget child}) {
    final clip = clipper;
    if (clip is CustomClipper<Path>) {
      return ClipPath(clipper: clip, child: child);
    } else {
      return ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(20),
        child: child,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ClipShadowPainter(
        clipper: clipper,
        shadow: shadow,
      ),
      child: clipperWidget(child: child),
    );
  }
}

class _ClipShadowPainter extends CustomPainter {
  final Shadow shadow;
  final CustomClipper clipper;
  final Offset shadowOffset;

  _ClipShadowPainter({
    @required this.shadow,
    @required this.clipper,
    this.shadowOffset = const Offset(2, 2),
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = shadow.toPaint();
    final pathOrRect = clipper.getClip(size).shift(shadowOffset);
    if (pathOrRect is Path) {
      canvas.drawPath(pathOrRect, paint);
    } else if (pathOrRect is RRect) {
      canvas.drawRRect(pathOrRect, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
