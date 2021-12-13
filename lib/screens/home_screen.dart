import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:map/json/constant.dart';
import 'package:map/screens/home/adventure_page.dart';
import 'package:map/screens/home/map_page.dart';
import 'package:map/screens/home/widgets/heart.dart';
import 'package:map/unity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeTap = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: HexColor('FF865E'),
      appBar: getAppBar(context),
      bottomNavigationBar: getFooter(),
      body: getBody(context),
    );
  }

  Widget getBody(BuildContext context) {
    return IndexedStack(
      index: activeTap,
      children: [
        AdventurePage(),
        MapPage(),
        Center(
          child: Text(
            "user",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "setting",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: HexColor('FEF9EF'),
          border: Border(
              top: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ))),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(itemsTab.length, (index) {
            return IconButton(
              onPressed: () {
                setState(() {
                  activeTap = index;
                });
              },
              icon: Icon(
                itemsTab[index]['icon'],
                size: itemsTab[index]['size'],
                color: activeTap == index ? Colors.amber : Colors.black,
              ),
            );
          }),
        ),
      ),
    );
  }

  AppBar getAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor('2F86A6'),
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/screen.jpeg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Adventure",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: HexColor('FEF9EF'),
                  ),
                ),
                Text(
                  "Phnom Penh",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: () {},
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HeartScreen()));
              },
              icon: Icon(
                Icons.favorite,
                color: HexColor('FEF9EF'),
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
