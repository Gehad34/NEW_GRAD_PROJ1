import 'package:flutter/material.dart';
import 'package:new_grad_proj/utli/posts/guidelines_post.dart';
import 'package:new_grad_proj/widgets/default%20text%20field.dart';

class Guide_Lines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 50, left: 20),
            child: Container(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: DefaultTextField(
                  controller: SearchController(),
                  keyboardtype: TextInputType.text,
                  labletext: "Search ",
                  prefixicon: Icons.search,
                  weight: double.infinity,
                ),
              ),
            ),
          )
        ],
      ),
      body: Guidelines_Gridview(),
    );
  }
}
