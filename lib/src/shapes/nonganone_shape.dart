import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class NonganoneShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const NonganoneShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width * 0.2500115, size.height * 0.01975687);
    path_0.lineTo(0, size.height * 0.6354598);
    path_0.lineTo(size.width * 0.2500115, size.height * 0.8857705);
    path_0.lineTo(size.width * 0.4027623, size.height * 0.8857705);
    path_0.lineTo(size.width * 0.4972350, size.height * 0.9802431);
    path_0.lineTo(size.width * 0.5917046, size.height * 0.8857705);
    path_0.lineTo(size.width * 0.7500038, size.height * 0.8857705);
    path_0.lineTo(size.width, size.height * 0.6354598);
    path_0.lineTo(size.width * 0.7500038, size.height * 0.01975687);
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
