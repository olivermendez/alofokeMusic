import 'package:alofoke_music_app/components/appbar/appbar.dart';
import 'package:alofoke_music_app/components/nav/navbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
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
