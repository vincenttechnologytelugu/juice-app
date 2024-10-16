import 'package:flutter/material.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  PageController pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Pageview Layout"),
        centerTitle: true,
        shadowColor: Colors.teal,
        backgroundColor: Colors.pink,
      ),
    //  floatingActionButton: FloatingActionButton(onPressed: (){
    //   pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.linear);
    //  },child: Icon(Icons.skip_next),),
      body:
      
      Scrollbar(
        thickness: 10,
        child: PageView(
          
          onPageChanged: (value) {
            
            print("onPageChanged ${value}");
          },
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: [
          myPage(0),
          myPage(1),
          myPage(2),
          myPage(3),
          
          ],
        ),
      ),
      backgroundColor: Colors.red,
    );
  }
  Widget myPage(int index){
    return   Center(child: Text("Page $index",style: TextStyle(fontSize: 40),));
  }

  
}