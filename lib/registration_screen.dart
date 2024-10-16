import 'dart:io';
//import 'dart:js_interop';


import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:juice_app_1/dashboard_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  SizedBox textfieldDefaultGap = SizedBox(
    height: 16,
  );
  var _formKey=GlobalKey<FormState>();
  TextEditingController nameTextEditingController=TextEditingController();
  TextEditingController emailTextEditingController=TextEditingController();
  TextEditingController passwordTextEditingController=TextEditingController();
  bool visiblePassword = false;
   XFile? pickedXFile;
   String defaultImage="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrWl3NFJnWwwjlBSSbNxJcQ2EpYbFhtX4M0Q&s";
  @override
  void initState() {
    //nameTextEditingController.text="AppName";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Registration Screen",style:TextStyle(color: Colors.white,fontSize: 30)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key:_formKey,
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(children: [
            
              
              Image.asset('assets/images/welcome.png'),
              Text("Welcome to the App, Create your Account enjoy the shopping",style:Theme.of(context)
              .textTheme.titleLarge,textAlign: TextAlign.center,
              ),
             textfieldDefaultGap,
             Stack(
               children: [
                pickedXFile!=null ? 
                CircleAvatar(
                  radius: 60,
                  backgroundImage:FileImage(File(pickedXFile!.path)) ,
                  ): CircleAvatar(
                  radius: 60,
                  backgroundImage:CachedNetworkImageProvider(defaultImage) ,
                  ),
                //  CircleAvatar(
                //   radius: 60,
                //  backgroundImage:pickedXFile!=null
                //  ? FileImage(File(pickedXFile.path))
                //  :NetworkImage(defaultImage)
                //  ),
                 Positioned(
                  bottom: 0,right: 10,
                  child: InkWell(
                    onTap: () async{
                     ImagePicker imagePicker= ImagePicker();
                  pickedXFile=  await  imagePicker.pickImage(
                  source: ImageSource.camera,
                  imageQuality: 50,
                  preferredCameraDevice: CameraDevice.front,
                  
                  );
                  if(pickedXFile!=null){
                    setState(() {
                      
                    });
                    print("image picked: ${pickedXFile!.path} ");
                  }else{
                    print("image not picked");
                  }
                    },
                    child: Icon(Icons.photo_camera,size: 32,)))
               ],
             ),
                textfieldDefaultGap,
             // CachedNetworkImage(imageUrl: "https://e7.pngegg.com/pngimages/452/430/png-clipart-welcome-signage-computer-file-welcome-tag-english-sale-tag-thumbnail.png"),
             TextFormField(
              controller: nameTextEditingController,
              validator: (value) {
                if (value == null || value.isEmpty || value.length<6){
                  return "Please enter the Name";
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              onEditingComplete: (){
                print('Moving to next line');
                FocusScope.of(context).nextFocus();
              },
              cursorColor:  Color.fromARGB(255, 18, 185, 54),
                textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 25,color: Colors.pink,),
              maxLength: 100,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                print("value:$value");
                _formKey.currentState!.validate();
              },
              decoration: InputDecoration(
                hintText: "Enter Name",label: Text("Name"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20,),
                ),
                prefixIcon: Icon(Icons.person_2_outlined),
                counterText: ""
              ),
             ),
                 textfieldDefaultGap,
             TextFormField(
            controller: emailTextEditingController,
              validator: (value) {
                final bool emailValid = 
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value ?? "");
      print("emailValid ${emailValid}");
                if(value==null || value.isEmpty){
                  return " Email address should not be empty";
                }else if(!emailValid){
               return "Please enter valid email address";
                }
                return null;
              },
               cursorColor: Colors.teal,
                textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 25,color: Colors.pink,),
               maxLength: 100,
              keyboardType: TextInputType.text,
               textInputAction: TextInputAction.next,
                onEditingComplete: (){
                print('Moving to next line');
                FocusScope.of(context).nextFocus();
              },
              onChanged: (value) {
                 print("value:$value");
                _formKey.currentState!.validate();
              },
              decoration: InputDecoration(
                hintText: "Enter email",label: Text("Email"),
                border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20,),
                ),
                prefixIcon: Icon(Icons.email_outlined),
                counterText: ""
              ),
             ),
             textfieldDefaultGap,
             TextFormField(
          controller: passwordTextEditingController,
              cursorColor: Colors.teal,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25,color: Colors.pink,),
               maxLength: 100,
               obscureText: visiblePassword,
              keyboardType: TextInputType.text,
               textInputAction: TextInputAction.done,
                onEditingComplete: (){
                print('Moving to next line');
                FocusScope.of(context).unfocus();
              },
              onFieldSubmitted: (value){
                 validate();
              },
               //print("passwordValid ${passwprdValid}");
              validator: (value) {
                  if (value == null || value.isEmpty || value.length<8){
                  return "Password should be atleast 8 characters";
                }else (){
                  return "Please enter valid Password";
                };
                return null;
              },
              decoration: InputDecoration(
                
                hintText: "Enter Password",label: Text("Password"),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20,),
                ),
               hoverColor: const Color.fromARGB(255, 231, 14, 141),
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: GestureDetector(
                  onTap: () {
                   
                    setState(() {
                       visiblePassword=!visiblePassword;
                       print(visiblePassword);
                    });
                  },
                  child: Icon(visiblePassword ? Icons.visibility_outlined:Icons.visibility_off_outlined)),
                counterText: ""
              ),
             ),
             textfieldDefaultGap,
             ElevatedButton(onPressed: (){
              FocusScope.of(context).unfocus();
              //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx)=>DashboardScreen()), (route)=>false);
              //Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DashboardScreen()));
              //print(nameTextEditingController.text);
              validate();
              if(pickedXFile == null){
                print("Please select image");
                Fluttertoast.showToast(msg: "Please select image");
              }
             else if( _formKey.currentState!.validate()){
                 print("Processing your request");
                  Fluttertoast.showToast(msg: "File submitted successfully");
    //                Navigator.of(context).pushAndRemoveUntil(
    // MaterialPageRoute(builder: (ctx)=>DashboardScreen()),
    // (route)=>false);
             }else{
              print("Something Went Wrong");

             }
             }, child: Text("Registered")),
             TextButton(onPressed: (){
              nameTextEditingController.clear();
              passwordTextEditingController.clear();
              emailTextEditingController.clear();
             }, child: Text("Clear textfields",style: TextStyle(color: Colors.red),)),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Already Heve Account"))
                 
            ],),
          ),
        ),
      ),
    );

  }
  validate(){
    String name,email,password;
    name=nameTextEditingController.text;
     email=emailTextEditingController.text;
      password=passwordTextEditingController.text;
if(name.isEmpty){
  Fluttertoast.showToast(msg: "Enter valid name");
}else if(email.isEmpty){
  Fluttertoast.showToast(msg: "Enter valid email");
}else  if(password.isEmpty || password.length<8){
  Fluttertoast.showToast(msg: "Enter valid password");
}else{
   Fluttertoast.showToast(msg: "Success");
   
     Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (ctx)=>DashboardScreen(
      email: email,
    )),
    (route)=>false);
  
}
  }
}