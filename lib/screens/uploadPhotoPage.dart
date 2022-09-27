import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_three/screens/mehtodPage.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class uploadPhotoPage extends StatefulWidget {
  const uploadPhotoPage({super.key});

  @override
  State<uploadPhotoPage> createState() => _uploadPhotoPageState();
}

class _uploadPhotoPageState extends State<uploadPhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.C_FEFEFF,
      body: SafeArea(
          child: Container(
          decoration:  const BoxDecoration(
            image: DecorationImage(image: AssetImage(MyImages.background),
            fit: BoxFit.cover,
            ),
            
          ),
          padding: EdgeInsets.all(20),
          child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            InkWell(
              onTap: (){},
              child: SvgPicture.asset(MyImages.icon_back),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("Upload Your photo\nProfile",style: Mystyle.BentonSansBold700.copyWith(fontSize: 25),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text("This data will be displayed in your \naccount profile for security",style: Mystyle.BentonSansBook400.copyWith(fontSize: 16),),
            ),
            SizedBox(height: 32,),
            Button(MyImages.from_gallarey),
            SizedBox(height: 24,),
            Button(MyImages.camera_image),
            builNextButton(),

            ],

          ),
        )),
      ));
  }
}

Widget Button(ButtonImage){
  return  Container(
              height: 129,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey,
                offset: Offset(0.4, 0.4)),
                
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              // color: Colors.black,
              
              child:Container(
                height: 32,
                child: Center(child: Image.asset(ButtonImage)),)
            );
}