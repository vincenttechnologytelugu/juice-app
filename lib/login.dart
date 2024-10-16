//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:juice_app_1/dashboard_screen.dart';
import 'package:juice_app_1/registration_screen.dart';
//import 'package:flutter/widgets.dart';
//import 'package:shop_order_1/pages/home.dart';
//import 'package:shop_order_1/pages/signup.dart';
import 'package:juice_app_1/widget/support_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email,password;
  TextEditingController emailControler=new TextEditingController();
    TextEditingController passwordControler=new TextEditingController();
    final _formkey=GlobalKey<FormState>();
    // userLogin()async{
    //   try{
    //     await FirebaseAuth.instance.signInWithEmailAndPassword(email: email!, password: password!);
    //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    //   }on FirebaseAuthException catch(e){
    //     if(e.code=="user-not-found"){

        
    //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("No user Found that email",style: TextStyle(fontSize: 20.0,color: Colors.black),)));
    //   }else if(e.code=="wrong password"){
    //      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Wrong Password Provided by User",style: TextStyle(fontSize: 20.0,color: Colors.black),)));
    //   }
    //   }
    // }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Login Form",style: TextStyle(color: Colors.white,fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top:40.0,left: 20.0,right: 20.0),
          child: Form(
            key:_formkey,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Image.asset("assets/images/login.png"),
                    Center(child: Text("Sign In",style: AppWidget.semiBoldTextFeildStyle(),)),
                    SizedBox(height: 20,),
                    Text("Please enter the Details bellow to Continue",style: AppWidget.lightTextFeildStyle(),),
                    SizedBox(height: 40,),
                    Text("Email",style: AppWidget.semiBoldTextFeildStyle(),),
                    SizedBox(
            height: 20,
                    ),
                    Container(
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(color: Color(0xFFf4f5f9),borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              validator: (value){
                if(value==null || value.isEmpty){
                  return "Please Enter Email";
                }
                return null;
              },
              controller: emailControler,
              decoration: InputDecoration(border: InputBorder.none,hintText: "Email"),
                    
            ),
                    ),
                    
                    
                    SizedBox(height: 40,),
                    Text("Password",style: AppWidget.semiBoldTextFeildStyle(),),
                    SizedBox(
            height: 20,
                    ),
                    Container(
            padding: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(color: Color(0xFFf4f5f9),borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
                validator: (value){
                if(value==null || value.isEmpty){
                  return "Please Enter Password";
                }
                return null;
              },
              controller: passwordControler,
              decoration: InputDecoration(border: InputBorder.none,hintText: "Password"),
                    
            ),
                    ),
                    SizedBox(
            height: 20,
                    ),
                    Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Forgot Password",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.w500),),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              //   child: Text("Already Have an Account",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.w500),))
            ],
                    ),
                    SizedBox(
            height: 30,
                    ),
                    Center(
            child: GestureDetector(
               onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  if(_formkey.currentState!.validate()){
                    setState(() {
                      email=emailControler.text;
                      password=passwordControler.text;
                    });
                    //userLogin();
                  }
                },
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                      color: Colors.green,borderRadius: BorderRadius.circular(10),),
                      child: Center(child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(DashboardScreen.routeName, (route)=>false,arguments: [emailControler.text,"suneel "]);
    //                         Navigator.of(context).pushAndRemoveUntil(
    // MaterialPageRoute(builder: (ctx)=>DashboardScreen(
    //   email: emailControler.text,
    // )),
    // (route)=>false);
                        },
                        child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),))),
               ),
            ),
                    ),
                    SizedBox(
            height: 20,
                    ),
                    Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont Have an Account?",style:AppWidget.lightTextFeildStyle(),),
               GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                  
                },
                
                child: Text("Registration",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.w500),)),
            ],
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}