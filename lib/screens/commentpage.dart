import 'package:flutter/material.dart';
import 'package:new_grad_proj/utli/bottomnavigation.dart';
import 'package:new_grad_proj/widgets/commentbottomsheet.dart';
import 'package:new_grad_proj/utli/comments.dart';

class comment_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Bottom_navy()),
          ),
        ),
        /* actions: [
          Padding(
              padding: EdgeInsets.only(right: 320),
              child: IconButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Home_Page())),
                  icon: Icon(
                    Icons.close,
                    color: Colors.blue,
                    size: 30,
                  )))
        ],*/
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
