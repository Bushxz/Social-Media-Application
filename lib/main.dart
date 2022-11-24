import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Twitter",
        theme: ThemeData(
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const Twitter());
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044501011257118780/unknown.png?width=1014&height=676',
      postText: 'วันนี้เราจะมาแนะนำตัวนักเตะที่ได้ไปลุยศึกฟุตบอลโลก \nกาต้า',
      name: "อาเลชังดรี ปอลกิง",
      account: "@Head_Coach",
      Image_tw: "",
    ),
      Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044505279800291388/unknown.png?width=524&height=676',
      postText: 'ศูนย์หน้าจากสโมสร BG Pathum United',
      name: "Nonpawit Pinrat",
      account: "@Player_7",
      Image_tw: "https://media.discordapp.net/attachments/789152271119286272/1044504809442648114/image.png",
    ),
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044506901859278868/unknown.png?width=676&height=676',
      postText: 'กองกลางจากสโมสร Buriram United',
      name: "Keerintorn Bonoi",
      account: "@Player_8",
      Image_tw: "https://media.discordapp.net/attachments/789152271119286272/1044512502819586048/image.png",
    ),
     Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044509603548897330/unknown.png?width=507&height=676',
      postText: 'กองหลังจากสโมสร Muangthong United',
      name: "Chakkapat Sriboonruang",
      account: "@Player_5",
      Image_tw: "https://media.discordapp.net/attachments/789152271119286272/1044508960729870356/image.png",
    ),
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044510350017564692/IMG_1698.png?width=312&height=675',
      postText: 'นายประตูมือ1จากสโมสร Chonburi FC',
      name: "Ritti Worataveetumroung",
      account: "@Player_1",
      Image_tw: "https://media.discordapp.net/attachments/789152271119286272/1044509985775820850/image.png",
    ),
    Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044511903151575090/unknown.png?width=1014&height=676',
      postText: 'ปีกซ้ายจากสโมสร Bangkok United',
      name: "Krittapak Trakulniyom",
      account: "@Player_10",
      Image_tw: "https://media.discordapp.net/attachments/789152271119286272/1044511791616622652/image.png",
    ),
       Tweet(
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044581962259648592/image.png',
      postText: 'ปีกขวาดาวรุ่งจากสโมสร Bangkok United',
      name: "Euaangkoon Boonchuen",
      account: "@Player_4",
      Image_tw: "https://media.discordapp.net/attachments/789152271119286272/1044581962259648592/image.png",
    ),
    Tweet( 
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044583091458547742/unknown.png',
      postText: 'กองหน้าดาวรุ่งจากสโมสร Buriram United',
      name: "Sarun Jongpermsup",
      account: "@Player_7",
      Image_tw: "https://media.discordapp.net/attachments/789152271119286272/1044582959744811048/image.png",
    ),
    Tweet( 
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044583699972374528/unknown.png',
      postText: '',
      name: "Gatar",
      account: "",
      Image_tw: "https://media.discordapp.net/attachments/789152271119286272/1044583699972374528/unknown.png",
    ),
    Tweet( 
      avatar_url:
          'https://media.discordapp.net/attachments/789152271119286272/1044584175979724870/unknown.png',
      postText: '',
      name: "Fifa World Cup",
      account: "@Fifa",
      Image_tw: "https://media.discordapp.net/attachments/789152271119286272/1044584175979724870/unknown.png",
    ),
    
  ];

  var tweetShow = [];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(10.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWp2uVQKUcatd0Nw-xkoEc049i0dfEPf-LU_MSi7FvTa8qkYD5WFgRITjg6ZK_TS4agr4&usqp=CAU'),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 90, 29, 29),
          centerTitle: true,
          title: Text(
            "FOOTBALL",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          )),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_off_outlined, Colors.blue),
            buildIconButton(Icons.notifications_outlined, Colors.blue),
            buildIconButton(Icons.email_outlined, Colors.blue)
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            tweetShow.insert(0, tweetList[counter]);
            counter++;

           
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetShow[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 10,
              ),
          itemCount: tweetShow.length),
    );
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(icon, color: color),
      onPressed: () {},
    );
  }
}
