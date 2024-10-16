import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juice_app_1/constants.dart';
import 'package:juice_app_1/items.dart';
import 'package:juice_app_1/juiceitem.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 12),
        child: Icon(Icons.search,size: 30,),
        ),
          SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Items(name: "Stabberry", img: "assets/images/staberry.png", color: Colors.red),
           Items(name: "Apple", img: "assets/images/apple.png", color: Colors.red),
           Items(name: "Pomogranate", img: "assets/images/pomogranet.png", color: Colors.red),
           Items(name: "Berry", img: "assets/images/berry.png", color: Colors.red),
         const Column(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Color(0xffFFc100),
                child: Text("See\nAll",style:TextStyle(color:Colors.white)),
              ),
              Text("data")
            ],
           )
          ],
        ),
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.only(left: 20),
        child:Text("Most popular",style: constant.title,), 
        ),
        SizedBox(
          height: 10,
        ),
        Padding(padding: EdgeInsets.only(left: 20),
        
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
               Juiceitem(name: "Orange juice", 
               img: "assets/images/orange.png", 
               color:Colors.orange,
                price: "300"),
                SizedBox(width: 25,),
                Juiceitem(name: "PineApple",
                img: "assets/images/pineapple.png",
                 color: Colors.amberAccent,
                  price: "200")
          ],),
        ),
        ),
        SizedBox(height: 5,),
        Stack(
          children: [
            Container( 
               height: 180,width: 450,
            ),
            Positioned(
               bottom: 10,
              left: 30,
              child: Container(
                  height:125,width: 334,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(colors: [
                    Colors.orange,Colors.orange.withOpacity(.6),
                    Colors.orange.withOpacity(.4)
                  ])
                 ),
                 child: Padding(padding: EdgeInsets.only(left: 13),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
               Text("Buy 2 orange juice",style:GoogleFonts.poppins(
                fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white
               )),
               Padding(padding: EdgeInsets.only(
                left: 68
               ),
               child: Text("Get",style: GoogleFonts.poppins(
                fontSize: 20,fontWeight: FontWeight.w500,color:Colors.white
               ),),
               ),
              Text("One Mango juice Free",style: GoogleFonts.poppins(
                fontSize:18 ,fontWeight: FontWeight.bold,color:Colors.white,height: 1,
              ),
              ),
              SizedBox(height: 7,),
              Text("Mango milkshake is filled with\nimportant nutrients such as\niron,protein,beta.carotene",
              style: GoogleFonts.poppins(
                color: Colors.white,fontSize: 10,fontWeight: FontWeight.w500
              ),
              )
                  ],
                 ),
                 ),
            )
            ),
            Positioned(
            bottom:140,
            child: Padding(padding: EdgeInsets.only(left: 20),
            child: Text("Big Offer",style:constant.title,),
            )
            ),
            Positioned(
              bottom: 10,
              left:270,
              child: Container(
                  height: 170,
                  width: 118,
                  child: Image.asset("assets/images/juic.png"),
            ))
          ],
        )
      ],
    );
  }
}