import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson_three/screens/signUpPage.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class onBoardingPage_3 extends StatefulWidget {
  const onBoardingPage_3({super.key});

  @override
  State<onBoardingPage_3> createState() => _onBoardingPage_3State();
}

class _onBoardingPage_3State extends State<onBoardingPage_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.C_FEFEFF,
      body: SafeArea(
        child: Column(
          children: [

            SizedBox(height: 48,),
            Container(
              width: 389.96,
              height: 383.89,
              child: Image.asset(MyImages.foots),
              ),
            Container(
              width: 348,
              height: 58,
              child: Center(child: Text("Food Ninja is Where Your\n   Comfort Food Lives", style: Mystyle.BentonSansBold700.copyWith(fontSize: 22),)),
            ),
            Container(
              width: 244,
              height: 44,
              child: Center(child: Text("Enjoy a fast and smooth food delivery at\n                       your doorstep",style: Mystyle.BentonSansBook400.copyWith(fontSize: 12),)),
            ), 

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>signUpPage()));
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