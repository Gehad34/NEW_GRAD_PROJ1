import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:new_grad_proj/utli/guidelines_ontap.dart';

class Guidelines_Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGrid.count(crossAxisCount: 2, children: [
      Padding(
        padding: EdgeInsets.only(top: 10, left: 10),
        child: InkWell(
          child: Container(
              height: 300,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/guidelines.png",
                      ),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 120, right: 10),
                child: Text(
                  "Treat each child with respect",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Guidelines_ontap())),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 10),
        child: InkWell(
          child: Container(
              height: 400,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/guidelines1.png"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 120, right: 10),
                child: Text(
                  "Recpect thier Abilities",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Guidelines_ontap())),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 10),
          child: InkWell(
            child: Container(
              height: 400,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/guidelines1.png"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 120, right: 10),
                child: Text(
                  "Be Patient and Understanding",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Guidelines_ontap())),
          )),
      Padding(
        padding: EdgeInsets.only(top: 10),
        child: InkWell(
          child: Container(
              height: 300,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/guidelines.png"),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 120, right: 10),
                child: Text(
                  "Communicate effictifly",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Guidelines_ontap())),
        ),
      ),
    ]));
  }
}
