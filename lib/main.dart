import 'package:flutter/material.dart';
import 'package:instagram/providers/person/person.dart';
import 'dart:io';

import 'components/story.dart';
import 'components/card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white,
          backgroundColor: Colors.red
      ),
      title: 'Instagram',
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {

  @override
  _HomePage createState() => _HomePage();

}

class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    List<Widget> itens = List<Widget>();

    itens.add(ContainerStory(context));

    for(var i = 0; i < people.length; i++) {
      if(!people[i].isyou)
        itens.add(CardPerson(people[i]));
    }

    return Scaffold(
          appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.camera_alt), color: colorIcon, onPressed: (){}),
            backgroundColor:  Platform.isAndroid ? Colors.white : Color(0xFFf3f3f3),
            actionsIconTheme: IconThemeData(color: colorIcon),
            elevation: Platform.isAndroid ? 1.6 : 0.8,
            title: Text("Instagram", style: TextStyle(color: colorIcon, fontFamily: "Instagram", fontSize: 30),),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.send), onPressed: (){},)
            ],
          ),
          body: ListView(
              children: itens
          )
      );

  }

}





