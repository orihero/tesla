
import 'package:flutter/material.dart';

class HolePainter extends CustomPainter {
    HolePainter({@required this.color, @required this.holeSize});

    Color color;
    double holeSize;

    @override
    void paint(Canvas canvas, Size size) {
        double radius = holeSize / 2;
        Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
        Rect circle = Rect.fromCircle(
                center: Offset(size.width / 2, size.height / 2), radius: radius);
        Path hole = Path.combine(
            PathOperation.difference,
            Path()..addRect(rect),
            Path()
                ..addOval(circle)
                ..close(),
        );
        canvas.drawPath(hole, Paint()..color = color);
    }

    @override
    bool shouldRepaint(covariant CustomPainter oldDelegate) {
        return true;
    }
}
