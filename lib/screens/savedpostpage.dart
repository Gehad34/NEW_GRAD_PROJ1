import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:new_grad_proj/utli/posts/savedpost.dart';

class Saved_Post_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        bottom: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'SavedPost',
            style: TextStyle(
                color: const Color.fromARGB(255, 104, 129, 150),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: [
          Saved_Post("name", "2hours",
              "title title title titletitle titletitle title", false)
        ],
      ));
}
