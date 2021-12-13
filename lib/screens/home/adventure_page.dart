import 'package:flutter/material.dart';
import 'package:map/screens/home/widgets/card_img_grid.dart';
import 'package:map/screens/home/widgets/list_category.dart';
import 'package:map/screens/home/widgets/title.dart';

import '../../unity.dart';

class AdventurePage extends StatefulWidget {
  const AdventurePage({Key key}) : super(key: key);

  @override
  _AdventurePageState createState() => _AdventurePageState();
}

class _AdventurePageState extends State<AdventurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: HexColor('FF865E'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            slidder(context),
            SizedBox(
              height: 20,
            ),
            title(context, title: "Adventure"),
            SizedBox(
              height: 20,
            ),
            cardImage(context),
            SizedBox(
              height: 20,
            ),
            title(context, title: "Most Adventure"),
            SizedBox(
              height: 20,
            ),
            card(context),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
