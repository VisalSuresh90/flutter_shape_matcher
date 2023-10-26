import 'package:flutter/material.dart';
import 'package:flutter_shape_matcher/src/model/shape.dart';
import 'package:flutter_shape_matcher/src/shapes/circle_shape.dart';

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

  const ShapeDragWidget({
    Key? key,
    required this.onSuccess,
    required this.onFailure,
  }) : super(key: key);

  @override
  State<ShapeDragWidget> createState() => _ShapeDragWidgetState();
}

class _ShapeDragWidgetState extends State<ShapeDragWidget> {
  var rectShape = Shape(imageShape: ImageShape.RECTANGLE);
  var triShape = Shape(imageShape: ImageShape.TRIANGLE);
  var circleShape = Shape(imageShape: ImageShape.CIRCLE);
  //var shapes = <Widget>[];
  var selectedShapes = <ShapeWidget>[];
  late ShapeWidget taskShape;

  @override
  void initState() {
    resetTask();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => _widgetView(context);

  Card _widgetView(BuildContext context) => Card(
        elevation: 1,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: MediaQuery.of(context).size.width * .75,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kTextLabelColor),
            borderRadius: BorderRadius.circular(12),
            color: kBlackColor,
            // color: widget.bgColor,
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
        ),
      );
  List<Widget> selectedShapesChildren() {
    List<Widget> children = [];
    for (var i = 0; i < selectedShapes.length; i++) {
      children.add(_draggableShape(selectedShapes[i]));
    }
    return children;
  }

  // List<Widget> selectedShapesChildren1() {
  //   List<Widget> children = [];
  //   for (var i = 0; i < selectedShapes.length; i++) {
  //     if (i == 0) {
  //       children.add(BounceInLeft(
  //         child: _draggableShape(selectedShapes[i]),
  //         duration: const Duration(milliseconds: 1000),
  //       ));
  //     } else if (i == 1) {
  //       children.add(BounceInUp(
  //         child: _draggableShape(selectedShapes[i]),
  //         duration: const Duration(milliseconds: 1000),
  //       ));
  //     } else if (i == 2) {
  //       children.add(BounceInDown(
  //         child: _draggableShape(selectedShapes[i]),
  //         duration: const Duration(milliseconds: 1000),
  //       ));
  //     } else {
  //       children.add(BounceInRight(
  //         child: _draggableShape(selectedShapes[i]),
  //         duration: const Duration(milliseconds: 1000),
  //       ));
  //     }
  //   }
  //   return children;
  // }

  Column _textSection() => const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Match the Shape',
            style: TextStyle(
                fontSize: 24,
                color: kBlueGradientColor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Drag the correct shape into above box',
            style: TextStyle(fontSize: 16),
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
            resetTask();
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
              border: Border.all(width: 1, color: kGrayColor),
              borderRadius: BorderRadius.circular(8),
              color: kGrayColor),
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

  getShapes() {
    var shapes = <Widget>[];
    shapes.add(const CircleShape());
    shapes.add(const ConeShape());
    shapes.add(const CrossShape());
    shapes.add(const CubeShape());
    shapes.add(const CylinderShape());
    shapes.add(const DiamondShape());
    shapes.add(const DropShape());
    shapes.add(const EllipseShape());
    shapes.add(const HeartShape());
    shapes.add(const HeptagonShape());
    shapes.add(const HexagonShape());
    shapes.add(const NonganoneShape());
    shapes.add(const OctagoneShape());
    shapes.add(const OvalShape());
    shapes.add(const PentagonShape());
    shapes.add(const RectangleShape());
    shapes.add(const SixPointedStarShape());
    shapes.add(const SquareShape());
    shapes.add(const StarShape());
    shapes.add(const TriangleShape());
    return shapes;
  }

  void resetTask() {
    setState(() {
      selectRandomShapes();
      setTaskShape();
    });
  }

  void setTaskShape() {
    int randomNumber = Util.getRandomNumber(1, 4);
    taskShape = ShapeWidget(
      imageShape: selectedShapes[randomNumber - 1].imageShape,
      color: kWhiteColor.withOpacity(.15),
      size: 60,
    );
  }

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

  int getShapeWidgetPosition(ImageShape imageShape) {
    for (var i = 0; i < selectedShapes.length; i++) {
      if (selectedShapes[i].imageShape == imageShape) {
        return i;
      }
    }
    return -1;
  }

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
