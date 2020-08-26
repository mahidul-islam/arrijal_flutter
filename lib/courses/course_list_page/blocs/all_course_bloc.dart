import 'dart:async';
import '../../models/course.dart';

class AllCourseBloc {
  List<Course> _allCourseList = [
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
    Course(
      id: 9,
      name: 'AP/College Calculus BC',
      imagePath: 'course2.jpg',
      description: 'description1',
    ),
    Course(
      id: 10,
      name: 'AP/College Statistics',
      imagePath: 'course3.jpg',
      description: 'description1',
    ),
    Course(
      id: 11,
      name: 'Algebra basics',
      imagePath: 'course2.jpg',
      description: 'description1',
    ),
  ];

  final _allCourseListStreamController = StreamController<List<Course>>();

  Stream<List<Course>> get allCourseListStream =>
      _allCourseListStreamController.stream;

  AllCourseBloc() {
    _allCourseListStreamController.add(_allCourseList);
  }

  void dispose() {
    _allCourseListStreamController.close();
  }
}
