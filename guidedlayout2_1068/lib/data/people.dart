//* 1. Kelas Person
class Person {
  final String name;
  final String phone;
  final String picture;
  const Person(this.name, this.phone, this.picture);
}

//* 2. Variabel List dengan nama people yan memiliki data bertipe object Person, yang merupakan
//* hasil mapping data list pada baris 14 kebawah
final List<Person> people = _people
    .map((e) => Person(
        e['name'] as String, e['phone'] as String, e['picture'] as String))
    .toList(growable: false);

final List<Map<String, Object>> _people = [
  {
    "_id": "6504ffbb4db3f2f130913dfc",
    "index": 0,
    "guid": "f13d2d93-efc7-45c1-8cff-8748bf8a173a",
    "isActive": true,
    "balance": "\$2,976.46",
    "picture": "http://placehold.it/32x32",
    "age": 36,
    "eyeColor": "blue",
    "name": "Sharlene Levy",
    "gender": "female",
    "company": "ROOFORIA",
    "email": "sharlenelevy@rooforia.com",
    "phone": "+1 (804) 434-2388",
    "address": "196 Meeker Avenue, Witmer, Hawaii, 2583",
    "about":
        "Enim sunt laborum excepteur qui pariatur non excepteur cupidatat voluptate. Proident commodo adipisicing amet cupidatat aliquip consectetur culpa. Do id dolor qui adipisicing et ipsum amet quis. Veniam dolore consectetur sunt tempor adipisicing esse quis do labore. Exercitation sunt nisi est labore esse voluptate proident velit. Duis in eiusmod incididunt irure occaecat.\r\n",
    "registered": "2014-03-20T12:08:12 -07:00",
    "latitude": 79.024447,
    "longitude": 132.36375,
    "tags": ["eiusmod", "mollit", "eiusmod", "do", "laborum", "ex", "cillum"],
    "friends": [
      {"id": 0, "name": "Norris Madden"},
      {"id": 1, "name": "Lott Waller"},
      {"id": 2, "name": "Kerr Chapman"}
    ],
    "greeting": "Hello, Sharlene Levy! You have 8 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "6504ffbbf16d47ca32c1eff5",
    "index": 1,
    "guid": "d9574228-ffb6-49a6-a589-a96b895f3a9f",
    "isActive": false,
    "balance": "\$1,099.38",
    "picture": "http://placehold.it/32x32",
    "age": 22,
    "eyeColor": "green",
    "name": "Salas Wagner",
    "gender": "male",
    "company": "KLUGGER",
    "email": "salaswagner@klugger.com",
    "phone": "+1 (928) 534-2745",
    "address": "705 Willoughby Avenue, Avalon, New Hampshire, 9493",
    "about":
        "Enim consequat aute labore sint. Cupidatat Lorem consequat aute cupidatat deserunt labore pariatur do tempor quis. Deserunt velit minim esse sit.\r\n",
    "registered": "2015-07-09T02:47:15 -07:00",
    "latitude": 63.508207,
    "longitude": 42.447787,
    "tags": ["velit", "fugiat", "nulla", "nisi", "elit", "in", "Lorem"],
    "friends": [
      {"id": 0, "name": "Rebekah Gentry"},
      {"id": 1, "name": "Therese Melendez"},
      {"id": 2, "name": "Abigail York"}
    ],
    "greeting": "Hello, Salas Wagner! You have 3 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "6504ffbbbf3f7aa46cb06971",
    "index": 2,
    "guid": "d3c570ea-6ca7-48fc-a1f1-f0ccfc7ed54b",
    "isActive": true,
    "balance": "\$1,680.85",
    "picture": "http://placehold.it/32x32",
    "age": 28,
    "eyeColor": "green",
    "name": "Shelley Bishop",
    "gender": "female",
    "company": "ONTAGENE",
    "email": "shelleybishop@ontagene.com",
    "phone": "+1 (809) 515-2299",
    "address": "911 Bleecker Street, Staples, Mississippi, 7304",
    "about":
        "Amet sit excepteur aute commodo velit pariatur aliqua aliqua officia enim. Reprehenderit voluptate qui anim dolore Lorem proident excepteur et. Magna commodo ex ut reprehenderit adipisicing laboris pariatur labore nulla reprehenderit in. Non anim pariatur pariatur esse adipisicing occaecat ad cupidatat consectetur nulla. Sint reprehenderit exercitation enim occaecat pariatur.\r\n",
    "registered": "2018-03-27T01:19:04 -07:00",
    "latitude": 29.37707,
    "longitude": 159.975866,
    "tags": ["voluptate", "dolor", "dolore", "magna", "sint", "dolor", "quis"],
    "friends": [
      {"id": 0, "name": "Bowman Carpenter"},
      {"id": 1, "name": "Mattie Brown"},
      {"id": 2, "name": "Candy Lester"}
    ],
    "greeting": "Hello, Shelley Bishop! You have 4 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "6504ffbba73077e63542391a",
    "index": 3,
    "guid": "a8474aed-b593-4841-aa1e-6e3d4af6f49b",
    "isActive": true,
    "balance": "\$2,223.32",
    "picture": "http://placehold.it/32x32",
    "age": 21,
    "eyeColor": "green",
    "name": "Whitney Owens",
    "gender": "male",
    "company": "PANZENT",
    "email": "whitneyowens@panzent.com",
    "phone": "+1 (956) 435-3197",
    "address": "245 Mayfair Drive, Kimmell, Montana, 3872",
    "about":
        "Et anim non sint enim proident culpa consequat magna veniam do fugiat nulla laborum cillum. Commodo magna laborum dolore sit consectetur ea pariatur aliqua occaecat aliquip ad. Excepteur adipisicing velit ea nostrud quis amet laboris sunt adipisicing ullamco anim magna Lorem consectetur.\r\n",
    "registered": "2016-01-24T09:05:07 -07:00",
    "latitude": 61.14535,
    "longitude": 95.296017,
    "tags": [
      "magna",
      "voluptate",
      "eiusmod",
      "non",
      "occaecat",
      "officia",
      "amet"
    ],
    "friends": [
      {"id": 0, "name": "John Bird"},
      {"id": 1, "name": "Wright Lambert"},
      {"id": 2, "name": "Rae Lindsey"}
    ],
    "greeting": "Hello, Whitney Owens! You have 3 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "6504ffbb50f7e32742060ec3",
    "index": 4,
    "guid": "26fda155-6219-41cc-9883-8f0a109ec2e1",
    "isActive": true,
    "balance": "\$1,943.00",
    "picture": "http://placehold.it/32x32",
    "age": 27,
    "eyeColor": "brown",
    "name": "Conley Bray",
    "gender": "male",
    "company": "ENERSOL",
    "email": "conleybray@enersol.com",
    "phone": "+1 (933) 573-2515",
    "address": "326 Lake Place, Klondike, Virgin Islands, 5656",
    "about":
        "Irure veniam sit laboris in id duis ipsum adipisicing irure cillum sunt Lorem excepteur commodo. Ex eu nulla nostrud ad Lorem velit dolor sunt cillum et do aliqua exercitation laborum. Fugiat Lorem consequat est consequat aute. Amet fugiat culpa qui irure veniam enim ipsum ad minim nostrud ut. Eu cillum commodo ipsum enim magna deserunt aliquip dolor magna deserunt minim non sint magna. Esse anim consequat aliquip enim eu.\r\n",
    "registered": "2021-12-02T07:26:46 -07:00",
    "latitude": 52.943271,
    "longitude": 148.377476,
    "tags": ["eu", "duis", "ex", "labore", "velit", "laboris", "cupidatat"],
    "friends": [
      {"id": 0, "name": "Weeks Prince"},
      {"id": 1, "name": "Lessie Hutchinson"},
      {"id": 2, "name": "Young Cash"}
    ],
    "greeting": "Hello, Conley Bray! You have 1 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "6504ffbbdd414bd217ea0214",
    "index": 5,
    "guid": "56266953-6466-44a6-b9b8-1979456147d9",
    "isActive": true,
    "balance": "\$2,814.38",
    "picture": "http://placehold.it/32x32",
    "age": 32,
    "eyeColor": "green",
    "name": "Faith Reilly",
    "gender": "female",
    "company": "MEGALL",
    "email": "faithreilly@megall.com",
    "phone": "+1 (822) 599-3844",
    "address": "522 Ash Street, Caln, Nevada, 4046",
    "about":
        "Sit mollit fugiat aliquip magna cillum labore culpa. Qui do excepteur pariatur velit quis. Anim laboris exercitation culpa voluptate consequat et qui nostrud non elit. Ea exercitation consequat sunt nisi eu irure reprehenderit sunt Lorem officia occaecat minim nostrud est. Consequat irure veniam minim fugiat non laboris incididunt magna excepteur deserunt consequat tempor enim officia. Nostrud amet enim consectetur ipsum reprehenderit irure consequat et velit ut.\r\n",
    "registered": "2022-07-13T09:12:33 -07:00",
    "latitude": 48.426275,
    "longitude": -60.134742,
    "tags": [
      "labore",
      "deserunt",
      "veniam",
      "sunt",
      "pariatur",
      "occaecat",
      "velit"
    ],
    "friends": [
      {"id": 0, "name": "Alexis Hoffman"},
      {"id": 1, "name": "Norman England"},
      {"id": 2, "name": "Sharon Barr"}
    ],
    "greeting": "Hello, Faith Reilly! You have 2 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "6504ffbb1facdc963c3d174c",
    "index": 6,
    "guid": "49c43c63-7c1a-4a8d-a29e-4d84427deb3d",
    "isActive": true,
    "balance": "\$3,885.10",
    "picture": "http://placehold.it/32x32",
    "age": 24,
    "eyeColor": "green",
    "name": "Lucas Kane",
    "gender": "male",
    "company": "VICON",
    "email": "lucaskane@vicon.com",
    "phone": "+1 (802) 562-3389",
    "address": "372 Dewey Place, Dennard, Alaska, 4693",
    "about":
        "Aliquip mollit proident nisi Lorem cupidatat adipisicing consectetur id irure eiusmod consequat sit commodo. Sint officia eu occaecat labore. Lorem sunt occaecat quis id irure cillum adipisicing laborum qui in. Incididunt eu veniam cupidatat commodo laborum cupidatat tempor dolore labore tempor dolore. Lorem amet pariatur labore duis commodo esse velit quis. Commodo et occaecat excepteur dolore aute reprehenderit Lorem. Proident dolor culpa ea eiusmod ut nisi magna occaecat duis id veniam pariatur.\r\n",
    "registered": "2014-07-26T11:32:02 -07:00",
    "latitude": 53.675009,
    "longitude": 179.011092,
    "tags": ["fugiat", "do", "aliquip", "cillum", "ut", "excepteur", "tempor"],
    "friends": [
      {"id": 0, "name": "Gretchen Carney"},
      {"id": 1, "name": "Allison Walton"},
      {"id": 2, "name": "Kathrine Sheppard"}
    ],
    "greeting": "Hello, Lucas Kane! You have 3 unread messages.",
    "favoriteFruit": "strawberry"
  }
];
