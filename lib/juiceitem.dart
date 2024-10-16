import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Juiceitem extends StatelessWidget {
  String name;
  String img;
  var color;
  String price;
   Juiceitem({Key? key,required this.name,required this.img,required this.color,required this.price}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 252,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [color.withOpacity(.7),color.withOpacity(.2)],
        begin: Alignment.topLeft,end: Alignment.bottomRight
        )
      ),
      child: Padding(padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text(name,style:GoogleFonts.poppins(
            color:Colors.white,fontWeight: FontWeight.w600,fontSize: 15
          )),
          Icon(Icons.favorite_border_outlined,color:Colors.white,),
            ],
          ),
         
          Container(
            height: 168,width: 131,
            child: Center(
              child: Image.asset(img,fit: BoxFit.cover,),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("PKR $price",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600),
              ),
              Icon(Icons.shopping_cart_outlined,color: Colors.white,)
            ],
          )

        ],
      ),
      
      ),
    );
  }
}