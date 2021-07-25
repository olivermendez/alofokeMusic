import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  //const CustomAppBar({Key? key}) : super(key: key);

  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //Icon(FontAwesomeIcons.youtube, color: Colors.red,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Alofoke Music",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: -1.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Icon(
            Icons.videocam,
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Icon(
            Icons.search,
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Icon(
            Icons.account_circle,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
