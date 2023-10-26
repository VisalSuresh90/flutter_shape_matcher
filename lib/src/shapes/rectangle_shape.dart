import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class RectangleShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const RectangleShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.1250000, size.height * 0.02354167);
    path_0.lineTo(size.width * 0.7083333, size.height * 0.02354167);
    path_0.arcToPoint(Offset(size.width * 0.8333333, size.height * 0.1485417),
        radius:
            Radius.elliptical(size.width * 0.1250000, size.height * 0.1250000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.8333333, size.height * 0.5652083);
    path_0.arcToPoint(Offset(size.width * 0.7083333, size.height * 0.6902083),
        radius:
            Radius.elliptical(size.width * 0.1250000, size.height * 0.1250000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.1250000, size.height * 0.6902083);
    path_0.arcToPoint(Offset(0, size.height * 0.5652083),
        radius:
            Radius.elliptical(size.width * 0.1250000, size.height * 0.1250000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(0, size.height * 0.1485417);
    path_0.arcToPoint(Offset(size.width * 0.1250000, size.height * 0.02354167),
        radius:
            Radius.elliptical(size.width * 0.1250000, size.height * 0.1250000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
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
