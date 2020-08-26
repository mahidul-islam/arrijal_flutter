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
      name: 'AP/College Calculus AB',
      imagePath: 'course1.jpg',
      description: 'description1',
    ),
    Course(
      id: 2,
      name: 'AP/College Calculus BC',
      imagePath: 'course2.jpg',
      description: 'description1',
    ),
    Course(
      id: 3,
      name: 'AP/College Statistics',
      imagePath: 'course3.jpg',
      description: 'description1',
    ),
    Course(
      id: 4,
      name: 'Algebra basics',
      imagePath: 'course2.jpg',
      description: 'description1',
    ),
    Course(
      id: 5,
      name: 'AP/College Calculus AB',
      imagePath: 'course1.jpg',
      description: 'description1',
    ),
    Course(
      id: 6,
      name: 'AP/College Calculus BC',
      imagePath: 'course2.jpg',
      description: 'description1',
    ),
    Course(
      id: 7,
      name: 'AP/College Statistics',
      imagePath: 'course3.jpg',
      description: 'description1',
    ),
    Course(
      id: 8,
      name: 'Algebra basics',
      imagePath: 'course2.jpg',
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
