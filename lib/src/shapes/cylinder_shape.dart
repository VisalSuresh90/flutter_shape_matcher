import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class CylinderShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const CylinderShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.1666660, size.height * 0.1521250);
    path_0.lineTo(size.width * 0.1666660, size.height * 0.9166660);
    path_0.cubicTo(
        size.width * 0.1666660,
        size.height * 0.9976660,
        size.width * 0.4659160,
        size.height,
        size.width * 0.5000000,
        size.height);
    path_0.cubicTo(
        size.width * 0.5340840,
        size.height,
        size.width * 0.8333340,
        size.height * 0.9976660,
        size.width * 0.8333340,
        size.height * 0.9166660);
    path_0.lineTo(size.width * 0.8333340, size.height * 0.1521250);
    path_0.cubicTo(
        size.width * 0.7777090,
        size.height * 0.1894160,
        size.width * 0.6664590,
        size.height * 0.2083340,
        size.width * 0.5000000,
        size.height * 0.2083340);
    path_0.cubicTo(
        size.width * 0.3335410,
        size.height * 0.2083340,
        size.width * 0.2223340,
        size.height * 0.1894160,
        size.width * 0.1666660,
        size.height * 0.1521250);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color!;
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5000000, size.height * 0.1666660);
    path_1.cubicTo(
        size.width * 0.7056250,
        size.height * 0.1666660,
        size.width * 0.8333340,
        size.height * 0.1347070,
        size.width * 0.8333340,
        size.height * 0.08333203);
    path_1.cubicTo(
        size.width * 0.8333340,
        size.height * 0.08016602,
        size.width * 0.8325430,
        size.height * 0.07724805,
        size.width * 0.8312500,
        size.height * 0.07458203);
    path_1.cubicTo(
        size.width * 0.8122500,
        size.height * 0.01004102,
        size.width * 0.5891660,
        size.height * 0.001291016,
        size.width * 0.5185410,
        size.height * 0.0001660156);
    path_1.cubicTo(size.width * 0.5123750, size.height * 0.0001250000,
        size.width * 0.5063340, 0, size.width * 0.5000000, 0);
    path_1.cubicTo(
        size.width * 0.4936660,
        0,
        size.width * 0.4876250,
        size.height * 0.0001250000,
        size.width * 0.4814160,
        size.height * 0.0001660156);
    path_1.cubicTo(
        size.width * 0.4107910,
        size.height * 0.001291016,
        size.width * 0.1877090,
        size.height * 0.01000000,
        size.width * 0.1687090,
        size.height * 0.07458398);
    path_1.cubicTo(
        size.width * 0.1674590,
        size.height * 0.07725000,
        size.width * 0.1666680,
        size.height * 0.08016797,
        size.width * 0.1666680,
        size.height * 0.08333398);
    path_1.cubicTo(
        size.width * 0.1666660,
        size.height * 0.1347090,
        size.width * 0.2943750,
        size.height * 0.1666660,
        size.width * 0.5000000,
        size.height * 0.1666660);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color!;
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
