import 'package:flutter/material.dart';
import 'package:juice_app_1/dashboard/grid_viewscreen.dart';
import 'package:juice_app_1/dashboard/subscriptionscreen.dart';
import 'package:juice_app_1/dashboard/videosscreen.dart';
import 'package:juice_app_1/home.dart';
import 'package:juice_app_1/homepage.dart';
import 'package:juice_app_1/splas_screen.dart';
import 'package:juice_app_1/widget/drawer_item_widget.dart';


class DashboardScreen extends StatefulWidget {
  static const String routeName="/DashboardScreen";
 final String email;
 
   DashboardScreen({required this.email});
  //const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 1;
  List dashboardScreens=[
Home(),
Videosscreen(),
GridViewscreen(),
Subscriptionscreen(),


  ];
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search_outlined,color: Colors.white,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isDismissible: false,
                enableDrag: false,
                context: context, builder: (ctx){
                return Container(
                  height: 400,
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(),
                        title: Text("Name"),),
                       ListTile(
                            leading: CircleAvatar(),
                        title: Text("Price"),),
                        ListTile(
                              leading: CircleAvatar(),
                          title: Text("age"),),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text("Close"))
                    ],
                  ),
                );
              });
            },
            child: Icon(Icons.filter_alt,color: Colors.white,)),
          IconButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (ctx)=>SplasScreen()), (route)=>false);
          }, icon: Icon(Icons.logout_outlined,color:Colors.white))
        ],
        title:Text("DashboardScreen") ,
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              width: double.infinity,
              child: DrawerHeader(
                
                decoration: BoxDecoration(
                  
                  color: Colors.pink,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Text("S",style: TextStyle(fontSize: 30),),
                    ),
                    Text("Flutter & Dart"),
                  ],
                )),
            ),
           DrawerItemWidget(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Videosscreen()));
            },
            key: Key("home"),
              title: "Home",
            ),
           DrawerItemWidget(
           onTap: () {
              Navigator.pop(context);
              
            },
             key: Key("login"),
              title:"Login",
            ),
        
           
          ],
        ),
      ),
      // endDrawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
         currentIndex: selectedIndex,
        onTap: (position) {
          setState(() {
            selectedIndex = position;
          });
          print("positioned $position");
        
        },
        selectedItemColor: Colors.pink,
        selectedFontSize: 20,
        unselectedItemColor: Colors.green,
        items:const [
        BottomNavigationBarItem(
          
          icon: Icon(Icons.home),label: "Home",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.play_circle),label: "Video",
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.person),label: "Profile",
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.subscript_outlined),label: "Subscription",
          ),
          
      ]),
      body: dashboardScreens[selectedIndex],
      // body: Column(
        
      //   children: [
      //   Text("Logged in as ${widget.email}"),
      //     ElevatedButton(onPressed: (){
      //       Navigator.pop(context);
      //     }, child: Text("Go Back"))
      //   ],
      // ),
    );
  }
}