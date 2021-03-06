import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagramcloneflutter/LoginScreen.dart';
import 'package:instagramcloneflutter/RegisterPage.dart';
import 'package:instagramcloneflutter/homePage.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/login':(context)=>LoginScreen(),
        '/register':(context)=>RegsiterPage(),
        '/home':(context)=>HomePage()
      },
    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),()=>Navigator.of(context).pushNamed('/login'));
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1,0.5,0.7,0.9],
            colors: [
              Colors.blue,
              Colors.redAccent,
              Colors.red[500],
              Colors.red,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                FlutterLogo(size: 50.0,),
                CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}


