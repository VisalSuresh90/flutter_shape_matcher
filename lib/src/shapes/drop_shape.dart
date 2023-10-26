import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class DropShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const DropShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.8002607, size.height * 0.4021371);
    path_0.lineTo(size.width * 0.5000000, 0);
    path_0.lineTo(size.width * 0.1997393, size.height * 0.4021371);
    path_0.cubicTo(
        size.width * 0.1533191,
        size.height * 0.4645079,
        size.width * 0.1258427,
        size.height * 0.5418270,
        size.width * 0.1258427,
        size.height * 0.6255730);
    path_0.cubicTo(
        size.width * 0.1258427,
        size.height * 0.8323640,
        size.width * 0.2933596,
        size.height,
        size.width * 0.5000000,
        size.height);
    path_0.cubicTo(
        size.width * 0.7066404,
        size.height,
        size.width * 0.8741573,
        size.height * 0.8323640,
        size.width * 0.8741573,
        size.height * 0.6255730);
    path_0.cubicTo(
        size.width * 0.8741573,
        size.height * 0.5418270,
        size.width * 0.8466809,
        size.height * 0.4645079,
        size.width * 0.8002607,
        size.height * 0.4021371);
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
