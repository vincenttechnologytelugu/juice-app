import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:juice_app_1/cartscreen.dart';
import 'package:juice_app_1/homeappbar.dart';
import 'package:juice_app_1/shop.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentindex=2;
   final pageController=PageController();
  @override
  void dispose() {

    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
       appBar: PreferredSize(preferredSize: Size.fromHeight(60),
         child: AppBarr()
    
      ),
      body: 
      PageView(
        controller: pageController,
        children: [
        const  ShopScreen(),
        const Cartscreen(),
          Container(),
           Container(),
           Container(),

        ],  
      ),
      
    bottomNavigationBar:
    
    CurvedNavigationBar(
    
      items:const [
      Icon(Icons.home,color: Colors.white,),
      Icon(Icons.shopping_cart,color: Colors.white,),
      Icon(Icons.add_circle_outline,color: Colors.white,),
      Icon(Icons.notifications,color: Colors.white,),
      Icon(Icons.star,color: Colors.white,),
     
   
    
    ],
    backgroundColor:Colors.transparent ,
   buttonBackgroundColor: Color(0xffDD9718),
   color: Color(0xffFFc700),
   index: currentindex,
    height: 50,
    onTap: (index){
      pageController.animateToPage(index,
       duration:const Duration(milliseconds: 300), 
      curve: Curves.easeOut);
    },
    ) ,
    );
  }
}