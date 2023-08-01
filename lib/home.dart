//ignore_for_file: prefer_const_constructors
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rocsit/homepages/members.dart';
import 'package:rocsit/homepages/navbar.dart';
import 'package:rocsit/homepages/projects.dart';


class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: Color(0xff17203A),
                foregroundColor: Colors.white, //here you can give the text color
            )
        ),
      home: Scaffold(
        backgroundColor: Colors.white,
      drawer: navbar(),
        appBar: AppBar(
          title: Text('CORSIT',style: TextStyle(color:Colors.white),),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //projects InkWell(
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => projects()),
                  );
                },

                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)
                  ),
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10,10,10,0),
                    height: 190,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(

                            fit: BoxFit.cover,
                            image: AssetImage('lib/assets/images/home-made-robot-desk.jpg'))),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 2,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(child: Text(
                            'PROJECTS',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color:Colors.white),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),//
SizedBox(height: 12,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => projects()),
                  );
                },

                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)
                  ),
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10,10,10,0),
                    height: 190,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/assets/images/Compo.jpg'))),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 2,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(child: Text(
                            'COMPONENTS',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color:Colors.white),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //alumni
              SizedBox(height: 12,),

              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => projects()),
                  );
                },

                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)
                  ),
                  margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10,10,10,0),
                    height: 190,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/assets/images/business-people-casual-meeting (1).jpg'),)),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 1.5,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(child: Text(
                            'ALUMNI',style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color:Colors.white),)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),//



            ],
          ),
        ),
      ),
    );
  }
}
