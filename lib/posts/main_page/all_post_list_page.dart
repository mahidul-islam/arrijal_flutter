import 'package:ArRijal/posts/main_page/widgets/single_post_list_tile.dart';
import 'package:flutter/material.dart';
import 'blocs/all_post_bloc.dart';

class AllPostListPage extends StatefulWidget {
  @override
  _AllPostListPageState createState() => _AllPostListPageState();
}

class _AllPostListPageState extends State<AllPostListPage> {
  final AllPostBloc _allPostBloc = AllPostBloc();
  @override
  void dispose() {
    _allPostBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _allPostBloc.postListStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (context, index) {
            return SinglePostListTile(
              post: snapshot.data[index],
            );
          },
        );
      },
    );
  }
}
