import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  final String name;
  const ErrorScreen({super.key,this.name=""});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Invalid ${this.widget.name},Please check your route")),
    );
  }
}