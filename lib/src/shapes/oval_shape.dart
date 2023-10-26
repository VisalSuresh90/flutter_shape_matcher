import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class OvalShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const OvalShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width, size.height * 0.5464374);
    path_0.cubicTo(
        size.width,
        size.height * 0.8225880,
        size.width * 0.7761354,
        size.height * 0.9534862,
        size.width * 0.5000153,
        size.height * 0.9534862);
    path_0.cubicTo(size.width * 0.2238646, size.height * 0.9534862, 0,
        size.height * 0.8225880, 0, size.height * 0.5464374);
    path_0.cubicTo(
        0,
        size.height * 0.2703173,
        size.width * 0.2238646,
        size.height * 0.04651376,
        size.width * 0.5000153,
        size.height * 0.04651376);
    path_0.cubicTo(size.width * 0.7761354, size.height * 0.04651376, size.width,
        size.height * 0.2703173, size.width, size.height * 0.5464374);
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
