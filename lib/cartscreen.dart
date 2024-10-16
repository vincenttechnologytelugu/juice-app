import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juice_app_1/constants.dart';

import 'cartview.dart';



class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('items in cart',style:constant.title),
       Cartview(
     name:"Orange juice",price:"200",img:"assets/images/juice2.png"
       ),
       SizedBox(height: 15,),
       Cartview(name: "PineApple", price: "300", img: "assets/images/juice1.png"),
       SizedBox(height: 10,),
       TextField(
        decoration: InputDecoration(
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
       ),
       SizedBox(
        height: 10,
       ),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Orange juice",style: constant.itemone
          ),
          Text("200",style: constant.itemone,)

          
        ],
       ),
       SizedBox(
        height: 10,
       ),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
 Text("Pineapple juice",style: constant.itemone,),
 Text("* 300",style: constant.itemone,)
        ],
       ),
       SizedBox(
        height: 15,
       ),
       Center(child: Container(
        height: 38,width: 338,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff962020)
        ),
        child: Center(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total",style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,fontSize: 15,color:Colors.white),),
            Text("PKR 500/-",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,fontSize: 15,color:Colors.white
           ),
             )
              ],
          ),
          ),
          
        ),
       ),),
       SizedBox(height: 15,),
      Center(
        child: Container(
          height: 29,width: 134,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffFF9200),
          ),
          child: Center(
            child: InkWell(
              onTap: (){
                showDialog(context: context, builder: (ctx){
                  return AlertDialog(
                    title:Text("Logout"),
                    content: Text("Do you really want to logout?"),
                    actions: [
                      TextButton(onPressed: (){
Navigator.pop(context);
                      }, child: Text("No")),
                     TextButton(onPressed: (){}, child: Text("Yes"))
                    ],
                  );
                });
              },
              child: Text("checkout",style: GoogleFonts.poppins(
                fontSize:15 ,fontWeight: FontWeight.w600,color:Colors.white)
              ),
            ),),
        ),
      ),
      SizedBox(height: 17,),
      Center(
        child: Text("Back to menu",style: GoogleFonts.poppins(
          fontSize: 18,fontWeight: FontWeight.w600,height: .1
        ),),
      ),
      Divider(
        thickness: 1,endIndent: 135,indent: 135,color: Colors.black,
      )
       
    ],
  ),
  
  ),
    );
  }
}