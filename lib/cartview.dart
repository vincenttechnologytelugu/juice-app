import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartview extends StatelessWidget {
 late String name;
late  String price;
 late String img;
   Cartview({Key? key,required this.name,required this.price,required this.img}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 130,
              width: 115,
            ),
            Positioned(
              bottom: .1,
              child: Container(
              height: 105,
              width: 104,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [Colors.orange,Colors.orange.withOpacity(.4)
                ],
                begin:Alignment.topLeft,
                end:Alignment.topRight,
                )
              ),
            )
            ),
            Positioned(
              bottom: -1,
              left: 10,
              child: Container(
                  height: 133,width: 96,
                  child: Image.asset(img),
            )),
           
          ],
        ),
        Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               SizedBox(
                height: 40,
            
               ),
               Text("name",style: GoogleFonts.poppins(
                fontSize:18 ,fontWeight: FontWeight.w600,color: Colors.black
               ),),
               SizedBox(height: 8,),
               Text("PKR $price",style: GoogleFonts.poppins(
                fontSize:18 ,fontWeight: FontWeight.w600,color: Color(0xffCfA304)
               ),),
               SizedBox(
                height: 8,
               ),
               Row(
                children: [
                  Icon(Icons.remove_circle_outline,size: 18,),
                  Text("1"),
                  Icon(Icons.add_circle_outline,size: 17,)
                ],
               )
              ],
            ),
            SizedBox(width: 135,),
            Icon(Icons.highlight_remove_outlined,color:Color(0xff962020)
            )
        
      ],
    );
  }
}