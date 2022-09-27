import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson_three/screens/onBoardingPage3.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class onBoardingPage_2 extends StatefulWidget {
  const onBoardingPage_2({super.key});

  @override
  State<onBoardingPage_2> createState() => _onBoardingPage_2State();
}

class _onBoardingPage_2State extends State<onBoardingPage_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.C_FEFEFF,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 48,),
            Container(
              width: 434.22,
              height: 408.5,
              child: Image.asset(MyImages.biscuits),
              ),
            Container(
              width: 211,
              height: 58,
              child: Center(child: Text("Find your  Comfort\n       Food here", style: Mystyle.BentonSansBold700.copyWith(fontSize: 22),)),
            ),
            Container(
              width: 244,
              height: 44,
              child: Center(child: Text("Here You Can find a chef or dish for every\n                taste and color. Enjoy!",style: Mystyle.BentonSansBook400.copyWith(fontSize: 12),)),
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>onBoardingPage_3()));
                    },
                    child: Container(
                      width: 157,
                      height: 57,
                      decoration: BoxDecoration(
                         color: myColor.C_15BE77,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(colors: [myColor.C_53E88B,myColor.C_15BE77]),
                      ),
                      child: Center(child: Text("Next",style: Mystyle.BentonSansBold700.copyWith(color: myColor.C_FEFEFF,fontSize:16),)),
                    ),
                  ),
              SizedBox(height: 24,),

                ],
              ),
            )
          ],
        )
        ),
          );
  }
}