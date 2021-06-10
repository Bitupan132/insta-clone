import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InstaStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, i) => Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    height: 68,
                    width: 68,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://media-exp1.licdn.com/dms/image/C4E03AQE426k4qPjNoQ/profile-displayphoto-shrink_200_200/0/1621858137081?e=1627516800&v=beta&t=XhTDklxP_57793m7_XiwEPZvyhaRNHGNxnO0RxkVAQo')))),
                i == 0
                    ? Positioned(
                        right: 10,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Icon(
                              Icons.add_circle_outline_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      )
                    : Container(
                        color: Colors.transparent,
                      )
              ],
            ));
  }
}
