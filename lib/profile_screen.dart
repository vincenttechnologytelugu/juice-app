import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
      ),
      body: Scrollbar(
        thickness: 20,
        
        child: Column(
          children: [
            IgnorePointer(
              ignoring:false,
              child: TextButton(onPressed: (){
                       print("I am clicked");
              }, child: Text("Paly Video",style: TextStyle(fontSize: 30,color: Colors.red),)),
            )
          ],
        ),
      ),

    );
  }
}