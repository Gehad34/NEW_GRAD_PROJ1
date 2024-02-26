import 'package:flutter/material.dart';
import 'package:new_grad_proj/screens/home_page.dart';

import 'package:new_grad_proj/screens/add.dart';
import 'package:new_grad_proj/screens/upcoming_event.dart';
import 'package:new_grad_proj/screens/inbox.dart';
import 'package:new_grad_proj/screens/profilepage.dart';

//import 'package:graduate_project/utli/task_par.dart';
//import 'package:flutter/src/rendering/box.dart';

class Bottom_navy extends StatefulWidget {
  Bottom_navy() : super(key: GlobalKey());

  @override
  State<Bottom_navy> createState() => _bottomnavy();
}

class _bottomnavy extends State<Bottom_navy> {
  int _selectedIndex = 0;
  final List<Widget> _widgetoptions = <Widget>[
    Home_Page(),
    Upcoming_Event(),
    add_page(),
    inbox_page(
      dp: 'dp',
      name: 'name',
      time: 'time',
      msg: 'msg',
      isOnline: true,
      counter: 5,
    ),
    person(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => Home_Page(),
        '/event': (context) => Upcoming_Event(),
        '/add': (context) => add_page(),
        '/inbox': (context) => inbox_page(
              dp: 'dp',
              name: 'name',
              time: 'time',
              msg: 'msg',
              counter: 5,
              isOnline: true,
            ),
        '/person': (context) => person()
      },
      home: Scaffold(
        body: _widgetoptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                label: 'home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  color: Colors.blue,
                ),
                label: 'event',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                label: 'add',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.inbox_outlined,
                  color: Colors.blue,
                ),
                label: 'massege',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_3_outlined,
                color: Colors.blue,
              ),
              label: 'Pr0file',
              backgroundColor: Colors.white,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
