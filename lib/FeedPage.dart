import 'package:flutter/material.dart';
import 'package:instagram/providers/person/person.dart';
import 'components/story.dart';
import 'components/card.dart';


class FeedPage extends StatefulWidget {

  FeedPage({Key key}) : super(key: key);

  @override
  _FeedPage createState() => _FeedPage();

}

class _FeedPage extends State<FeedPage> {

  @override
  Widget build(BuildContext context) {

    List<Widget> itens = List<Widget>();

    itens.add(ContainerStory(context));

    for(var i = 0; i < people.length; i++) {
      if(!people[i].isyou)
        itens.add(CardPerson(people[i]));
    }

    //appBar
//    AppBar(
//      leading: IconButton(icon: Icon(Icons.camera_alt), color: colorIcon, onPressed: (){}),
//      backgroundColor:  Platform.isAndroid ? Colors.white : Color(0xFFf3f3f3),
//      actionsIconTheme: IconThemeData(color: colorIcon),
//      elevation: Platform.isAndroid ? 1.6 : 0.8,
//      title: Text("Instagram", style: TextStyle(color: colorIcon, fontFamily: "Instagram", fontSize: 30),),
//      actions: <Widget>[
//        IconButton(icon: Icon(Icons.send), onPressed: (){},)
//      ],
//    );


    return ListView(
        children: itens
    );

  }

}