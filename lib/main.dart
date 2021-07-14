import 'package:alofoke_music_app/components/appbar/appbar.dart';
import 'package:alofoke_music_app/components/nav/navbar.dart';
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
          appBar: CustomAppBar(),
          body: Center(
            child: Container(
              child: Text('Hello World'),
            ),
          ),
          bottomNavigationBar: NavBar()),
    );
  }
}
