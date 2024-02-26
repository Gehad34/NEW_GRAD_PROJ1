import 'package:flutter/material.dart';
import 'package:new_grad_proj/utli/posts/guidelines_post.dart';

class Guide_Lines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 80, left: 0),
            child: Row(children: [
              Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300]),
                  child: Row(children: [
                    Container(
                      width: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w100)),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ))
                  ]))
            ]),
          )
        ],
      ),
      body: Guidelines_Gridview(),
    );
  }
}
