
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:map/json/constant.dart';

import '../../../unity.dart';

Widget title(BuildContext context, {String title}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: HexColor('0F2C67'),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              fontSize: 14,
              color: HexColor('0F2C67').withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget slidder(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: itemImg.length,
      itemBuilder: (BuildContext context, int itemIndex) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(itemImg[itemIndex]),
            fit: BoxFit.cover,
          ),
        ),
      ),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
        aspectRatio: 16 / 9,
        initialPage: 0,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.linear,
      ),
    );
  }

