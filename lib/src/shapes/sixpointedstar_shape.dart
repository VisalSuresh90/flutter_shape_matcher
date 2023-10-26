import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class SixPointedStarShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const SixPointedStarShape(
      {Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.5000000, 0);
    path_0.lineTo(size.width * 0.6437488, size.height * 0.2510243);
    path_0.lineTo(size.width * 0.9330106, size.height * 0.2500000);
    path_0.lineTo(size.width * 0.7874912, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.9330106, size.height * 0.7500000);
    path_0.lineTo(size.width * 0.6437488, size.height * 0.7489779);
    path_0.lineTo(size.width * 0.5000000, size.height);
    path_0.lineTo(size.width * 0.3562555, size.height * 0.7489779);
    path_0.lineTo(size.width * 0.06698941, size.height * 0.7500000);
    path_0.lineTo(size.width * 0.2125088, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.06698941, size.height * 0.2500000);
    path_0.lineTo(size.width * 0.3562555, size.height * 0.2510243);
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
