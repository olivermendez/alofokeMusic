import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primaryColor: Colors.white,
          primaryColorBrightness: Brightness.light,
          brightness: Brightness.light,
          primaryColorDark: Colors.black,
          canvasColor: Colors.white,
          // next line is important!
          appBarTheme: AppBarTheme(brightness: Brightness.dark)),
      darkTheme: ThemeData(
          primaryColor: Colors.black,
          primaryColorBrightness: Brightness.dark,
          primaryColorLight: Colors.black,
          brightness: Brightness.dark,
          primaryColorDark: Colors.black,
          indicatorColor: Colors.white,
          canvasColor: Colors.black,
          // next line is important!
          appBarTheme: AppBarTheme(brightness: Brightness.dark)),
      debugShowCheckedModeBanner: false,
      title: 'Alofoke Music',
      home: Scaffold(
        appBar: AppBar(
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
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
        ),
      ),
    );
  }
}
