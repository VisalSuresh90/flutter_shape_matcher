import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class HeartShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const HeartShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width, size.height * 0.3729505);
    path_0.cubicTo(
        size.width,
        size.height * 0.4958829,
        size.width * 0.9323085,
        size.height * 0.5962255,
        size.width * 0.7930530,
        size.height * 0.6797216);
    path_0.cubicTo(
        size.width * 0.6173516,
        size.height * 0.7850707,
        size.width * 0.5310348,
        size.height * 0.9118948,
        size.width * 0.5301818,
        size.height * 0.9131646);
    path_0.cubicTo(
        size.width * 0.5234306,
        size.height * 0.9232260,
        size.width * 0.5121091,
        size.height * 0.9292600,
        size.width * 0.4999976,
        size.height * 0.9292600);
    path_0.cubicTo(
        size.width * 0.4878958,
        size.height * 0.9292600,
        size.width * 0.4765888,
        size.height * 0.9232357,
        size.width * 0.4698376,
        size.height * 0.9131986);
    path_0.cubicTo(
        size.width * 0.4685193,
        size.height * 0.9112454,
        size.width * 0.3812284,
        size.height * 0.7842177,
        size.width * 0.2069470,
        size.height * 0.6797216);
    path_0.cubicTo(size.width * 0.06769155, size.height * 0.5962255, 0,
        size.height * 0.4958780, 0, size.height * 0.3729505);
    path_0.cubicTo(
        0,
        size.height * 0.2264495,
        size.width * 0.09548158,
        size.height * 0.07074971,
        size.width * 0.2724285,
        size.height * 0.07074971);
    path_0.cubicTo(
        size.width * 0.3909602,
        size.height * 0.07074971,
        size.width * 0.4628101,
        size.height * 0.1232328,
        size.width * 0.5000024,
        size.height * 0.1625479);
    path_0.cubicTo(
        size.width * 0.5371947,
        size.height * 0.1232280,
        size.width * 0.6090446,
        size.height * 0.07074971,
        size.width * 0.7275763,
        size.height * 0.07074971);
    path_0.cubicTo(size.width * 0.9045233, size.height * 0.07074486, size.width,
        size.height * 0.2264495, size.width, size.height * 0.3729505);
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
