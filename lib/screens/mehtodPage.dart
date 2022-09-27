import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => PaymentMethodPageState();
}

class PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.C_FEFEFF,
      body:  SafeArea(
        child: Container(
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage(MyImages.bg_image),
            fit: BoxFit.cover,
            ),
            
          ),
          padding: EdgeInsets.all(20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
          onTap: () {},
          child: SvgPicture.asset(MyImages.icon_back),
        ),
        SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Payment method",
                style: Mystyle.BentonSansBold700.copyWith(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                  "This data will be displayed in your account\n profile for security",
                  style: Mystyle.BentonSansBook400.copyWith(fontSize: 12)),
            ),
            SizedBox(height: 24,),
            buildButton(MyImages.paypal_image),
            SizedBox(height: 24,),
            buildButton(MyImages.visa_image),
            SizedBox(height: 24,),
            buildButton(MyImages.payoneer_image),
            builNextButton(),
          ]),
        ),
      ),
    );
  }
}


Widget builNextButton(){
  return Expanded(
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
                  child: Center(child: Text("Next",style: Mystyle.BentonSansBold700.copyWith(color: myColor.C_FFFFFF,fontSize: 16),)))),
                  SizedBox(height: 24,), 
                
              ],
            ),
          );
}

Widget buildButton(String ImageName){
  return Container(
    height: 73,
            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 24),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey,
                offset: Offset(0.4, 0.4)
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Container(
            height: 32,  
            child: Center(child: Image.asset(ImageName))),
          );
}