import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rocsit/home.dart';
import 'package:rocsit/homepages/members.dart';
import 'package:rive/rive.dart';
//ignore_for_file: prefer_const_constructors

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);
   get user => FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Color(0xff17203A),
        child: ListView(
          children:<Widget> [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white38,
                child: Icon(Icons.person_2_outlined,color: Colors.white,),
              ),
              title: Text(user.email!,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: SizedBox(
                height: 34,
                width: 34,
                child: RiveAnimation.asset('lib/assets/icons/1298-2487-animated-icon-set-1-color.riv',artboard: "HOME",),
              ),
                title: Text('Home',style: TextStyle(color: Colors.white),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => home()),
                );
              } ,
            ),
            ListTile(
              leading: Icon(Icons.group,color: Colors.white),
              title: Text('Alumni',style: TextStyle(color: Colors.white)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => members()),

                );
              } ,
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_sharp,color: Colors.white),
              title: Text('Sign Out',style: TextStyle(color: Colors.white)),
              onTap: (){
                FirebaseAuth.instance.signOut();

              } ,
            ),

          ],
        ),
      ),
    );
  }
}
