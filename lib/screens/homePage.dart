import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_three/screens/ExploreResturantPage.dart';
import 'package:lesson_three/utils/colors.dart';
import 'package:lesson_three/utils/images.dart';
import 'package:lesson_three/utils/style.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor.C_FEFEFF,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(MyImages.bac))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                firstRow(),
                SizedBox(
                  height: 44,
                ),
                SearchAndSettings(),
                SizedBox(
                  height: 24,
                ),
                BuildBunner(),
                SizedBox(height: 24,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nearest Restaurant",style: Mystyle.BentonSansBold700.copyWith(fontSize: 16),),
                    TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ExploreResturantPage()));
                  }, child: Text(
                    "View more", style: Mystyle.BentonSansBook400.copyWith(color: myColor.C_F9A84D),),),
                  
                ],
              ),
                Container(
                  height: 184,
                  child: Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildNearestRestauranItem(MyImages.vegan_image,"Vegan Resto"),
                        SizedBox(width: 10,),
                        buildNearestRestauranItem(MyImages.healthy_image,"Healthy Foof"),
                         SizedBox(width: 10,),
                        buildNearestRestauranItem(MyImages.good_food,"Good Food"),
                         SizedBox(width: 10,),
                         buildNearestRestauranItem(MyImages.resto,"Smart Resto"),
                         SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Populer menu",style: Mystyle.BentonSansBold700.copyWith(fontSize: 16),),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ExploreResturantPage()));
                  },
                  child: Text(
                    "View more", style: Mystyle.BentonSansBook400.copyWith(color: myColor.C_F9A84D),),)
                
                ],
              ),
                Container(
                  height: 75,

                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      builMenuItem(),
                      builMenuItem(),
                      builMenuItem(),
                      builMenuItem(),
                    ],
                  // builMenuItem(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget firstRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Find Your\nFavorite Food",
        style: Mystyle.BentonSansBold700.copyWith(fontSize: 32, height: 1.2,),
      ),
      Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 1), color: Colors.grey.withOpacity(0.5)),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          width: 45,
          height: 45,
          child: Image.asset(MyImages.icon_natification)),
    ],
  );
}

Widget SearchAndSettings() {
  return Row(
    children: [
      Expanded(
          child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: myColor.C_F9A84D.withOpacity(0.2),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: myColor.C_F9A84D,
            ),
            hintText: "What do you want to order?",
            hintStyle: TextStyle(color: myColor.C_F9A84D),
            border: InputBorder.none,
          ),
        ),
      )),
      SizedBox(
        width: 8,
      ),
      Container(
        width: 50,
        height: 50,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: myColor.C_F9A84D.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: SvgPicture.asset(MyImages.icon_setting),
      ),
    ],
  );
}

Widget buildNearestRestauranItem(String image, String textname){
  return Container(
    padding: const EdgeInsets.all(8),
    width: 148,
    height: 184,
    decoration: BoxDecoration(

      color: Colors.grey.shade100,
      borderRadius: BorderRadius.all(Radius.circular(22))
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(image),
        Text(
          textname,
          style: Mystyle.BentonSansBold700,
        ),
        SizedBox(height: 8,),
        Text("12 Mins",style: Mystyle.BentonSansBook400.copyWith(color: Colors.grey))
      ],
    ),
  );
}

Widget BuildBunner() {
  return Container(
    width: double.infinity,
    height: 150,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(MyImages.marojni_background)),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        gradient: LinearGradient(colors: [myColor.C_53E88B, myColor.C_15BE77])),
    child: Stack(
      children: [
        Image.asset(MyImages.marojni_image),
        Positioned(
            right: 20,
            top: 30,
            child: Text(
              "Special Deal For\nOcober",
              style: Mystyle.BentonSansBold700.copyWith(
                  color: Colors.white, fontSize: 17),
            )),
        Positioned(
          bottom: 20,
          right: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            onPressed: () {},
            child: Text(
              "Bu Now",
              style:
                  Mystyle.BentonSansBold700.copyWith(color: myColor.C_53E88B),
            ),
          ),
        )
      ],
    ),
  );
}

Widget builMenuItem(){
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(color: Colors.black.withOpacity(0.05)),
      ],
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    child: Row(
      children: [
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),  
        child: Image.asset(MyImages.arvuz_imaga, width: 64,
        fit: BoxFit.cover,
        )),
        SizedBox(width: 12,),
        Column(
          children: [
            Text("Green Noddle", style: Mystyle.BentonSansBold700,),
            Text("Noodle home", style: Mystyle.BentonSansBook400.copyWith(color: Colors.black.withOpacity(0.5), fontSize: 16),),

          ],
        ),
        
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("\$5",style: Mystyle.BentonSansBold700.copyWith(color: myColor.C_F9A84D, fontSize: 28),

              )],
                
              ),
            )


      ],
    ),
  );
}