import 'package:flutter/material.dart';
import 'package:lesson_three/screens/onBoardingPage2.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';

class onBoardingPage extends StatefulWidget {
  const onBoardingPage({super.key});

  @override
  State<onBoardingPage> createState() => _onBoardingPageState();
} 

class _onBoardingPageState extends State<onBoardingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2) , ()=>  onBoardingPage_2());
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.C_FEFEFF,
      body: SafeArea(child: 
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image:  AssetImage(MyImages.bac),
          fit: BoxFit.cover,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Center(child: Container(width: 245,height: 203,child: Image.asset(MyImages.image))),
          ],
        ),

      )
      ),
      
    );
  }
}