import 'package:flutter/material.dart';
import 'package:insta_clone/insta_posts.dart';
import 'package:insta_clone/insta_stories.dart';

class InstaList extends StatelessWidget {
  final personNames = [
    'Bitupan132',
    'iambitupan',
    'its_me_bitupan',
    'arandhara'
  ];
  final imageUrls = [
    'https://images.pexels.com/photos/1146851/pexels-photo-1146851.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/8264630/pexels-photo-8264630.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/8016369/pexels-photo-8016369.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/7060965/pexels-photo-7060965.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  ];
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => index == 0
            ? SizedBox(
                child: InstaStories(),
                height: deviceSize.height * 0.10,
              )
            : InstaPosts(
                accountName: personNames[index - 1],
                uploadUrl: imageUrls[index - 1],
                dpuRl: InstaStories.dpList[index],
              ));
  }
}
