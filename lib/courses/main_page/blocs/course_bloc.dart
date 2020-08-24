// 7 steps of bloc
// 1 import and declare class
// 2 data fake
// 3 StreamController
// 4 stream sink getter
// 5 constructor
// 6 core function
// 7 dispose

import 'dart:async';
import '../models/course.dart';

class CourseBloc {
  List<Course> _courseList = [
    Course(
      id: 1,
      name: 'One',
      imagePath: 'course1',
      description: 'description1',
    ),
    Course(
      id: 2,
      name: 'Two',
      imagePath: 'course1',
      description: 'description1',
    ),
    Course(
      id: 3,
      name: 'Three',
      imagePath: 'course1',
      description: 'description1',
    ),
    Course(
      id: 4,
      name: 'Four',
      imagePath: 'course1',
      description: 'description1',
    ),
    Course(
      id: 5,
      name: 'Five',
      imagePath: 'course1',
      description: 'description1',
    ),
    Course(
      id: 6,
      name: 'Six',
      imagePath: 'course1',
      description: 'description1',
    ),
  ];

  final StreamController _courseListStreamController =
      StreamController<List<Course>>();

  Stream<List<Course>> get courseListStream =>
      _courseListStreamController.stream;

  CourseBloc() {
    _courseListStreamController.add(_courseList);
  }

  void dispose() {
    _courseListStreamController.close();
  }
}
