import 'package:flutter/material.dart';
import 'package:new_grad_proj/screens/commentpage.dart';

class Comment_bottom_sheet_Reply extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            height: 90,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3))
            ]),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 70, right: 230),
                child: IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => comment_page())),
                    icon: Icon(
                      Icons.close,
                      size: 40,
                      color: Colors.blue,
                    )),
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Colors.blue,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      alignment: Alignment.centerRight,
                      width: 270,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "write a Reply",
                          border: InputBorder.none,
                        ),
                      ),
                    )),
              ]),
            ])));
  }
}
