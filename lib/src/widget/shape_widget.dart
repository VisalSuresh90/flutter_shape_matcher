import 'package:flutter/material.dart';

import '../constants/styles.dart';
import '../model/shape.dart';
import '../shapes/circle_shape.dart';
import '../shapes/cone_shape.dart';
import '../shapes/cross_shape.dart';
import '../shapes/cube_shape.dart';
import '../shapes/cylinder_shape.dart';
import '../shapes/diamond_shape.dart';
import '../shapes/drop_shape.dart';
import '../shapes/ellipse_shape.dart';
import '../shapes/heart_shape.dart';
import '../shapes/heptagon_shape.dart';
import '../shapes/hexagon_shape.dart';
import '../shapes/nonganone_shape.dart';
import '../shapes/octagone_shape.dart';
import '../shapes/oval_shape.dart';
import '../shapes/pentagon_shape.dart';
import '../shapes/rectangle_shape.dart';
import '../shapes/sixpointedstar_shape.dart';
import '../shapes/square_shape.dart';
import '../shapes/star_shape.dart';
import '../shapes/triangle_shape.dart';

class ShapeWidget extends StatelessWidget {
  final Color? color;
  final double? size;
  final ImageShape imageShape;
  const ShapeWidget(
      {Key? key, this.color = kBadgeColor, this.size, required this.imageShape})
      : super(key: key);

  @override
  Widget build(BuildContext context) => widgetView();

  widgetView() {
    switch (imageShape) {
      case ImageShape.CIRCLE:
        return CircleShape(
          color: color!,
          size: size!,
        );
      case ImageShape.CONE:
        return ConeShape(
          color: color!,
          size: size!,
        );
      case ImageShape.CROSS:
        return CrossShape(
          color: color!,
          size: size!,
        );
      case ImageShape.CUBE:
        return CubeShape(
          color: color!,
          size: size!,
        );
      case ImageShape.CYLINDER:
        return CylinderShape(
          color: color!,
          size: size!,
        );
      case ImageShape.DIAMOND:
        return DiamondShape(
          color: color!,
          size: size!,
        );
      case ImageShape.DROP:
        return DropShape(
          color: color!,
          size: size!,
        );
      case ImageShape.ELLIPSE:
        return EllipseShape(
          color: color!,
          size: size!,
        );
      case ImageShape.HEART:
        return HeartShape(
          color: color!,
          size: size!,
        );
      case ImageShape.HEPTAGON:
        return HeptagonShape(
          color: color!,
          size: size!,
        );
      case ImageShape.HEXAGON:
        return HexagonShape(
          color: color!,
          size: size!,
        );
      case ImageShape.NONAGONE:
        return NonganoneShape(
          color: color!,
          size: size!,
        );
      case ImageShape.OCTAGONE:
        return OctagoneShape(
          color: color!,
          size: size!,
        );
      case ImageShape.OVAL:
        return OvalShape(
          color: color!,
          size: size!,
        );
      case ImageShape.PENTAGON:
        return PentagonShape(
          color: color!,
          size: size!,
        );
      case ImageShape.RECTANGLE:
        return RectangleShape(
          color: color!,
          size: size!,
        );
      case ImageShape.SIXPOINTEDSTAR:
        return SixPointedStarShape(
          color: color!,
          size: size!,
        );
      case ImageShape.SQUARE:
        return SquareShape(
          color: color!,
          size: size!,
        );
      case ImageShape.STAR:
        return StarShape(
          color: color!,
          size: size!,
        );
      case ImageShape.TRIANGLE:
        return TriangleShape(
          color: color!,
          size: size!,
        );
      default:
        return CircleShape(
          color: color!,
          size: size!,
        );
    }
  }
}
