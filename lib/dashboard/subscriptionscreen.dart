import 'package:flutter/material.dart';

class Subscriptionscreen extends StatefulWidget {
  const Subscriptionscreen({super.key});

  @override
  State<Subscriptionscreen> createState() => _SubscriptionscreenState();
}

class _SubscriptionscreenState extends State<Subscriptionscreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body:ListView.separated(
        itemCount: 10,
        itemBuilder:(context, index)  {
          return  myContainer(index: index);
        }, separatorBuilder: (BuildContext context, int index) { 
          // return Divider();
          return Container(
            height: 8,
            width: double.infinity,
             color: index %2 ==0 ? Colors.purple:Colors.yellow,
          );
         }, ),
      // body: ListView.builder(
      //   itemCount: 10,
      //   itemBuilder:(context, index)  {
      //     return  myContainer(index: index);
      //   }, ),
      //  body: ListView(
      //   scrollDirection: Axis.vertical,
      //   padding: EdgeInsets.all(8),
      //   reverse: false,
      //   children: [
      //     myContainer(index:0,color: Colors.white),
      //     myContainer(index:1),
      //     myContainer(index:2),

      // Container(
      //   color: Colors.green,
      //   height: 300,
      //   width: double.infinity,
      //   child: Center(child: Text("1")),
      // ),
      // Container(
      //   color: Colors.green,
      //   height: 300,
      //   width: double.infinity,
      //   child: Center(child: Text("2",style: TextStyle(fontSize: 120),)),
      // ),
      // Container(
      //   color: Colors.green,
      //   height: 300,
      //   width: double.infinity,
      //   child: Center(child: Text("3")),
      // )
      //  ],)
     
    );
  }
  Widget myContainer({required int index, Color color=Colors.green}){
 return Container(
        color: color,
        height: 300,
        width: double.infinity,
        child: Center(child: Text("$index",style: TextStyle(fontSize: 120),)),
      );
  }
}