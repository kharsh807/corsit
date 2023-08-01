import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rocsit/home.dart';
import 'package:rocsit/loginpage.dart';

import 'login.dart';

class mainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return home();
            }
            else{
              return login();
            }
          },
        )
    );
  }
}