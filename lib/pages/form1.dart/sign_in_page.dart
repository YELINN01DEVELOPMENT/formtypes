import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:form_one/pages/form1.dart/sign_up_page.dart';
import 'package:form_one/pages/form1.dart/success_page.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});
 

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  final _formKey = GlobalKey<FormState>();
    bool rememberValue = false;
    bool showPassword = false;
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          shadowColor: Colors.amber,
        ),
        body: Material(
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
                  height: 500,
                  decoration:  BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(5, 5),
                          blurRadius: 5.0,
                          spreadRadius: 0.5,
                      )
                    ],
                    //color:  Color.fromRGBO(255, 255, 255, 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 37, 20, 223),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: const [Icon(Icons.person,color: Colors.white,),Text('Sign In',style: TextStyle(color: Colors.white),)],
                            ),
                          ),
                          // Container(padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                          //   decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.circular(8)
                          //   ),
                          //   child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          //     children: const [Icon(Icons.person,color:Color.fromARGB(255, 37, 20, 223),),Text('Sign Up',style: TextStyle(color:Color.fromARGB(255, 37, 20, 223)),)],
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                       Container(
                        color: Colors.white,
                         child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter  name';
                            }
                            return null;
                          },
                          controller: nameController,
                          obscureText: false,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          labelText: 'UserName',
                          fillColor: Colors.white
                      ),
                      ),
                       ),
                      SizedBox(height: 10,),
                       TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        controller: passwordController,
                        obscureText: showPassword,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                        prefixIcon: Icon(Icons.keyboard),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        labelText: 'Password',
                        fillColor: Colors.white
                      ),
                      ),
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
                      const SizedBox(height: 10,),
                      InkWell(
                        onTap: () {
                          
                        },
                        child: Text('Forget Password?')
                      ),
                      CheckboxListTile(
                        activeColor: Color.fromARGB(255, 7, 52, 255),
                        contentPadding: const EdgeInsets.only(left: -3),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: rememberValue ,
                        onChanged: (bool? value){
                          setState(() {
                            rememberValue = value!; 
                          });
                        },
                        title: const Text('Remember Me'),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        
                        onPressed: (){
                          if (_formKey.currentState!.validate()) {
    
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   const SnackBar(content: Text('Success login')),
                            //);
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return SuccessPage(name: nameController.text, password: passwordController.text, rememberMe: rememberValue);
                                }));
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.login,color: Colors.white,),
                              SizedBox(width: 10),
                              Text('Sign In',style: TextStyle(color: Colors.white),)
                            ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 60,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70,
                        ),
                        child: Row(
                          children:  [
                            const Text('Don\'t have an account?'),
                            InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return SignUpPage();
                                }));
                              },
                              child: Text(' Sign Up',style: TextStyle(color: Colors.blue),),)
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
      ),
    );
      
  }

}