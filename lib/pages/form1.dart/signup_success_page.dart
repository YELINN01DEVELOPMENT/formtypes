import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:form_one/pages/form1.dart/sign_in_page.dart';

class SignUpSuccessPage extends StatefulWidget {
  SignUpSuccessPage({super.key,required this.name,required this.password,required this.confirmpassword,required this.email});

  late String name;
  late String password;
  late String confirmpassword;
  late String email;



  @override
  State<SignUpSuccessPage> createState() => _SignUpSuccessPageState();
}

class _SignUpSuccessPageState extends State<SignUpSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Success Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email ${widget.email}'),
                Text('Name ${widget.name}'),
                Text('Password : ${widget.password} '),
                Text('Confirm Password : ${widget.confirmpassword}'),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){return LoginPage1();}));
                }, child: const Text('Sign In Page =>'))
              ],
        ),
      )
    );
  }
}