import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InstaStories extends StatelessWidget {
  static List dpList = [
    'https://images.pexels.com/photos/4348799/pexels-photo-4348799.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/4316425/pexels-photo-4316425.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/3746287/pexels-photo-3746287.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/3851325/pexels-photo-3851325.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2661536/pexels-photo-2661536.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];
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
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        dpList[i],
                      ),
                    ),
                  ),
                ),
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
