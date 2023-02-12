import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'form1.dart/sign_in_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
           Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return const LoginPage1();
            },));
          },
          child:const Text('Form_one')),
          ElevatedButton(onPressed: () {
            
          },
          child:const Text('Form_Two')),
          ElevatedButton(onPressed: () {
            
          },
          child:const Text('Form_Three')),
          ElevatedButton(onPressed: () {
            
          },
          child:const Text('Form_Four')),
        ],
      ),
    );
  }
}