import 'package:flutter/material.dart';
import 'package:insta_clone/insta_posts.dart';
import 'package:insta_clone/insta_stories.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? SizedBox(
                child: InstaStories(),
                height: deviceSize.height * 0.10,
              )
            : InstaPosts());
  }
}
