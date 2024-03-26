import 'package:flutter/material.dart';
import 'package:new_grad_proj/doctor_reviews.dart';
import 'package:new_grad_proj/search_for_doctors.dart';
import 'package:new_grad_proj/utli/posts/chats.dart';
import 'package:new_grad_proj/write_review.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/msdoctor.png"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 40, left: 10, right: 310, bottom: 200),
                child: Container(
                  width: 0,
                  height: 0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      color: Colors.blue),
                  child: IconButton(
                      color: Colors.blue,
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => SearchDoctor())),
                      icon: const Icon(
                        size: 30,
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 25),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jennifer James",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0072F9),
                                ),
                              ),
                              Text(
                                " dpt. name",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff8C9A9F),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: const Color(0xff0072F9)),
                            child: IconButton(
                              onPressed: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Chats(
                                            name: 'Jennifer James',
                                            isOnline: true,
                                          ))),
                              icon: Icon(Icons.chat_bubble),
                              color: Color.fromARGB(255, 255, 255, 255),
                              iconSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xff0072F9),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "6",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Exprience",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff0072F9),
                                border: BorderDirectional(
                                  end: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "46",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Completed",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff0072F9),
                                border: BorderDirectional(
                                  end: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "25",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Clients",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 5),
                      child: Row(
                        children: [
                          Text(
                            "Reviews",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DoctorReview(),
                                ),
                              );
                            },
                            child: Text(
                              "Read all Reviews",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff47BEF1)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Review(),
                          Review(),
                          Review(),
                          Review(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WriteReview(),
                            ),
                          );
                        },
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff0072F9)),
                          alignment: Alignment.center,
                          child: Text(
                            "Write a Review",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Review extends StatelessWidget {
  const Review({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.5, right: 7.5),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xff0072F9),
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Color.fromARGB(255, 21, 20, 20),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/user.png",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sharon Jem",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 18,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffD0FD3E),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      textAlign: TextAlign.center,
                      "4.8",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "2d ago",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " Good Doctor Good Doctor Good Doctor Good Doctor Good Doctor Good Doctor Good Doctor Good Doctor Good Doctor Good Doctor Good Doctor ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
