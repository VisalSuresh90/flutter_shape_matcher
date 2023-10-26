import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class HeptagonShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const HeptagonShape({Key? key, this.color = kGreenColor, this.size = 50})
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

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  final Color? color;

  RPSCustomPainter({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4861875, size.height * 0.003250000);
    path_0.arcToPoint(Offset(size.width * 0.5138125, size.height * 0.003250000),
        radius: Radius.elliptical(
            size.width * 0.03125000, size.height * 0.03125000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.8897500, size.height * 0.1888750);
    path_0.arcToPoint(Offset(size.width * 0.9064375, size.height * 0.2101250),
        radius: Radius.elliptical(
            size.width * 0.03125000, size.height * 0.03125000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.9992500, size.height * 0.6273750);
    path_0.arcToPoint(Offset(size.width * 0.9934375, size.height * 0.6533125),
        radius: Radius.elliptical(
            size.width * 0.03125000, size.height * 0.03125000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.7333125, size.height * 0.9879375);
    path_0.arcToPoint(Offset(size.width * 0.7086250, size.height * 1.000000),
        radius: Radius.elliptical(
            size.width * 0.03125000, size.height * 0.03125000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.2913750, size.height * 1.000000);
    path_0.arcToPoint(Offset(size.width * 0.2666875, size.height * 0.9879375),
        radius: Radius.elliptical(
            size.width * 0.03125000, size.height * 0.03125000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.006562500, size.height * 0.6533125);
    path_0.arcToPoint(
        Offset(size.width * 0.0007500000, size.height * 0.6273750),
        radius: Radius.elliptical(
            size.width * 0.03125000, size.height * 0.03125000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.09356250, size.height * 0.2101250);
    path_0.arcToPoint(Offset(size.width * 0.1102500, size.height * 0.1888750),
        radius: Radius.elliptical(
            size.width * 0.03125000, size.height * 0.03125000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.4861875, size.height * 0.003312500);
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
