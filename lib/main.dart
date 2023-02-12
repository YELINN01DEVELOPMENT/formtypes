import 'package:flutter/material.dart';
import 'package:form_one/pages/home_page.dart';
import 'package:form_one/pages/form1.dart/sign_in_page.dart';
import 'package:form_one/pages/form1.dart/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        primaryColor:Color.fromARGB(255, 37, 20, 223)
      ),
      home: const HomePage(),
      
    
  //     routes: <String, WidgetBuilder> {
  //   '/': (BuildContext context) =>  const HomePage(),
  //   '/login_page_1': (BuildContext context) => const LoginPage1(),
  //   '/sign_up_page': (BuildContext context) => const SignUpPage()
  // },
    );
  }
}
