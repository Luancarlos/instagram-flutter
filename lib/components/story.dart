import 'package:flutter/material.dart';
import 'avatar.dart';
import '../providers/person/person.dart';

final double height           = 95;
final double containerAvatar  = 64;
final double avatarSize       = 60;

Widget ContainerStory(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      margin: EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: people.length,
            itemBuilder: (BuildContext c, int index) {
                return Story(height, people[index]);
            },
        ),
      )
  );
}

Widget Story(double size, Person person) {
  return Container(
    width: size,
    height: size,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            width: containerAvatar,
            height: containerAvatar,
            margin: EdgeInsets.only(bottom: 3),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: new LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Color(0xFFC13584), Color(0xFFFCAF45)],
              ),
            ),
            child: new Avatar(width: avatarSize, height: avatarSize, image: person.image)
        ),
        Text(person.name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600))
      ],
    ),
  );
}