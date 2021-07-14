import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  //const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.subscriptions,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.email,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.folder,
            color: Colors.black54,
          ),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
