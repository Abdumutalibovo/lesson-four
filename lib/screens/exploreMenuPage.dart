import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lesson_three/screens/homePage.dart';

class exploreMenuPage extends StatefulWidget {
  const exploreMenuPage({super.key});

  @override
  State<exploreMenuPage> createState() => _exploreMenuPageState();
}

class _exploreMenuPageState extends State<exploreMenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 60),
            firstRow(),
          ],
        ),
      ),
    );
  }
}