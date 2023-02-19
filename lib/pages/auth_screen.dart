
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_one_project/pages/login_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
     //Size in physical pixels
    // var pixelRatio = window.devicePixelRatio;
    // var physicalScreenSize = window.physicalSize;
    // var physicalWidth = physicalScreenSize.width;
    // var physicalHeight = physicalScreenSize.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: const[
                Icon(Icons.border_all_rounded),
                Text('SALES TOP',style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            Image.asset('assets/photo/logo1.png'),
            const Text('Hello!',style: TextStyle(
              fontSize: 40,fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 10,),
            const Text('Welcome to Sales TOP A Platform To\n Manager Read Estate Needs.',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300),),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return SignUpScreen();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    //shape: StadiumBorder(),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(130, 45),
                  ),
                   child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Login'),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    
                  //  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context){
                  //   return const SignUpScreen();
                  //  }));
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    //shape: StadiumBorder(),]
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                    side: BorderSide(),
                    borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(130, 45),
                  ),
                   child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Sign Up',style: TextStyle(color: Colors.black),),
                  ),
                  
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text('Or Sign in with social media',style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}