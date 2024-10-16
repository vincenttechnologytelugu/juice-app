import 'package:flutter/material.dart';
import 'package:juice_app_1/video_detailsscreen.dart';

class GridViewscreen extends StatelessWidget {
  const GridViewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 21,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
          crossAxisCount: 3,childAspectRatio: 0.9),itemBuilder: (ctx,index){
        return InkWell(
          onTap: () {
             Navigator.push(context,
             MaterialPageRoute(builder: (ctx)=>VideoDetailsscreen(
              // title: frameworkslist[index],
              // description: frameworkslist[index],
              // image: frameworkslistImages[index],
              title: "Grid Item $index",
             )));
          },
          child: Card(child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home),
              Text("item $index"),
            ],
          ))),
        );
      }),
    );
  }
}