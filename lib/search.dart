import 'package:new_grad_proj/search_for_doctors.dart';
import 'package:new_grad_proj/search_for_schools.dart';
import 'package:flutter/material.dart';
import 'package:new_grad_proj/utli/bottomnavigation.dart';

class Search extends StatelessWidget {
  Search();

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
          IconButton(
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ()),
                  ),
              icon: Icon(Icons.arrow_back))
        ],*/
        title: Padding(
          padding: EdgeInsets.only(right: 100, left: 100),
          child: Text(
            "Search",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff012306C)),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchDoctor(),
                              ),
                            );
                          },
                          child: Container(
                            child: Image.asset("assets/images/doc.png"),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchSchool(),
                                ),
                              );
                            },
                            child: Container(
                              child: Image(
                                  image:
                                      AssetImage("assets/images/schooll.png")),
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
