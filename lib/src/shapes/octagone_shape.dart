import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class OctagoneShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const OctagoneShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.4681083, size.height * 0.05487625);
    path_0.cubicTo(
        size.width * 0.4885292,
        size.height * 0.04641833,
        size.width * 0.5114708,
        size.height * 0.04641833,
        size.width * 0.5318917,
        size.height * 0.05487625);
    path_0.lineTo(size.width * 0.7922000, size.height * 0.1627000);
    path_0.cubicTo(
        size.width * 0.8126208,
        size.height * 0.1711579,
        size.width * 0.8288417,
        size.height * 0.1873808,
        size.width * 0.8373000,
        size.height * 0.2077996);
    path_0.lineTo(size.width * 0.9451250, size.height * 0.4681083);
    path_0.cubicTo(
        size.width * 0.9535833,
        size.height * 0.4885292,
        size.width * 0.9535833,
        size.height * 0.5114708,
        size.width * 0.9451250,
        size.height * 0.5318917);
    path_0.lineTo(size.width * 0.8373000, size.height * 0.7922000);
    path_0.cubicTo(
        size.width * 0.8288417,
        size.height * 0.8126208,
        size.width * 0.8126208,
        size.height * 0.8288417,
        size.width * 0.7922000,
        size.height * 0.8373000);
    path_0.lineTo(size.width * 0.5318917, size.height * 0.9451250);
    path_0.cubicTo(
        size.width * 0.5114708,
        size.height * 0.9535833,
        size.width * 0.4885292,
        size.height * 0.9535833,
        size.width * 0.4681083,
        size.height * 0.9451250);
    path_0.lineTo(size.width * 0.2077996, size.height * 0.8373000);
    path_0.cubicTo(
        size.width * 0.1873808,
        size.height * 0.8288417,
        size.width * 0.1711579,
        size.height * 0.8126208,
        size.width * 0.1627000,
        size.height * 0.7922000);
    path_0.lineTo(size.width * 0.05487625, size.height * 0.5318917);
    path_0.cubicTo(
        size.width * 0.04641833,
        size.height * 0.5114708,
        size.width * 0.04641833,
        size.height * 0.4885292,
        size.width * 0.05487625,
        size.height * 0.4681083);
    path_0.lineTo(size.width * 0.1627000, size.height * 0.2077996);
    path_0.cubicTo(
        size.width * 0.1711579,
        size.height * 0.1873808,
        size.width * 0.1873808,
        size.height * 0.1711579,
        size.width * 0.2077996,
        size.height * 0.1627000);
    path_0.lineTo(size.width * 0.4681083, size.height * 0.05487625);
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
