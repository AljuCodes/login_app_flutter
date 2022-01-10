
import 'package:flutter/material.dart';
import 'package:login_app_week_4/view/login_page.dart';
import 'package:login_app_week_4/view/quote_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login_App",
  initialRoute: LoginPage.routeName,
    
routes: {
 LoginPage.routeName:(ctx)=>const LoginPage(),
 QuotePage.routeName:(ctx)=>  QuotePage(),

 

},    );
    
  }
}


