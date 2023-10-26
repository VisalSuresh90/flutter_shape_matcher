import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class BalloonShape extends StatelessWidget {
  final Color? color;
  final double? size;
  final Widget? child;
  const BalloonShape({
    Key? key,
    this.color = kGreenColor,
    this.size = 50,
    this.child = const Text(''),
  }) : super(key: key);

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
    path_0.moveTo(size.width * 0.5000000, 0);
    path_0.cubicTo(
        size.width * 0.3242734,
        0,
        size.width * 0.1818184,
        size.height * 0.1424551,
        size.width * 0.1818184,
        size.height * 0.3181816);
    path_0.cubicTo(
        size.width * 0.1818184,
        size.height * 0.5566680,
        size.width * 0.3242734,
        size.height * 0.7500000,
        size.width * 0.5000000,
        size.height * 0.7500000);
    path_0.cubicTo(
        size.width * 0.6757266,
        size.height * 0.7500000,
        size.width * 0.8181816,
        size.height * 0.5566680,
        size.width * 0.8181816,
        size.height * 0.3181816);
    path_0.cubicTo(size.width * 0.8181816, size.height * 0.1424551,
        size.width * 0.6757266, 0, size.width * 0.5000000, 0);
    path_0.close();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.1704551);
    path_0.cubicTo(
        size.width * 0.4185430,
        size.height * 0.1704551,
        size.width * 0.3522734,
        size.height * 0.2367246,
        size.width * 0.3522734,
        size.height * 0.3181816);
    path_0.lineTo(size.width * 0.2840918, size.height * 0.3181816);
    path_0.cubicTo(
        size.width * 0.2840918,
        size.height * 0.1991289,
        size.width * 0.3809492,
        size.height * 0.1022734,
        size.width * 0.5000000,
        size.height * 0.1022734);
    path_0.lineTo(size.width * 0.5000000, size.height * 0.1704551);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color!;
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5585957, size.height * 0.8125469);
    path_1.cubicTo(
        size.width * 0.5393574,
        size.height * 0.8162773,
        size.width * 0.5198066,
        size.height * 0.8181816,
        size.width * 0.5000000,
        size.height * 0.8181816);
    path_1.cubicTo(
        size.width * 0.4890254,
        size.height * 0.8181816,
        size.width * 0.4781289,
        size.height * 0.8175801,
        size.width * 0.4673203,
        size.height * 0.8164316);
    path_1.cubicTo(
        size.width * 0.4742480,
        size.height * 0.8247187,
        size.width * 0.4817109,
        size.height * 0.8315625,
        size.width * 0.4883262,
        size.height * 0.8376289);
    path_1.cubicTo(
        size.width * 0.5047129,
        size.height * 0.8526523,
        size.width * 0.5113633,
        size.height * 0.8593691,
        size.width * 0.5113633,
        size.height * 0.8750000);
    path_1.cubicTo(
        size.width * 0.5113633,
        size.height * 0.8906309,
        size.width * 0.5047129,
        size.height * 0.8973477,
        size.width * 0.4883262,
        size.height * 0.9123711);
    path_1.cubicTo(
        size.width * 0.4692734,
        size.height * 0.9298340,
        size.width * 0.4431816,
        size.height * 0.9537539,
        size.width * 0.4431816,
        size.height);
    path_1.lineTo(size.width * 0.5113633, size.height);
    path_1.cubicTo(
        size.width * 0.5113633,
        size.height * 0.9843711,
        size.width * 0.5180137,
        size.height * 0.9776523,
        size.width * 0.5344004,
        size.height * 0.9626289);
    path_1.cubicTo(
        size.width * 0.5534531,
        size.height * 0.9451660,
        size.width * 0.5795469,
        size.height * 0.9212461,
        size.width * 0.5795469,
        size.height * 0.8750000);
    path_1.cubicTo(
        size.width * 0.5795449,
        size.height * 0.8473145,
        size.width * 0.5701914,
        size.height * 0.8276348,
        size.width * 0.5585957,
        size.height * 0.8125469);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = kWhiteColor.withOpacity(.75);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
