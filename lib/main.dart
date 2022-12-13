import "package:flutter/material.dart";
import 'package:flutter_catalog/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

  String name = "Anant";

    return MaterialApp(
      home: HomePage()
    );
  }
}