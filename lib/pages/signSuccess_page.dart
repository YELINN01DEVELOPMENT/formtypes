import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_one_project/pages/auth_screen.dart';
//import 'package:form_one/pages/form1.dart/sign_in_page.dart';

class SignUpSuccessPage extends StatefulWidget {
  SignUpSuccessPage({super.key,required this.name,required this.password,});

  late String name;
  late String password;
  // late String confirmpassword;
  // late String email;



  @override
  State<SignUpSuccessPage> createState() => _SignUpSuccessPageState();
}

class _SignUpSuccessPageState extends State<SignUpSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Success Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Text('Email ${widget.email}'),
                Text('Name ${widget.name}'),
                Text('Password : ${widget.password} '),
                //Text('Confirm Password : ${widget.confirmpassword}'),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return AuthScreen();}));
                }, child: const Text('Auth Screen'))
              ],
        ),
      )
    );
  }
}