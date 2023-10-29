import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/model/shape.dart';
import 'package:flutter_shape_matcher/src/shapes/circle_shape.dart';

import '../anim/bounce_in_down.dart';
import '../anim/bounce_in_left.dart';
import '../anim/bounce_in_right.dart';
import '../anim/bounce_in_up.dart';
import '../constants/styles.dart';
import '../constants/util.dart';
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
import 'shape_widget.dart';

class ShapeDragWidget extends StatefulWidget {
  final Function() onSuccess;
  final Function() onFailure;
  final String title;
  final String subtitle;
  final double titleFontSize;
  final double messageFontSize;
  final Color titleColor;
  final Color messageColor;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final Color dragAcceptBoxColor;
  final Color dragAcceptBoxBorderColor;
  final double dragAcceptBoxBorderSize;
  final Color dragAcceptShapeColor;
  final int animationDurationInMilliseconds;

  const ShapeDragWidget({
    Key? key,
    required this.onSuccess,
    required this.onFailure,
    required this.title,
    required this.subtitle,
    required this.titleFontSize,
    required this.messageFontSize,
    required this.titleColor,
    required this.messageColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderWidth,
    required this.borderRadius,
    required this.dragAcceptBoxColor,
    required this.dragAcceptBoxBorderColor,
    required this.dragAcceptBoxBorderSize,
    required this.dragAcceptShapeColor,
    required this.animationDurationInMilliseconds,
  }) : super(key: key);

  @override
  State<ShapeDragWidget> createState() => _ShapeDragWidgetState();
}

class _ShapeDragWidgetState extends State<ShapeDragWidget> {
  var selectedShapes = <ShapeWidget>[];
  late ShapeWidget taskShape;

