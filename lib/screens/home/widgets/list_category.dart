import 'package:flutter/material.dart';

import '../../../unity.dart';

Widget cardImage(
  BuildContext context,
) {
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleImg(
              context,
              title: "Food",
              img:
                  "https://i.pinimg.com/564x/d1/14/a6/d114a6e6c7ce8059c6516b9b52c14b9a.jpg",
            ),
            titleImg(
              context,
              title: "Bar",
              img:
                  "https://i.pinimg.com/564x/aa/b4/b2/aab4b299a8c040c61baaf3d824b1a49d.jpg",
            ),
            titleImg(
              context,
              title: "Hotel",
              img:
                  "https://i.pinimg.com/564x/f3/53/6b/f3536b47fd949980f8dbf59055bc7563.jpg",
            ),
            titleImg(
              context,
              title: "Beach",
              img:
                  "https://i.pinimg.com/564x/91/ab/35/91ab351e0ca4bc826cde2683b1de7759.jpg",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleImg(
              context,
              title: "Petro",
              img:
                  "https://i.pinimg.com/564x/c2/8b/ce/c28bce21419fbd25da48e63d76964fa3.jpg",
            ),
            titleImg(
              context,
              title: "Resort",
              img:
                  "https://i.pinimg.com/564x/8f/f0/8f/8ff08f9f783b68d5077af620c46d5582.jpg",
            ),
            titleImg(
              context,
              title: "Shopping",
              img:
                  "https://i.pinimg.com/564x/fe/ac/53/feac53c307efbfb9438514c0be7734af.jpg",
            ),
            titleImg(
              context,
              title: "ATM",
              img:
                  "https://i.pinimg.com/564x/1b/70/70/1b7070395309eb3aea1aea0ab10b97f5.jpg",
            ),
          ],
        ),
      ],
    ),
  );
}

Widget titleImg(BuildContext context, {String title, String img}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: App.width(context) * 20,
        height: App.height(context) * 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(img),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: HexColor('0F2C67'),
        ),
      ),
    ],
  );
}
