
List<Person> people = <Person>[
  Person(name: "luan.rocha",image: "https://luancarlos.github.io/img/profile.jpg", isyou: true),
  Person(name: "maria.clara",image: "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560096686/woman-1149911_1280.jpg", isyou: false),
  Person(name: "vanessasilva",image: "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560097077/girl-1082212_1280.jpg" , isyou: false),
  Person(name: "laizinha",image: "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560096855/portrait-4246954_1280.jpg", isyou: false),
  Person(name: "paula.farias",image: "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560097074/guitar-944261_1280.jpg" , isyou: false),
  Person(name: "catarinabr",image: "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560097075/window-view-1081788_1280.jpg" , isyou: false),
  Person(name: "leticia.ofc",image: "https://res.cloudinary.com/dmoqwfcku/image/upload/v1560096845/blur-1840538_1920.jpg" , isyou: false),
];


class Person {
  String name;
  String image;
  bool isyou;

  Person({this.name, this.image, this.isyou});

}