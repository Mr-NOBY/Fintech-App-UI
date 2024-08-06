import 'dart:ui';

import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            painter: DashRectPainter(),
            child: Container(
              width: 30,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add_circle),
            color: const Color.fromRGBO(36, 36, 36, 1),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class DashRectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3 // Thicker stroke width
      ..style = PaintingStyle.stroke;

    double dashWidth = 12, dashSpace = 5;

    Path path = Path();

    // Create a rounded rectangle path
    final roundedRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height), const Radius.circular(8));
    path.addRRect(roundedRect);

    // Create dashed border
    path = createDashedPath(path, dashWidth, dashSpace);

    canvas.drawPath(path, paint);
  }

  Path createDashedPath(Path originalPath, double dashWidth, double dashSpace) {
    final Path path = Path();
    double distance = 0.0;
    for (PathMetric measurePath in originalPath.computeMetrics()) {
      while (distance < measurePath.length) {
        final double nextDistance = distance + dashWidth;
        path.addPath(
          measurePath.extractPath(distance, nextDistance),
          Offset.zero,
        );
        distance = nextDistance + dashSpace;
      }
    }
    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
