import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:juice_app_1/video_detailsscreen.dart';

 
// ignore: must_be_immutable
class Videosscreen extends StatelessWidget {
  // const Videosscreen({super.key});
 
  List<String>frameworkslist=[
    "jquery","Express","angular","Next.js","view.js"]; 
List<String>frameworkslistImages=[
    "https://static-00.iconduck.com/assets.00/node-js-icon-454x512-nztofx17.png",
    "https://static-00.iconduck.com/assets.00/node-js-icon-454x512-nztofx17.png",
    "https://static-00.iconduck.com/assets.00/node-js-icon-454x512-nztofx17.png",
    "https://static-00.iconduck.com/assets.00/node-js-icon-454x512-nztofx17.png",
    "https://static-00.iconduck.com/assets.00/node-js-icon-454x512-nztofx17.png"]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(child: Text("Videos Screen")),
      // backgroundColor: Color.fromARGB(255, 167, 149, 148),
      body: ListView.builder(
        itemCount: frameworkslist.length,
        itemBuilder: (ctx,index){
       // return Text(frameworkslist[index]);
       return Card(
         child: ListTile(
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (ctx)=>VideoDetailsscreen(
              title: frameworkslist[index],
              description: frameworkslist[index],
              image: frameworkslistImages[index],
              // description: "",
              // image:"",
            )));
          },
          leading: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(frameworkslistImages[index]),
          ),
             title:Text(
               frameworkslist[index]
             ),
             subtitle: Text("""Click here for more about ${frameworkslist[index]}, Click here for more about ${frameworkslist[index]} """,
maxLines: 1,
overflow: TextOverflow.ellipsis,
),
             
             trailing: Icon(Icons.settings),
         ),
       );
        
       
      },)
    );
  }
}