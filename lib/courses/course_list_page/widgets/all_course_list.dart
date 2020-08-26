import 'package:flutter/material.dart';
import '../blocs/all_course_bloc.dart';

class AllCourseList extends StatefulWidget {
  @override
  _AllCourseListState createState() => _AllCourseListState();
}

class _AllCourseListState extends State<AllCourseList> {
  final AllCourseBloc _allCourseBloc = AllCourseBloc();

  @override
  void dispose() {
    _allCourseBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _allCourseBloc.allCourseListStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${snapshot.data[index].name}'),
              subtitle: Text('${snapshot.data[index].description}'),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(48),
                child: Image.asset(
                  'assets/course/' + '${snapshot.data[index].imagePath}',
                  height: 60,
                  width: 50,
                ),
              ),
              trailing: IconButton(
                icon: Icon(Icons.add_circle_outline),
                onPressed: () {},
              ),
            );
          },
        );
      },
    );
  }
}
