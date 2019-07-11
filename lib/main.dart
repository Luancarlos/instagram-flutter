import 'package:flutter/material.dart';
import 'dart:io';

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
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  Color colorIcon = Colors.black;

  @override
  Widget build(BuildContext context) {
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
        children: <Widget>[
          histories(context)
        ],
      )
    );
  }
}

Widget histories(BuildContext context) {
    double height = 90;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: configHistore(context, height)
        ),
      )
    );
}

class Pessoa {
  String nome;
  String img;
  bool voce;
}

List<Widget> configHistore(BuildContext context, double size) {
  List<Widget> widgets = new List();
  List<Pessoa> pessoas = new List();

  Pessoa p;

  p = new Pessoa();
  p.nome = "luan.rocha";
  p.img  = "https://luancarlos.github.io/img/profile.jpg";
  p.voce = true;
  pessoas.add(p);

  p = new Pessoa();
  p.nome = "maria.clara";
  p.img  = "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560096686/woman-1149911_1280.jpg";
  p.voce = false;
  pessoas.add(p);

  p = new Pessoa();
  p.nome = "vanessasilva";
  p.img  = "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560097077/girl-1082212_1280.jpg";
  p.voce = false;
  pessoas.add(p);

  p = new Pessoa();
  p.nome = "laizinha";
  p.img  = "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560096855/portrait-4246954_1280.jpg";
  p.voce = false;
  pessoas.add(p);

  p = new Pessoa();
  p.nome = "paula.farias";
  p.img  = "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560097074/guitar-944261_1280.jpg";
  p.voce = false;
  pessoas.add(p);

  p = new Pessoa();
  p.nome = "catarinabr";
  p.img  = "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560097075/window-view-1081788_1280.jpg";
  p.voce = false;
  pessoas.add(p);

  p = new Pessoa();
  p.nome = "leticia.ofc";
  p.img  = "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560096845/blur-1840538_1920.jpg";
  p.voce = false;
  pessoas.add(p);

  for(int i = 0; i < pessoas.length; i++) {
    widgets.add(histore(context, size, pessoas[i]));
  }


  return widgets;
}

Widget histore(BuildContext context, double size, Pessoa pessoa) {
   return Container(
      width: size,
      height: size,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 59.0,
            height: 59.0,
            margin: EdgeInsets.only(bottom: 3),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: new LinearGradient(
                  colors: [Color(0xFFfeda75e), Color(0xFF962fbf)],
                ),
            ),
            child: Container(
              width: 55.0,
              height: 55.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(pessoa.img)
                  )
              ),
            ),
          ),
          Text(pessoa.nome, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),)
        ],
      ),
   );
}

Widget card(BuildContext context) {

}


