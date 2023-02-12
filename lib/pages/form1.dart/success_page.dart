import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SuccessPage extends StatelessWidget {
   SuccessPage({super.key,required this.name,required this.password,required this.rememberMe});
  late String name;
  late String password;
  late bool rememberMe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Success Login Page'),
      ),
      body:  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text('Name $name'),
                Text('Password : $password '),
                Text('RememberMe : $rememberMe')
              ],
        ),
      )
    );
  }
}