import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/generate_password.dart';
import'package:note/splash_screen.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: Splash(),
    );
  }
}
