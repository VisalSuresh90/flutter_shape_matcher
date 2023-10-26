import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class SquareShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const SquareShape({Key? key, this.color = kGreenColor, this.size = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) => _widgetView();
  _widgetView() => SizedBox(
        child: CustomPaint(
          size: Size(size!, size!),
          painter: RPSCustomPainter(color: color),
        ),
      );
}

class RPSCustomPainter extends CustomPainter {
  final Color? color;

  RPSCustomPainter({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8166833, 0);
    path_0.lineTo(size.width * 0.1833167, 0);
    path_0.cubicTo(size.width * 0.08223333, 0, 0, size.height * 0.08223333, 0,
        size.height * 0.1833167);
    path_0.lineTo(0, size.height * 0.8167000);
    path_0.cubicTo(0, size.height * 0.9177667, size.width * 0.08223333,
        size.height, size.width * 0.1833167, size.height);
    path_0.lineTo(size.width * 0.8166833, size.height);
    path_0.cubicTo(size.width * 0.9177500, size.height, size.width,
        size.height * 0.9177667, size.width, size.height * 0.8166833);
    path_0.lineTo(size.width, size.height * 0.1833167);
    path_0.cubicTo(size.width, size.height * 0.08223333, size.width * 0.9177500,
        0, size.width * 0.8166833, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color!;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
