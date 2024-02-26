import 'package:flutter/material.dart';
import 'package:new_grad_proj/utli/guidelines.dart';

class Guidelines_Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: textlist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
        itemBuilder: (context, index) => Card(
            color: const Color.fromARGB(255, 33, 219, 243),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: textlist[index],
            )));
  }
}
