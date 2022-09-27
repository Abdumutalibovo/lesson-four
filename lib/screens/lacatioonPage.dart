import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_three/screens/mehtodPage.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Container(
        
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(MyImages.background1),
          fit: BoxFit.cover,
          ),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){},
              child: SvgPicture.asset(MyImages.icon_back),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Set Your Location",style: Mystyle.BentonSansBold700.copyWith(fontSize: 25),),
                  Text("This data will be displayed in your account\nprofile for security",style: Mystyle.BentonSansBook400.copyWith(fontSize:12 ),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){},
                        child: SvgPicture.asset(MyImages.icon_location),
                      ),
                      Padding(padding: const EdgeInsets.only(left: 5),
                      child: Text("Your Location",style: Mystyle.BentonSansBold700.copyWith(fontSize: 15),),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    ),
                    height: 57,
                    width: 322,
                    
                    child: Center(child: Text("Set Location", style: Mystyle.BentonSansBold700.copyWith(fontSize: 14),)),
                  ),
                 
                ],
                
              ),
              
              
            ),
            builNextButton(),
          ],
        ),
      )),
    );
  }
}