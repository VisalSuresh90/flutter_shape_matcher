import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class DiamondShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const DiamondShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.8674130, size.height * 0.4749698);
    path_0.lineTo(size.width * 0.5337421, size.height * 0.01617258);
    path_0.cubicTo(
        size.width * 0.5180172,
        size.height * -0.005390208,
        size.width * 0.4819808,
        size.height * -0.005390208,
        size.width * 0.4662579,
        size.height * 0.01617258);
    path_0.lineTo(size.width * 0.1325870, size.height * 0.4749698);
    path_0.cubicTo(
        size.width * 0.1219923,
        size.height * 0.4896096,
        size.width * 0.1219923,
        size.height * 0.5093796,
        size.width * 0.1325870,
        size.height * 0.5240194);
    path_0.lineTo(size.width * 0.4662579, size.height * 0.9828166);
    path_0.cubicTo(
        size.width * 0.4741409,
        size.height * 0.9936186,
        size.width * 0.4866535,
        size.height * 1.000000,
        size.width * 0.5000010,
        size.height * 1.000000);
    path_0.cubicTo(
        size.width * 0.5133484,
        size.height * 1.000000,
        size.width * 0.5258611,
        size.height * 0.9936186,
        size.width * 0.5337440,
        size.height * 0.9828166);
    path_0.lineTo(size.width * 0.8674149, size.height * 0.5240194);
    path_0.cubicTo(
        size.width * 0.8780057,
        size.height * 0.5093796,
        size.width * 0.8780057,
        size.height * 0.4896096,
        size.width * 0.8674130,
        size.height * 0.4749698);
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
