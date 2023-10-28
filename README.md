
# Flutter Shape Matcher

Flutter Shape Matcher provides you a parental gate for children under 5 and puzzle package, promoting shape recognition and problem-solving through interactive play.

![Demo](images/flutter_shape_matcher.gif)

## Features

- Drag and match various shapes.
- Designed for a young audience with parental gateway features.
- Enhance shape recognition and problem-solving skills.

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  flutter_shape_matcher: ^0.0.2
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:flutter_shape_matcher/flutter_shape_matcher.dart';
```

## Example
There are a number of properties that you can modify:

 - title
 - subtitle               
 - titleFontSize 
 - messageFontSize
 - titleColor
 - messageColor
 - backgroundColor
 - borderColor
 - borderWidth
 - borderRadius
 - dragAcceptBoxColor
 - dragAcceptBoxBorderColor
 - dragAcceptBoxBorderSize
 - dragAcceptShapeColor
 - animationDurationInMilliseconds
<hr>

<table>
<tr>
<td>

```dart
class SampleScreen extends StatelessWidget {  
  const SampleScreen({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      body: Center(  
        child: SizedBox(
                height: MediaQuery.of(context).size.height * .45,
                child: ShapeMatcher(
                  onSuccess: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Correct'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  onFailure: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Wrong'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                ),
            ),  
      ),  
    );  
  }  
}
```
</td>
</tr>
</table>
