import 'package:ArRijal/constants.dart';
import 'package:ArRijal/courses/course_list_page/all_course_list_page.dart';
import 'package:flutter/material.dart';
import '../../models/course.dart';
import '../blocs/course_bloc.dart';

class AddedCourseList extends StatefulWidget {
  @override
  _AddedCourseListState createState() => _AddedCourseListState();
}

class _AddedCourseListState extends State<AddedCourseList> {
  final CourseBloc _courseBloc = CourseBloc();

  @override
  void dispose() {
    _courseBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: kCardElevation,
      child: Container(
        width: double.infinity,
        child: StreamBuilder<List<Course>>(
          stream: _courseBloc.courseListStream,
          // initialData: ,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(left: kDefaultPaddin, top: 16),
                        child: Text(
                          'My Courses',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 4, right: 4),
                        child: IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              AllCourseListPage.routeName,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Container(
                                height: 60,
                                width: 60,
                                child: Image.asset(
                                  'assets/course/' +
                                      '${snapshot.data[index].imagePath}',
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    '${snapshot.data[index].name}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
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
