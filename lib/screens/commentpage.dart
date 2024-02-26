import 'package:flutter/material.dart';
import 'package:new_grad_proj/widgets/commentbottomsheet.dart';
import 'package:new_grad_proj/utli/comments.dart';
import 'package:new_grad_proj/screens/home_page.dart';

class comment_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home_Page())),
              icon: Icon(
                Icons.close,
                color: Colors.blue,
              ))
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Comment",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: [comment('name', '25minutsago', 'your are so funny')],
      ),
      bottomSheet: Comment_bottom_sheet(),
    );
  }
}
