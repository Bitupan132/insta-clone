import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/insta_body.dart';

class InstaHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: Image.asset(
            "assets/images/add_insta.png",
          ),
          title: SizedBox(
            height: 35,
            child: Image.asset("assets/images/insta.png"),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/images/insta_mess.png",
                height: 20,
                width: 22,
              ),
            ),
          ],
        ),
        body: InstaBody(),
        bottomNavigationBar: BottomAppBar(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.movie,
                  color: Colors.black,
                )),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.favorite_border_rounded,
                color: Colors.black,
              ),
            ),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                )),
          ]),
        ));
  }
}
