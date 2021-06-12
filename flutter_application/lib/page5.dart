import 'package:flutter/material.dart';

// Flutter Canvas
// source: https://codewithandrea.com/videos/flutter-custom-painting-do-not-fear-canvas/

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Charts"),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
        // Inner yellow container
        child: LayoutBuilder(
          // Inner yellow container
          builder: (_, constraints) => Container(
            width: constraints.widthConstraints().maxWidth,
            height: constraints.heightConstraints().maxHeight,
            color: Colors.yellow,
            child: CustomPaint(painter: FaceOutlinePainter()),
          ),
        ),
      ),
    );
  }
}

class FaceOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.indigo;

    // Eye brows
    canvas.drawLine(Offset(size.width * 0.06, size.height * 0.06),
        Offset(size.width * 0.27, size.height * 0.04), paint);

    // Left eye
    canvas.drawRect(
        Offset(size.width * 0.10, size.width * 0.20) &
            Size(size.width * 0.15, 80),
        paint);

    // Right eye
    canvas.drawOval(
      Rect.fromLTWH(size.width * 0.75, size.height * 0.2, 100, 50),
      paint,
    );

    // Nose
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.5), 20, paint);

    // Mouth
    final mouth = Path();
    mouth.moveTo(size.width * 0.8, size.height * 0.6);
    mouth.arcToPoint(
      Offset(size.width * 0.2, size.height * 0.6),
      radius: Radius.circular(150),
    );
    mouth.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.6),
      radius: Radius.circular(200),
      clockwise: false,
    );

    canvas.drawPath(mouth, paint);
  }

  @override
  bool shouldRepaint(FaceOutlinePainter oldDelegate) => false;
}
