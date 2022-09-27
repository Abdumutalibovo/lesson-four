import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class NatificationPage extends StatelessWidget {
  const NatificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: 
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(MyImages.background),
          fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 160,
                    child: Center(
                    child: Image.asset(MyImages.success)),
                  ),
                  
                ],
              ),
              SizedBox(height: 25,),
              Column(
                children: [
                  Container(
                    height: 81,
                    width: 312,
          
                    child: Center(child: Column(
                      children: [
                        Center(child: Text("Congrats!",style: Mystyle.BentonSansBold700.copyWith(fontSize: 30,color: myColor.C_15BE77),)),
                        SizedBox(height: 15,),
                        Center(child: Text("Your Profile Is Ready To Use",style: Mystyle.BentonSansBold700.copyWith(fontSize: 23,color: Colors.black),)),
                      
                      
                      ],
                    ),
                  
                    ),
                  ),
                ],
                
              )
            ],
            
          ),
          
        ),
        
        
        
    ),

    ),
    );
  }
}

Widget nextPage(){
  return  Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  Center(child: Container(
                    width: 157,
                    height: 57,
                    decoration: const BoxDecoration(
                      color: myColor.C_53E88B, borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(colors: [
                        myColor.C_53E88B,myColor.C_15BE77
                      ])
                      ),
                  child: Center(child: Text("Try Order",style: Mystyle.BentonSansBold700.copyWith(color: myColor.C_FFFFFF,fontSize: 16),)))),
                  SizedBox(height: 24,), 
                
              ],
            ),
          );
}