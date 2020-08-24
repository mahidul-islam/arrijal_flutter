// 7 steps of bloc
// 1 import and declare class
// 2 data fake
// 3 StreamController
// 4 stream sink getter
// 5 constructor
// 6 core function
// 7 dispose

import 'dart:async';
import '../models/lesson.dart';

class LessonBloc {
  List<Lesson> _lessonList = [
    Lesson(
      id: 1,
      name: 'Ciphers',
      imagePath: 'cripto.jpg',
      description: 'Criptography',
    ),
    Lesson(
      id: 2,
      name: 'Ancient criptography',
      imagePath: 'cripto.jpg',
      description: 'Criptography',
    ),
    Lesson(
      id: 3,
      name: 'Negative numbers',
      imagePath: 'math.jpg',
      description: 'Foundations',
    ),
    Lesson(
      id: 4,
      name: 'Four',
      imagePath: 'Lesson1',
      description: 'description1',
    ),
    Lesson(
      id: 5,
      name: 'Five',
      imagePath: 'Lesson1',
      description: 'description1',
    ),
    Lesson(
      id: 6,
      name: 'Six',
      imagePath: 'Lesson1',
      description: 'description1',
    ),
  ];

  final StreamController _lessonListStreamController =
      StreamController<List<Lesson>>();

  Stream<List<Lesson>> get lessonListStream =>
      _lessonListStreamController.stream;

  LessonBloc() {
    _lessonListStreamController.add(_lessonList);
  }

  void dispose() {
    _lessonListStreamController.close();
  }
}
