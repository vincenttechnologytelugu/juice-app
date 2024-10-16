import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juice_app_1/constants.dart';
import 'package:juice_app_1/homepage.dart';
//import 'package:google_fonts/google_fonts.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Stack(
        
        children: [
          
          Container(
           
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red.withOpacity(0.1),
              Colors.yellow
              ])
            ),
            child: Column(
              
              children: [
                SizedBox(
                  height: 20,
                ),
                 //Text('The\njuicey',style: GoogleFonts.mochiyPopPOne().copyWith(fontSize: 45,height: .8,fontStyle: FontStyle.italic),),
              
                Text('The\njuicey',style: TextStyle(fontSize:45,height: 0.75,fontFamily: "DancingScript-Bold",fontWeight:FontWeight.w600 ),
                ),
                SizedBox(height: 50,),
                Row(
                  
                  children: [
                    
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      height: 321,
                      width: 183,
                      child:Image.asset("assets/images/pink1.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: 30,),
                    Container(
                      height: 321,
                      width: 183,
                      child:Image.asset("assets/images/yellow.png",fit: BoxFit.cover,)
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              bottom:.001,
            child: Container(
            
              height: 300,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30)
                )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Choose the",
                  style:constant.choose,
                  ),
                  RichText(text: TextSpan(
                    text: "Drink ",style: constant.colortext,
                    children: [
                      TextSpan(
                        text: " you love",style: constant.choose
                      )
                    ]
                  )
                  ),
                  SizedBox(height: 20,),
                  RichText(text: TextSpan(
                    text: "We provide a varity of fresh",style:constant.textt,
                    children:[
                      TextSpan(
                        text: ' juice',style: constant.yellowtextt
                      ),
                      TextSpan(
                        text: ' with\n',style: constant.textt
                      ),
                       TextSpan(
                        text: 'various flavors. Get fresh ',style: constant.textt
                       ),
                       TextSpan(text: ' juice ',style: constant.yellowtextt ),
                       TextSpan(text: 'easily',style: constant.textt),
                      
                    ] 
                  )),
                   SizedBox(height: 40,),
                   InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Homepage()));
                    },
                     child: Container(
                      height: 49,
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color(0xffDD9718),
                      ),
                            
                      child: Center(
                        child: Text("Get Started",style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                     ),
                   )
                ],
              ),
            )
            )
        ],
      ),
    );
  }
}