import 'package:flutter/material.dart';
import 'package:rubber/rubber.dart';
import 'data.dart';

class SinglePost extends StatefulWidget {
  static const routeName = '/single_post';
  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost>
    with SingleTickerProviderStateMixin {
  RubberAnimationController _controller;

  Widget _commentItemBuilder(i) {
    if (i >= comments.length) {
      return null;
    }
    return ListTile(
      title: Text(
        comments[i]['text'],
      ),
    );
  }

  @override
  void initState() {
    _controller = RubberAnimationController(
      vsync: this,
      halfBoundValue: AnimationControllerValue(percentage: 0.4),
      upperBoundValue: AnimationControllerValue(percentage: 0.7),
      lowerBoundValue: AnimationControllerValue(pixel: 50),
      duration: Duration(milliseconds: 200),
    );
    super.initState();
  }

  ScrollController _scrollController = ScrollController();

  Widget _getUpperLayer() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            offset: Offset(0, -3),
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(24), topLeft: Radius.circular(24)),
        color: Colors.white,
      ),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: _scrollController,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Comments(10)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
          }
          return _commentItemBuilder(index - 1);
        },
      ),
    );
  }

  Widget _getLowerLayer() {
    return Container(
      child: Center(
        child: Text(
          'This is A Single Post',
          style: TextStyle(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Details',
            ),
          ),
          body: RubberBottomSheet(
            scrollController: _scrollController,
            lowerLayer: _getLowerLayer(),
            upperLayer: _getUpperLayer(),
            animationController: _controller,
          ),
        ),
      ),
    );
  }
}
