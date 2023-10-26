import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class PentagonShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const PentagonShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.4219125, size.height * 0.09244333);
    path_0.cubicTo(
        size.width * 0.4675667,
        size.height * 0.05592167,
        size.width * 0.5324333,
        size.height * 0.05592167,
        size.width * 0.5780875,
        size.height * 0.09244333);
    path_0.lineTo(size.width * 0.8960042, size.height * 0.3467758);
    path_0.cubicTo(
        size.width * 0.9378667,
        size.height * 0.3802654,
        size.width * 0.9537125,
        size.height * 0.4367208,
        size.width * 0.9353917,
        size.height * 0.4871042);
    path_0.lineTo(size.width * 0.8091042, size.height * 0.8343833);
    path_0.cubicTo(
        size.width * 0.7911417,
        size.height * 0.8837833,
        size.width * 0.7441958,
        size.height * 0.9166667,
        size.width * 0.6916333,
        size.height * 0.9166667);
    path_0.lineTo(size.width * 0.3083696, size.height * 0.9166667);
    path_0.cubicTo(
        size.width * 0.2558063,
        size.height * 0.9166667,
        size.width * 0.2088587,
        size.height * 0.8837833,
        size.width * 0.1908954,
        size.height * 0.8343833);
    path_0.lineTo(size.width * 0.06461125, size.height * 0.4871042);
    path_0.cubicTo(
        size.width * 0.04629042,
        size.height * 0.4367208,
        size.width * 0.06213625,
        size.height * 0.3802654,
        size.width * 0.1039983,
        size.height * 0.3467758);
    path_0.lineTo(size.width * 0.4219125, size.height * 0.09244333);
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
