import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:form_one/pages/form1.dart/sign_in_page.dart';
import 'package:form_one/pages/form1.dart/signup_success_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  
  get email => null;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

  bool showPassword = false;
  class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Material(
        child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children:[
               Positioned(
                top: 100,
                left: 20,
                right: 20,
                 child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 600,
                  decoration:  BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(5, 5),
                          blurRadius: 5.0,
                          spreadRadius: 0.5,
                      )
                    ],
                    color: const Color.fromARGB(255, 251, 248, 248),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Container(padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                          //   decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(8)
                          //   ),
                          //   child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          //     children: const [Icon(Icons.person,color:Color.fromARGB(255, 37, 20, 223),),Text('Sing In',style: TextStyle(color:Color.fromARGB(255, 37, 20, 223)),)],
                              
                          //   ),
                          // ),
                          Container(padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 37, 20, 223),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: const [Icon(Icons.person,color: Colors.white,),Text('Sing Up',style: TextStyle(color: Colors.white),)],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                       TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return 'Please Enter Email Address';
                          }
                          return null;
                        },
                        controller: _email,
                        decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        labelText: 'Email',
                        fillColor: Colors.white
                      ),
                      ),
                      const SizedBox(height: 15,),
                       TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                        controller: _name,
                        decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        labelText: 'UserName',
                        fillColor: Colors.white
                      ),
                      ),
                      SizedBox(height: 10,),
                       TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return 'Please Enter Password';
                          }
                          return null;
                        },
                        controller: _password,
                        obscureText: showPassword,
                        decoration: InputDecoration(
                        prefixIcon: Icon(Icons.keyboard),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        labelText: 'Password',
                        fillColor: Colors.white
                      ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return 'Please Enter Confirm Password';
                          }
                          return null;
                        },
                        controller: _confirmPassword,
                        obscureText: showPassword,
                        decoration: InputDecoration(
                        prefixIcon: Icon(Icons.keyboard),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        labelText: 'Confirm Password',
                        fillColor: Colors.white
                      ),
                      ),
                      SizedBox(height: 10,),
                      InkWell(
                        onTap: (){
                          setState(() {
                            showPassword = !showPassword; 
                          });
                        },
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: Text('show password',style: TextStyle(color: Colors.blue))),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return SignUpSuccessPage(name: _name.text, password: _password.text, confirmpassword: _confirmPassword.text, email: _email.text,);
                            }));
                          }
                          
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.person_add,color: Colors.white,),
                              SizedBox(width: 10),
                              Text('Sing Up',)
                            ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 60,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70
                        ),
                        child: Row( 
                          children:  [
                            Text('Do you have an account?'),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return LoginPage1();
                                }));
                              },
                              child: Text(' Sign In',style: TextStyle(color: Colors.blue),)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
               )
            ]
          ),
      ),
    );
  }
}