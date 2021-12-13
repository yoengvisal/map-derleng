import 'package:flutter/material.dart';

class HeartScreen extends StatefulWidget {
  const HeartScreen({Key key}) : super(key: key);

  @override
  _HeartScreenState createState() => _HeartScreenState();
}

class _HeartScreenState extends State<HeartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.favorite_border,
          size: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
