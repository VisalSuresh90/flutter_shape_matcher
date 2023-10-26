import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class HexagonShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const HexagonShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.9876401, size.height * 0.4538284);
    path_0.lineTo(size.width * 0.7837781, size.height * 0.1007778);
    path_0.cubicTo(
        size.width * 0.7672692,
        size.height * 0.07220303,
        size.width * 0.7368166,
        size.height * 0.05462586,
        size.width * 0.7038486,
        size.height * 0.05462586);
    path_0.lineTo(size.width * 0.2961432, size.height * 0.05462586);
    path_0.cubicTo(
        size.width * 0.2631772,
        size.height * 0.05462586,
        size.width * 0.2327329,
        size.height * 0.07220303,
        size.width * 0.2162116,
        size.height * 0.1007778);
    path_0.lineTo(size.width * 0.01236199, size.height * 0.4538284);
    path_0.cubicTo(
        size.width * -0.004119972,
        size.height * 0.4824011,
        size.width * -0.004119972,
        size.height * 0.5175637,
        size.width * 0.01236199,
        size.height * 0.5461406);
    path_0.lineTo(size.width * 0.2162116, size.height * 0.8992222);
    path_0.cubicTo(
        size.width * 0.2327329,
        size.height * 0.9277970,
        size.width * 0.2631772,
        size.height * 0.9453762,
        size.width * 0.2961432,
        size.height * 0.9453762);
    path_0.lineTo(size.width * 0.7038465, size.height * 0.9453762);
    path_0.cubicTo(
        size.width * 0.7368166,
        size.height * 0.9453762,
        size.width * 0.7672692,
        size.height * 0.9277970,
        size.width * 0.7837760,
        size.height * 0.8992222);
    path_0.lineTo(size.width * 0.9876401, size.height * 0.5461406);
    path_0.cubicTo(
        size.width * 1.004120,
        size.height * 0.5175637,
        size.width * 1.004120,
        size.height * 0.4824011,
        size.width * 0.9876401,
        size.height * 0.4538284);
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
