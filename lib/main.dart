import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utlis/routes.dart';
import 'pages/home_page.dart';

 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    initialRoute: "/",
      routes: {
        "/":(context) => login_page(),
        MyRoutes.homenroute:(context)=> homePage(),
        MyRoutes.loginroute:(context) => login_page(),
      },
    );
    
  }
}
