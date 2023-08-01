import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//ignore_for_file: prefer_const_constructors
class login_page extends StatefulWidget{
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final _emailController=TextEditingController();
  final _passController=TextEditingController();

  Future SignIn()  async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(), password: _passController.text.trim()
    );
  }
  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height:784,
            decoration: BoxDecoration(
                     gradient: LinearGradient(
                         colors:  [
                           Color(0xfffdc2430),Color(0xff185a9d),
                         ],
                       begin: FractionalOffset(1.0,0.0),
                       end: FractionalOffset(0.0,1.0),

                     ),
            ),
          child: Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     SizedBox(
                       width: 100,
                       height: 100,
                       child: Image.asset('lib/assets/icons/km_20230204_1080p.mp4'),
                     ),
                      ClipRRect(
                       child:BackdropFilter(
                         filter: ImageFilter.blur(
                           sigmaX: 16.0,
                           sigmaY: 16.0,
                         ),

                         child: Container(
                           height: 320,
                           width: 350,
                           decoration: BoxDecoration(
                               color: Colors.white.withOpacity(0.15),
                               borderRadius: BorderRadius.circular(14),
                               border: Border.all(
                                 width: 1.5,color: Colors.white.withOpacity(0.4),
                               )
                           ),

                           child: SingleChildScrollView(
                             child: Column(

                               children: [

                                 SizedBox(height: 12,),
                                 Text("Sign In with your Corsit ID!!",
                                   style:TextStyle(
                                     fontWeight: FontWeight.bold,fontSize: 16)
                                   ),
                                 SizedBox(height: 20,),
                                 SizedBox(
                                   width: 300,
                                   child: TextField(
                                     controller: _emailController,
                                     decoration: InputDecoration(
                                         prefixIcon: Icon(Icons.email_outlined),
                                         focusedBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(12),
                                             borderSide: BorderSide(
                                               color: Colors.red.withOpacity(0.4),
                                             )
                                         ),
                                         enabledBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(12),
                                             borderSide: BorderSide(
                                               color: Colors.white.withOpacity(0.4),
                                             )

                                         ),
                                         border:OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(12),
                                             borderSide: BorderSide(
                                             )
                                         ),
                                         hintText: 'Email'
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 15,),
                                 SizedBox(
                                   width: 300,
                                   child: TextField(
                                     controller: _passController,
                                     obscureText: true,
                                     decoration: InputDecoration(
                                       prefixIcon: Icon(Icons.key),
                                         enabledBorder: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(12),
                                             borderSide: BorderSide(
                                               color: Colors.white.withOpacity(0.4),
                                             )
                                         ),
                                       focusedBorder: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(12),
                                         borderSide: BorderSide(
                                           color: Colors.red.withOpacity(0.4),
                                         )
                                       ),

                                         border:OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(12),
                                             borderSide: BorderSide(
                                             )
                                         ),
                                         hintText: 'Password'
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 35,),
                                 SizedBox(
                                   height: 50,
                                   width: 300,
                                       child: GestureDetector(
                                         onTap: SignIn,
                                         child: Container(
                                           decoration: BoxDecoration(
                                             color: Colors.blue.withOpacity(0.5),
                                             borderRadius: BorderRadius.circular(13),
                                           ),
                                           child: Center(child: Text('Sign In',style: TextStyle(color: Colors.white),)),
                                         ),
                                       ),

                                   ),
                               ],
                             ),
                           ),

                         ),
                       ),
                     ),

                   ],
                 ),

          ),


          ),
        ),
      ),

    );
  }
}