  @override
  void initState() {
    resetTask();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => _widgetView(context);

  Container _widgetView(BuildContext context) => Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border:
              Border.all(width: widget.borderWidth, color: widget.borderColor),
          borderRadius: BorderRadius.circular(widget.borderRadius),
          color: widget.backgroundColor,
        ),
        child: Column(children: [
          _dragAcceptSection(),
          Expanded(
              child: SizedBox(
            child: Center(
              child: _textSection(),
            ),
          )),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: selectedShapesChildren()),
        ]),
      );
  // List<Widget> selectedShapesChildren() {
  //   List<Widget> children = [];
  //   for (var i = 0; i < selectedShapes.length; i++) {
  //     // children.add(_draggableShape(selectedShapes[i]));
  //     children.add(
  //       BounceInUpAnimation(
  //         child: _draggableShape(selectedShapes[i]),
  //       ),
  //     );
  //   }
  //   return children;
  // }

  /// This is a function that set the selected random shapes into the options list with some animation.
  /// Returns the List of added Widgets.
  List<Widget> selectedShapesChildren() {
    List<Widget> children = [];
    for (var i = 0; i < selectedShapes.length; i++) {
      if (i == 0) {
        children.add(BounceInLeftAnimation(
          durationInMilliseconds: widget.animationDurationInMilliseconds,
          child: _draggableShape(selectedShapes[i]),
        ));
      } else if (i == 1) {
        children.add(BounceInUpAnimation(
          durationInMilliseconds: widget.animationDurationInMilliseconds,
          child: _draggableShape(selectedShapes[i]),
        ));
      } else if (i == 2) {
        children.add(BounceInDownAnimation(
          durationInMilliseconds: widget.animationDurationInMilliseconds,
          child: _draggableShape(selectedShapes[i]),
        ));
      } else {
        children.add(BounceInRightAnimation(
          durationInMilliseconds: widget.animationDurationInMilliseconds,
          child: _draggableShape(selectedShapes[i]),
        ));
      }
    }
    return children;
  }

  Column _textSection() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: widget.titleFontSize,
              color: widget.titleColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              widget.subtitle,
              style: TextStyle(
                  fontSize: widget.messageFontSize, color: widget.messageColor),
            ),
          ),
        ],
      );
  Padding _dragAcceptSection() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: DragTarget<ShapeWidget>(
          builder: (BuildContext context, List<Object?> candidateData,
              List<dynamic> rejectedData) {
            // if (rejectedData != null && rejectedData.length > 0) {
            //   _testController.checkAnswer(rejectedData[0]);
            // }
            return _draggableContainerSection();
          },
          onWillAccept: (data) {
            debugPrint("onWillAccept ${data!.imageShape}");

            return data.imageShape == taskShape.imageShape;
          },
          onAccept: (data) {
            setState(() {
              taskShape = ShapeWidget(
                imageShape: data.imageShape,
                size: data.size,
                //color: Util.getLightenColor(data.color!, 0),
                color: data.color!,
              );

              Future.delayed(const Duration(seconds: 1), () {
                widget.onSuccess();
              });
            });
            debugPrint("onAccept");
          },
          onLeave: (data) {
            widget.onFailure();
            // resetTask();
            debugPrint("onLeave");
          },
        ),
      );
  Card _draggableContainerSection() => Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: widget.dragAcceptBoxBorderSize,
              color: widget.dragAcceptBoxBorderColor,
            ),
            borderRadius: BorderRadius.circular(8),
            color: widget.dragAcceptBoxColor,
          ),
          child: Center(child: taskShape),
        ),
      );

  Draggable _draggableShape(ShapeWidget shapeWidget) => Draggable(
        feedback: _draggableShapeContent(1, shapeWidget),
        childWhenDragging: _draggableShapeContent(2, shapeWidget),
        data: shapeWidget,
        child: _draggableShapeContent(0, shapeWidget),
      );

  ShapeWidget _draggableShapeContent(int mode, ShapeWidget shapeWidget) {
    var color = shapeWidget.color;
    if (mode == 1) {
      //color = kBlueGradientColor.withOpacity(.25);
      color = shapeWidget.color!.withOpacity(.25);
    } else if (mode == 2) {
      color = kGrayColor;
    }
    return ShapeWidget(
      imageShape: shapeWidget.imageShape,
      size: shapeWidget.size,
      color: color,
    );
  }

  /// This is a function that returns the complete list of available shapes in this package.
  /// Returns the List of widgets.
  List<Widget> getShapes() {
    var shapes = <Widget>[
      const CircleShape(),
      const ConeShape(),
      const CrossShape(),
      const CubeShape(),
      const CylinderShape(),
      const DiamondShape(),
      const DropShape(),
      const EllipseShape(),
      const HeartShape(),
      const HeptagonShape(),
      const HexagonShape(),
      const NonganoneShape(),
      const OctagoneShape(),
      const OvalShape(),
      const PentagonShape(),
      const RectangleShape(),
      const SixPointedStarShape(),
      const SquareShape(),
      const StarShape(),
      const TriangleShape(),
    ];
    return shapes;
  }

  /// This is a function is to reset the task image shape and shown options image.
  void resetTask() {
    setState(() {
      selectRandomShapes();
      setTaskShape();
    });
  }

  /// This is a function is to set the task image shape.
  void setTaskShape() {
    int randomNumber = Util.getRandomNumber(1, 4);
    taskShape = ShapeWidget(
      imageShape: selectedShapes[randomNumber - 1].imageShape,
      color: widget.dragAcceptShapeColor,
      size: 60,
    );
  }

  /// This is a function is to select some random shapes.
  void selectRandomShapes() {
    selectedShapes.clear();
    while (selectedShapes.length <= 3) {
      // debugPrint('selectRandomShapes while');
      int randomNumber = Util.getRandomNumber(1, 20);
      var imageShape = getImageShape(randomNumber);
      // var index = selectedShapes.indexOf(widget);
      var index = getShapeWidgetPosition(imageShape);
      // debugPrint('selectRandomShapes $index');
      if (index < 0) {
        var shapeWidget = ShapeWidget(
          imageShape: imageShape,
          color: Util.getRandomColor(),
          size: 60,
        );
        selectedShapes.add(shapeWidget);
      }
    }
  }

  /// This is a function that returns the shape position in the selectedShapes list.
  /// Given the [imageShape] for find out the position of passed Image enum in the selectedShapes list.
  /// [imageShape] : enum value
  /// Returns the position if it exist in list otherwise returns -1.
  int getShapeWidgetPosition(ImageShape imageShape) {
    for (var i = 0; i < selectedShapes.length; i++) {
      if (selectedShapes[i].imageShape == imageShape) {
        return i;
      }
    }
    return -1;
  }

  /// This is a function that returns the Image enum.
  /// Given the [randomNumber] for find out the Image shape enum
  /// [randomNumber] : integer value and should be greater than 0
  /// Returns the Image shape enum value.
  ImageShape getImageShape(int randomNumber) {
    switch (randomNumber) {
      case 1:
        return ImageShape.CIRCLE;
      case 2:
        return ImageShape.CONE;
      case 3:
        return ImageShape.CROSS;
      case 4:
        return ImageShape.CUBE;
      case 5:
        return ImageShape.CYLINDER;
      case 6:
        return ImageShape.DIAMOND;
      case 7:
        return ImageShape.DROP;
      case 8:
        return ImageShape.ELLIPSE;
      case 9:
        return ImageShape.HEART;
      case 10:
        return ImageShape.HEPTAGON;
      case 11:
        return ImageShape.HEXAGON;
      case 12:
        return ImageShape.NONAGONE;
      case 13:
        return ImageShape.OCTAGONE;
      case 14:
        return ImageShape.OVAL;
      case 15:
        return ImageShape.PENTAGON;
      case 16:
        return ImageShape.RECTANGLE;
      case 17:
        return ImageShape.SIXPOINTEDSTAR;
      case 18:
        return ImageShape.SQUARE;
      case 19:
        return ImageShape.STAR;
      case 20:
        return ImageShape.TRIANGLE;
      default:
        return ImageShape.CIRCLE;
    }
  }
}
