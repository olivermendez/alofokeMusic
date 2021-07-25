import 'package:alofoke_music_app/components/nav/navbar.dart';
import 'package:alofoke_music_app/data/artists.dart';
import 'package:flutter/material.dart';

class PersonDetails extends StatelessWidget {
  //const PersonDetails({Key? key}) : super(key: key);
  final Person person;
  PersonDetails(this.person);

  final _textStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);

  Image? getImage(dynamic photoReference) {
    final baseUrl = person.picture;
    final maxWidth = "1000";
    final maxHeight = "200";
    final url = "$baseUrl?maxwidth=$maxWidth";
    return Image.network(
      url,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: false,
            pinned: true,
            floating: false,
            backgroundColor: Colors.black87,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: getImage(person.picture),
              title: Text(person.name),
              //centerTitle: false,
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [resumenText(), audioStream(), dataShow()],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }

  Widget dataShow() {
    return Card(
        elevation: 1,
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          height: 70,
          width: 400,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: followers()),
              Expanded(child: videoViews()),
            ],
          ),
        ));
  }

  Widget resumenText() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: Text(
        "OVERVIEW",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget sumaryDescription() {
    return Text(person.about);
  }

  Widget audioStream() {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red.shade900,
        ),
        height: 50,
        width: 400,
        child: Text(
          person.audioStream + "\nAudio Stream",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget followers() {
    return Text(
      person.followers + "\nFollowers",
      style: _textStyle,
    );
  }

  Widget videoViews() {
    return Text(
      person.videoViews + "\nVideo Views",
      style: _textStyle,
    );
  }

  Widget buildSelectedDetail(Person person) {
    return Hero(
      transitionOnUserGestures: true,
      tag: Text(person.name),
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0),
          child: SingleChildScrollView(
            child: Card(
              child: dataShow(),
            ),
          ),
        ),
      ),
    );
  }
}
