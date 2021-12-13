import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:map/screens/home_screen.dart';
import 'package:map/unity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 3),
      onOpenScreen,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('assets/images/adt.jpeg'),
              // image: NetworkImage('https://i.pinimg.com/564x/21/18/20/21182055f368078535ec815b220c4b04.jpg'),
              image: NetworkImage(
                  'https://i.pinimg.com/564x/3f/3b/7c/3f3b7ce39ce83e1f0b09650cabb596a7.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Container(
              width: App.width(context) * 40,
              height: App.height(context) * 10,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  HexColor('292C6D').withOpacity(0.4),
                  HexColor('FAEDF0').withOpacity(0.7),
                ]),
              ),
              child: Center(
                child: Text(
                  "Adventure",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onOpenScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
