import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/constants/styles.dart';

class CrossShape extends StatelessWidget {
  final Color? color;
  final double? size;
  const CrossShape({Key? key, this.color = kGreenColor, this.size = 50})
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
    path_0.moveTo(size.width, size.height * 0.3716985);
    path_0.lineTo(size.width * 0.6283015, size.height * 0.3716985);
    path_0.lineTo(size.width * 0.6283015, 0);
    path_0.lineTo(size.width * 0.3716985, 0);
    path_0.lineTo(size.width * 0.3716985, size.height * 0.3716985);
    path_0.lineTo(0, size.height * 0.3716985);
    path_0.lineTo(0, size.height * 0.6283015);
    path_0.lineTo(size.width * 0.3716985, size.height * 0.6283015);
    path_0.lineTo(size.width * 0.3716985, size.height);
    path_0.lineTo(size.width * 0.6283015, size.height);
    path_0.lineTo(size.width * 0.6283015, size.height * 0.6283015);
    path_0.lineTo(size.width, size.height * 0.6283015);
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
