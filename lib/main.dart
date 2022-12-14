import "package:flutter/material.dart";
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
// import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.LightTheme(context),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: '/home',
      routes: {
        "/" :(context) => HomePage(),
        MyRoutes.homeRoute :(context) => HomePage(),
        MyRoutes.loginRoute :(context) => LoginPage(),
      },
    );
  }
}