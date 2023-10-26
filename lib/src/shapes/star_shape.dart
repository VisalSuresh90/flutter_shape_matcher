import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class StarShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const StarShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.9977754, size.height * 0.3839038);
    path_0.cubicTo(
        size.width * 0.9924259,
        size.height * 0.3674434,
        size.width * 0.9781992,
        size.height * 0.3554473,
        size.width * 0.9610750,
        size.height * 0.3529620);
    path_0.lineTo(size.width * 0.6706542, size.height * 0.3107667);
    path_0.lineTo(size.width * 0.5407708, size.height * 0.04757806);
    path_0.cubicTo(
        size.width * 0.5331119,
        size.height * 0.03206018,
        size.width * 0.5173061,
        size.height * 0.02223421,
        size.width * 0.5000030,
        size.height * 0.02223421);
    path_0.cubicTo(
        size.width * 0.4826970,
        size.height * 0.02223421,
        size.width * 0.4668912,
        size.height * 0.03206018,
        size.width * 0.4592353,
        size.height * 0.04757806);
    path_0.lineTo(size.width * 0.3293609, size.height * 0.3107637);
    path_0.lineTo(size.width * 0.03893108, size.height * 0.3529590);
    path_0.cubicTo(
        size.width * 0.02180686,
        size.height * 0.3554473,
        size.width * 0.007577089,
        size.height * 0.3674434,
        size.width * 0.002230695,
        size.height * 0.3839008);
    path_0.cubicTo(
        size.width * -0.003115699,
        size.height * 0.4003613,
        size.width * 0.001342660,
        size.height * 0.4184281,
        size.width * 0.01373575,
        size.height * 0.4305060);
    path_0.lineTo(size.width * 0.2238909, size.height * 0.6353359);
    path_0.lineTo(size.width * 0.1742609, size.height * 0.9246171);
    path_0.cubicTo(
        size.width * 0.1713362,
        size.height * 0.9416746,
        size.width * 0.1783465,
        size.height * 0.9589110,
        size.width * 0.1923459,
        size.height * 0.9690824);
    path_0.cubicTo(
        size.width * 0.2002655,
        size.height * 0.9748380,
        size.width * 0.2096459,
        size.height * 0.9777658,
        size.width * 0.2190718,
        size.height * 0.9777658);
    path_0.cubicTo(
        size.width * 0.2263064,
        size.height * 0.9777658,
        size.width * 0.2335714,
        size.height * 0.9760412,
        size.width * 0.2402240,
        size.height * 0.9725437);
    path_0.lineTo(size.width * 0.5000000, size.height * 0.8359772);
    path_0.lineTo(size.width * 0.7597729, size.height * 0.9725437);
    path_0.cubicTo(
        size.width * 0.7664650,
        size.height * 0.9760625,
        size.width * 0.7737936,
        size.height * 0.9777385,
        size.width * 0.7810524,
        size.height * 0.9777658);
    path_0.cubicTo(
        size.width * 0.8061326,
        size.height * 0.9777294,
        size.width * 0.8264513,
        size.height * 0.9573895,
        size.width * 0.8264513,
        size.height * 0.9323033);
    path_0.cubicTo(
        size.width * 0.8264513,
        size.height * 0.9288117,
        size.width * 0.8260573,
        size.height * 0.9254081,
        size.width * 0.8253117,
        size.height * 0.9221439);
    path_0.lineTo(size.width * 0.7761122, size.height * 0.6353389);
    path_0.lineTo(size.width * 0.9862673, size.height * 0.4305060);
    path_0.cubicTo(
        size.width * 0.9986634,
        size.height * 0.4184281,
        size.width * 1.003122,
        size.height * 0.4003613,
        size.width * 0.9977754,
        size.height * 0.3839038);
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
