import 'package:flutter/material.dart';
import 'package:new_grad_proj/screens/guidelins_page.dart';

import 'package:new_grad_proj/screens/notificationspage.dart';
import 'package:new_grad_proj/search.dart';
import 'package:new_grad_proj/utli/posts/userposts.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Discover',
            style: TextStyle(
              color: Color(0xff344054),
              fontSize: Checkbox.width,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.end,
          ),
          actions: <Widget>[
            Container(
              width: 30.0,
              height: 30.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: IconButton(
                padding: const EdgeInsets.all(3),
                icon: const Icon(
                  Icons.auto_stories_outlined,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Guide_Lines())),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 30.0,
              height: 30.0,
              transformAlignment: Alignment.bottomRight,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              alignment: Alignment.center,
              child: IconButton(
                padding: const EdgeInsets.all(3),
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Search())),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 30.0,
              height: 30.0,
              alignment: Alignment.center,
              transformAlignment: Alignment.bottomRight,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(3),
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Notification_page())),
                  ),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        border: Border.all(color: Colors.white, width: 1)),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: ListView(children: [
          userposts("name", "2hours",
              "title title title titletitle titletitle title", true),
          userposts("name", "2hours",
              "title title title titletitle titletitle title", true),
          userposts("name", "2hours",
              "title title title titletitle titletitle title", true),
          userposts("name", "2hours",
              "title title title titletitle titletitle title", true),
          userposts("name", "2hours",
              "title title title titletitle titletitle title", true)
        ]));
  }
}
