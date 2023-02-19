import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'signSuccess_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(Icons.border_all_rounded),
                    Text(
                      'SALES TOP',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                const Text('Welcome Back!', style: TextStyle(fontSize: 30)),
                SizedBox(height: 20),
                const Text(
                  'Sign in to continue',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 50),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter User Name';
                    }
                    return null;
                  },
                  controller: _name,
                  //obscureText: showPassword,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.people),
                      //border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: 'User Name',
                      fillColor: Colors.white),
                ),
                SizedBox(height: 30),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter  Password';
                    }
                    return null;
                  },
                  controller: _password,
                  //obscureText: showPassword,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.keyboard),
                      //border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: 'Password',
                      fillColor: Colors.white),
                ),
                SizedBox(height: 20),
                // TextFormField(
                //   validator: (value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please Enter Confirm Password';
                //     }
                //     return null;
                //   },
                //   controller: _confirmPassword,
                //   // obscureText: showPassword,
                //   decoration: const InputDecoration(
                //       prefixIcon: Icon(Icons.keyboard),
                //       //border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                //       labelText: 'Confirm Password',
                //       fillColor: Colors.white),
                // ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                    onPressed: (){
                          if(_formKey.currentState!.validate()){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return SignUpSuccessPage(name: _name.text, password: _password.text,);
                            }));
                          }
                          
                        },
                    style: ElevatedButton.styleFrom(
                      //shape: StadiumBorder(),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(200, 45),
                    ),
                     child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Login Now'),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Align(alignment: Alignment.center, child: Text('Forget Password ?',style: TextStyle(fontSize: 18),textAlign: TextAlign.center,)),
                const SizedBox(height: 60),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height:45,
                        width: 45,
                        child: FloatingActionButton(
                          heroTag: null,
                          backgroundColor: Color.fromARGB(255, 45, 127, 203),
                          onPressed: () {
                            
                          },
                          //shape: ,
                          child: Text('f',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        height:45,
                        width: 45,
                        child: FloatingActionButton(
                          heroTag: null,
                          backgroundColor: Color.fromARGB(255, 190, 81, 81),
                          onPressed: () {
                            
                          },
                          //shape: ,
                          child: Text('G',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        height:45,
                        width: 45,
                        child: FloatingActionButton(
                          heroTag: null,
                          backgroundColor: Color.fromARGB(255, 43, 34, 221),
                          onPressed: () {
                            
                          },
                          //shape: ,
                          child: Text('in',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Align(alignment: Alignment.center, child: RichText(
                  text:TextSpan(
                    text:'Don\'t have an account? ',
                    style: TextStyle(fontSize: 20,color: Colors.black38),
                    children:  <TextSpan>[
                      TextSpan(text:'Sign up',style: TextStyle(color: Colors.black87)),
                    ]
                    
                  )
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
