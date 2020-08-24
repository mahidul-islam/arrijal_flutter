import 'package:ArRijal/constants.dart';
import 'package:flutter/material.dart';
import '../models/lesson.dart';
import '../blocs/lesson_bloc.dart';

class RecentLessonList extends StatefulWidget {
  @override
  _RecentLessonListState createState() => _RecentLessonListState();
}

class _RecentLessonListState extends State<RecentLessonList> {
  final LessonBloc _lessonBloc = LessonBloc();

  @override
  void dispose() {
    _lessonBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: kCardElevation,
      child: Container(
        width: double.infinity,
        child: StreamBuilder<List<Lesson>>(
          stream: _lessonBloc.lessonListStream,
          builder: (context, snapshot) {
            return Container(
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(left: kDefaultPaddin, top: 16),
                        child: Text(
                          'Recent lessons',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: kRecentLessonNumberToShow,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Container(
                                height: 55,
                                width: 60,
                                child: Image.asset('assets/course/' +
                                    '${snapshot.data[index].imagePath}'),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('${snapshot.data[index].name}'),
                                  Text(
                                    '${snapshot.data[index].description}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(),
                        ],
                      );
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
