import 'package:flutter/material.dart';
import 'package:instagram/providers/person/person.dart';
import 'dart:io';

import 'FeedPage.dart';
import 'SearchPage.dart';
import 'ActivityPage.dart';
import 'AddPage.dart';
import 'ProfilePage.dart';
import 'components/story.dart';
import 'components/card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white, backgroundColor: Colors.red),
      title: 'Instagram',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
      pageController.jumpToPage(index);
      //pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  PageController pageController = PageController(
    initialPage: 0,
  );

  Widget pageView() {
    return PageView(
      controller: pageController,
      onPageChanged: _onItemTapped,
      children: <Widget>[
        FeedPage(),
        SearchPage(),
        AddPage(),
        ActivityPage(),
        ProfilePage()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> itens = List<Widget>();

    itens.add(ContainerStory(context));

    for (var i = 0; i < people.length; i++) {
      if (!people[i].isyou) itens.add(CardPerson(people[i]));
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.camera_alt), color: colorIcon, onPressed: () {}),
        backgroundColor: Platform.isAndroid ? Colors.white : Color(0xFFf3f3f3),
        actionsIconTheme: IconThemeData(color: colorIcon),
        elevation: Platform.isAndroid ? 1.6 : 0.8,
        title: Text(
          "Instagram",
          style: TextStyle(
              color: colorIcon, fontFamily: "Instagram", fontSize: 30),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {},
          )
        ],
      ),
      body: pageView(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text(''),
          ),
        ],
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
      ),
    );
  }
}
