import 'package:alofoke_music_app/screens/person_datils.dart';
import 'package:flutter/material.dart';
import 'package:alofoke_music_app/components/appbar/appbar.dart';

import 'package:alofoke_music_app/data/artists.dart';

class HomePage extends StatefulWidget {
  //HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: ListView(
            children: <Widget>[
              for (var person in people)
                ListTile(
                  title: Text(person.name),
                  trailing: Icon(Icons.arrow_forward),
                  leading: Image.network(person.picture),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PersonDetails(person)));
                  },
                )
            ],
          ),
        )
        //bottomNavigationBar: NavBar()
        );
  }
}
