import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:juice_app_1/login.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    print("Timer Started");
    Timer(Duration(seconds: 5),(){
      print("Timer Completed");
      Navigator.of(context).pushNamedAndRemoveUntil("/login", (route)=>false);
     // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx)=>Login()), (route)=>false);
      //Navigator.push(context, MaterialPageRoute(builder:(ctx)=>Login()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
         backgroundColor: const Color.fromARGB(255, 27, 136, 209),
      //   centerTitle: true,
      //   title: Text("Splash Screen",style: TextStyle(fontSize: 30,color: Colors.black),),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Align(
            alignment: Alignment.center,
            child: CachedNetworkImage(imageUrl: "https://e7.pngegg.com/pngimages/452/430/png-clipart-welcome-signage-computer-file-welcome-tag-english-sale-tag-thumbnail.png")),
           Text("Welcome App",style: TextStyle(fontSize: 30,color: Colors.white),),
        ],
      ),
    );
  }
}