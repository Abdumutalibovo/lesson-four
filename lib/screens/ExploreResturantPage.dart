import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson_three/screens/homePage.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class ExploreResturantPage extends StatefulWidget {
  const ExploreResturantPage({super.key});

  @override
  State<ExploreResturantPage> createState() => _ExploreResturantPageState();
}

class _ExploreResturantPageState extends State<ExploreResturantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor.C_FEFEFF,
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 60),
              child: Column(
                children: [
                  firstRow(),
                  SizedBox(
                    height: 18,
                  ),
                  SearchAndSettings(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 200),
                      child: Text(
                        "Popular Resturant",
                        style: Mystyle.BentonSansBold700.copyWith(fontSize: 15),
                      )),
                  SizedBox(
                    height: 12,
                  ),
                  
                  Row(
                    children: [
                       buildNearestRestauranItem(MyImages.vegan_image,"Vegan Resto"),
                       SizedBox(width: 24,),
                        buildNearestRestauranItem(MyImages.healthy_image,"Healty Food"),
                    ],
                  ),
                  SizedBox(height: 24,),
                  Row(
                    children: [
                       buildNearestRestauranItem(MyImages.good_food,"Good Foot"),
                       SizedBox(width: 24,),
                        buildNearestRestauranItem(MyImages.resto,"Smart Resto"),
                    ],
                  ),
                
                ],
              )),
        ));
  }
}
