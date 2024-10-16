import 'package:flutter/material.dart';
import 'package:juice_app_1/dashboard_screen.dart';
import 'package:juice_app_1/error_screen.dart';
import 'package:juice_app_1/login.dart';
import 'package:juice_app_1/registration_screen.dart';
import 'package:juice_app_1/splas_screen.dart';
var onGenerateRoute=(RouteSettings settings){
if(settings.name=="/"){
  return MaterialPageRoute(builder: (builder)=>SplasScreen());
}else if(settings.name=="/login"){
 return MaterialPageRoute(builder: (builder)=>Login());


}else if(settings.name==DashboardScreen.routeName){
 return MaterialPageRoute(builder: (builder)=>DashboardScreen(
  email: (settings.arguments as List)[1].toString(),
 ));
  // return MaterialPageRoute(builder: (builder)=>ErrorScreen(
  //   name:settings.name ?? "",));

}
};
// class AppRoutes extends StatefulWidget {
//   const AppRoutes({super.key});

//   @override
//   State<AppRoutes> createState() => _AppRoutesState();
// }

// class _AppRoutesState extends State<AppRoutes> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(

//     );
//   }
// }