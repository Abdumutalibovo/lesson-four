import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.C_FEFEFF,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 47,),
            Center(
              child: Container(
                width: 245,
                height: 203,
                child: Center(child: Image.asset(MyImages.image)),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Container(
              width: 217,
              height: 26,
              child: Center(
                  child: Text(
                "Login To Your Account",
                style: Mystyle.BentonSansBold700.copyWith(fontSize: 20),
              )),
            ),
            SizedBox(
              height: 36,
            ),
            inputWidget("Email"),
            SizedBox(
              height: 12,
            ),
            inputWidget("Password"),
            SizedBox(
              height: 24,
            ),
            Container(
              child: Text(
                "Or continue With",
                style: Mystyle.BentonSansBold700.copyWith(fontSize: 12),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: button(),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text("Forgot Your Password?", style: TextStyle(color: myColor.C_53E88B),),
            ),
            SizedBox(height: 32,),
             Container(
                    width: 157,
                    height: 57,
                    decoration: BoxDecoration(
                       color: myColor.C_15BE77,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(colors: [myColor.C_53E88B,myColor.C_15BE77]),
                    ),
                    child: Center(child: Text("Login",style: Mystyle.BentonSansBold700.copyWith(color: myColor.C_FEFEFF,fontSize:16),)),
                  ),
          ],
        ),
      ),
    );
  }
}

Widget inputWidget(String EmailOrPassWord) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(color: Colors.grey, offset: Offset(0.5, 0.5)),
      ],
      borderRadius: BorderRadius.all(Radius.circular(15)),
      color: myColor.C_FEFEFF,
    ),
    width: 325,
    height: 57,
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        EmailOrPassWord,
        style: Mystyle.BentonSansBook400.copyWith(
            fontSize: 12, color: myColor.C_3B3B3B),
      ),
    ),
  );
}

Widget button(){
  return Container(
    child: Row(
      children: [
        Container(
          width: 152,
          height: 57,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(0.4,0.4))
            ],
            borderRadius: BorderRadius.all(Radius.circular(15),),
            color: myColor.C_FEFEFF,
          ),
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Container(
                    child: SvgPicture.asset(MyImages.google),
                  ),
                ),
                SizedBox(width: 13,),
                Container(
                  child: Text("Google",style: Mystyle.BentonSansBold700.copyWith(fontSize: 14),),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 21,),
        Container(
          width: 152,
          height: 57,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(0.4,0.4))
            ],
            borderRadius: BorderRadius.all(Radius.circular(15),),
            color: myColor.C_FEFEFF,
          ),
          child: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Container(
                    child: SvgPicture.asset(MyImages.facebook),
                  ),
                ),
                SizedBox(width: 13,),
                Container(
                  child: Text("Facebook",style: Mystyle.BentonSansBold700.copyWith(fontSize: 14),),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}