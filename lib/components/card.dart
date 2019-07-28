import 'package:flutter/material.dart';
import 'avatar.dart';
import '../providers/person/person.dart';
import '../CustomIcon.dart';

final Color colorIcon   = Colors.black;
final TextStyle negrito = TextStyle(fontWeight: FontWeight.w500);
final double sizeAvatarTop = 32;
final double sizeAvatarBottom = 18;

Widget CardPerson(Person person) {
  return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Row(
              children: <Widget>[
                new Avatar(width: sizeAvatarTop,height: sizeAvatarTop, image: person.image),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(person.name, style: negrito,),
                ),
                Expanded(child: Container(),),
                IconButton(icon: Icon(Icons.more_vert, color: colorIcon,size: 24,), onPressed: (){},alignment: Alignment.centerRight,),

              ],
            ) ,
          ),
          Image.network(person.image),
          Row(
            children: <Widget>[
              IconButton(icon: Icon(CustomIcons.heart, color: colorIcon, size: 24,), onPressed: (){},),
              IconButton(icon: Icon(CustomIcons.comment, color: colorIcon, size: 24, ), onPressed: (){}),
              IconButton(icon: Icon(CustomIcons.send, color: colorIcon, size: 24,), onPressed: (){},),
              Expanded(
                  child: Container()
              ),
              IconButton(icon: Icon(CustomIcons.bookmark, color: colorIcon,size: 24,), onPressed: (){}, alignment: Alignment.centerRight,),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("60 cutidas", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500)),
                RichText(
                  text: TextSpan(
                    text:  person.name + ' ',
                    style: new TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),
                    children: <TextSpan>[
                      TextSpan(text: 'simply dummy text of the printing and typesetting industry. ', style: TextStyle(fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                SizedBox(height: 5.0),
                Text("Ver todos os 200 comentários", style: TextStyle(fontSize: 11, color: Color(0xFFababab), fontWeight: FontWeight.w400)),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    new Avatar(width: sizeAvatarBottom,height: sizeAvatarBottom, image: "https://luancarlos.github.io/img/profile.jpg"),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Adicione um comentários...', style: TextStyle(fontSize: 11, color: Color(0xFFababab), fontWeight: FontWeight.w400),),
                    ),
                  ],
                ) ,
                SizedBox(height: 30.0),
              ],
            ),
          ),
        ],
      )
  );
}