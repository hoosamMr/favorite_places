import 'dart:io';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
class Place{
  Place({required this.title,required this.image}):id = uuid.v4() ;
 
  final String id;
  final String title;
  final File image;
}
// const double xOrigin = 0;
// const double yOrigin = 0;

// class Point {
//   final double x;
//   final double y;

//   Point(this.x, this.y);

//   // Named constructor
//   Point.origin()
//       : x = xOrigin,
//         y = yOrigin;
//   Point.home() : x = 5.0,y = 3.0;
   
// }