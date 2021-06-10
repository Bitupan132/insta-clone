import 'package:flutter/material.dart';
import 'package:insta_clone/insta_list.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Flexible(child: InstaList())],
    );
  }
}
