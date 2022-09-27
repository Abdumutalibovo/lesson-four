import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_three/screens/mehtodPage.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(MyImages.background),
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
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text("Upload Your Photo \nProfile",style: Mystyle.BentonSansBold700.copyWith(fontSize: 25),),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text("This data will be displayed in your account profile\nfor security", style: Mystyle.BentonSansBook400.copyWith(fontSize: 12),),
            ),
            SizedBox(height: 24,),
            Container(
              height: 260,
              child: Center(child: Image.asset(MyImages.user),),
            ),
            builNextButton(),

          ],
        ),

      ),)
    );
  }
}