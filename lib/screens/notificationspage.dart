import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_grad_proj/utli/posts/notification_post.dart';

class Notification_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        bottom: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Notifications',
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: [
          notification_post(
            isOnline: true,
            name: 'name',
            time: 'hours ago',
            title: 'has followed you',
          ),
        ],
      ));
}
