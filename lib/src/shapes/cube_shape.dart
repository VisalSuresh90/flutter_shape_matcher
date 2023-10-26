import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class CubeShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const CubeShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.5000000, size.height);
    path_0.lineTo(size.width * 0.05172414, size.height * 0.7758621);
    path_0.lineTo(size.width * 0.05172414, size.height * 0.2241379);
    path_0.lineTo(size.width * 0.5000000, size.height * 0.4482759);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color!.withOpacity(1);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5000000, size.height);
    path_1.lineTo(size.width * 0.9482759, size.height * 0.7758621);
    path_1.lineTo(size.width * 0.9482759, size.height * 0.2241379);
    path_1.lineTo(size.width * 0.5000000, size.height * 0.4482759);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color!.withOpacity(.75);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.05172414, size.height * 0.2241379);
    path_2.lineTo(size.width * 0.4827586, 0);
    path_2.lineTo(size.width * 0.9482759, size.height * 0.2241379);
    path_2.lineTo(size.width * 0.5000000, size.height * 0.4482759);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color!.withOpacity(.5);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
