import 'package:flutter/material.dart';

class LoginPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blueAccent;
    paint.style = PaintingStyle.fill;
    var path = Path()
      ..moveTo(size.width * 0.8, 0)
      ..lineTo(size.width, size.height * 0.1)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
    var path2 = Path()
      ..moveTo(0, size.height * 0.9)
      ..lineTo(size.width * 0.2, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
