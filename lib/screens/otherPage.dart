import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
      appBar: AppBar(title: Text("Stack")),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )
                ),
              ),
              Positioned(
                right: -12,
                height: -12,
                child: Image.asset(MyImages.visa_image, width: 31,)
              ),

              Center(
                child: Text("Hello",style: TextStyle(color: Colors.white),),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}