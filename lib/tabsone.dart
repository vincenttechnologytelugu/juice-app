import 'package:flutter/material.dart';

class Tabsone extends StatefulWidget {
  const Tabsone({super.key});

  @override
  State<Tabsone> createState() => _TabsoneState();
}

class _TabsoneState extends State<Tabsone>with SingleTickerProviderStateMixin {
 late TabController tabController;
 @override
  void initState() {
   tabController=TabController(length: 5, vsync: this);
   tabController.addListener((){
    print("tabController position ${tabController.index}");
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return 
    //  DefaultTabController(
    //    length:5,
    //   child:
       Scaffold(
        appBar: AppBar(
          title: Text("My tab layout"),
          centerTitle: true,
          backgroundColor: Colors.teal,
          bottom:TabBar(
            onTap: (index){
              print("tapped on $index");
            },
           controller: tabController,
           // isScrollable: true,
            tabs: [
            Tab(text: "Flight",
           
            ),
             Tab(icon: Icon(Icons.directions_bus),
            ),
             Tab(icon: Icon(Icons.directions_railway_outlined),
            ),
            Tab(icon: Icon(Icons.directions_bike),
            ),
            Tab(icon: Icon(Icons.directions_boat),
            ),
          ]) ,
        ),
        body: TabBarView(
          controller: tabController,
          children: [
          Column(
            children: [
              Icon(
                Icons.flight,size: 300,),
                TextButton(onPressed: (){
                  tabController.animateTo(1);
                }, child: Text("Go Next"))
            ],
          ),
          Icon(Icons.directions_bus,size: 300,),
          Icon(Icons.directions_railway_outlined,size: 300,),
          Icon(Icons.directions_bike,size: 300,),
           Icon(Icons.directions_boat,size: 300,),

        ]),
      );
    // );
  }
}