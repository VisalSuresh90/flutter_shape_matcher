import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class ConeShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const ConeShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.8326315, size.height * 0.9096668);
    path_0.lineTo(size.width * 0.5196945, size.height * 0.01258007);
    path_0.cubicTo(
        size.width * 0.5138113,
        size.height * -0.004193356,
        size.width * 0.4861476,
        size.height * -0.004193356,
        size.width * 0.4803055,
        size.height * 0.01258007);
    path_0.lineTo(size.width * 0.1673685, size.height * 0.9096668);
    path_0.cubicTo(
        size.width * 0.1665764,
        size.height * 0.9118789,
        size.width * 0.1662008,
        size.height * 0.9141731,
        size.width * 0.1662008,
        size.height * 0.9165514);
    path_0.cubicTo(
        size.width * 0.1662008,
        size.height * 0.9976647,
        size.width * 0.4658283,
        size.height * 1.000002,
        size.width * 0.5000010,
        size.height * 1.000002);
    path_0.cubicTo(
        size.width * 0.5341737,
        size.height * 1.000002,
        size.width * 0.8338011,
        size.height * 0.9976647,
        size.width * 0.8338011,
        size.height * 0.9165514);
    path_0.cubicTo(
        size.width * 0.8337992,
        size.height * 0.9142142,
        size.width * 0.8334236,
        size.height * 0.9118769,
        size.width * 0.8326315,
        size.height * 0.9096668);
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
