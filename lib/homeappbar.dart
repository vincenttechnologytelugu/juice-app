import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarr extends StatelessWidget {
  const AppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      centerTitle: true,
      title: Padding(padding: EdgeInsets.only(top: 10),
      child:Text("The\njuicey",style: GoogleFonts.greatVibes(
color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,height: .65
      ),)
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color:Colors.black),
      flexibleSpace: SafeArea(child: Container()),
      actions:const  [Padding(padding: EdgeInsets.only(right: 12),
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/user.png"),
        radius: 60,
      ),
      )],

    );
  }
}