import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaPosts extends StatefulWidget {
  final String accountName;
  final String dpuRl;
  final String uploadUrl;

  InstaPosts(
      {required this.accountName,
      required this.uploadUrl,
      required this.dpuRl});

  @override
  _InstaPostsState createState() => _InstaPostsState();
}

class _InstaPostsState extends State<InstaPosts> {
  final String myDpUrl =
      'https://images.pexels.com/photos/4348799/pexels-photo-4348799.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';

  bool isFavorite = false;
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //1st row
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 0, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.dpuRl),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  widget.accountName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
      ),
      // 2nd row
      GestureDetector(
        onDoubleTap: () {
          setState(() {
            if (!isFavorite) {
              isFavorite = true;
            }
          });
        },
        child: Image.network(
          widget.uploadUrl,
          fit: BoxFit.cover,
        ),
      ),
      // 3rd row
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isFavorite) {
                        isFavorite = false;
                      } else
                        isFavorite = true;
                    });
                  },
                  child: isFavorite
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(Icons.favorite_border)),
              SizedBox(
                width: 12,
              ),
              Icon(CupertinoIcons.chat_bubble),
              SizedBox(
                width: 12,
              ),
              Icon(Icons.send)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (isBookmarked) {
                      isBookmarked = false;
                    } else
                      isBookmarked = true;
                  });
                },
                child: isBookmarked
                    ? Icon(
                        Icons.bookmark,
                      )
                    : Icon(Icons.bookmark_border_outlined)),
          )
        ],
      ),
      // 4th row:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          'Liked by Crush and 435 others',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // 5th row:
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(myDpUrl))),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Add a comment  ", border: InputBorder.none),
              ),
            )
          ],
        ),
      ),
      // 6th Row:
      Padding(
        padding: EdgeInsets.only(left: 16),
        child: Text(
          '1 day ego',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    ]);
  }
}
