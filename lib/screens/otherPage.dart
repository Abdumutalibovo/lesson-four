import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';

class otherPage extends StatefulWidget {
  const otherPage({super.key});

  @override
  State<otherPage> createState() => _otherPageState();
}

class _otherPageState extends State<otherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.C_FEFEFF,
      appBar: AppBar(title: Text("Stack"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.blue
                ,
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.black,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.green,
                  ),
                  ),
                  Positioned(
                  right: -30,
                  left: -30,
                  bottom: 20, 
                  top: 20,
                  child: 
                  SvgPicture.asset(MyImages.icon_back),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}