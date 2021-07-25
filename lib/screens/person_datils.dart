import 'package:alofoke_music_app/data/artists.dart';
import 'package:flutter/material.dart';

class PersonDetails extends StatelessWidget {
  //const PersonDetails({Key? key}) : super(key: key);
  final Person person;

  PersonDetails(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(person.name),
      ),
      body: Column(
        children: [
          Text(person.about),
        ],
      ),
    );
  }
}
