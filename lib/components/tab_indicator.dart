import 'package:flutter/material.dart';

class TabIndicator extends Decoration {
  final Color color;
  const TabIndicator({required this.color});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _TabIndicatorPainter(color: color);
  }
}

class _TabIndicatorPainter extends BoxPainter {
  late Color color;
  _TabIndicatorPainter({required this.color});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint paint;
    paint = Paint()..color = color;
    paint = paint..isAntiAlias = true;
    paint = paint..strokeWidth = 2;

    canvas.drawLine(offset + Offset(1, cfg.size!.height),
        offset + Offset(cfg.size!.width / 3, cfg.size!.height), paint);
  }
}
