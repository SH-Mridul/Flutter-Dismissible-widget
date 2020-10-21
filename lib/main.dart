// import 'package:MusicApp/pages/PageOne.dart';
// import 'package:MusicApp/pages/PageTwo.dart';
// import 'dart:ui';
// import 'package:toast/toast.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage()
  ));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
          appBar: AppBar(
            title: Text('Dismissible Widget'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Center( 
            child: Dismissible(
              key: ValueKey('Abc'),
              secondaryBackground: Container(
                color:Colors.red,
                child:Icon(Icons.delete,size: 40,)
              ),

              background: Container(
                color:Colors.blue,
                child:Icon(Icons.delete,size:40)
              ),

              child:Card(
                child: ListTile(
                title: Text('Mridul Hossain'),
                trailing: Icon(Icons.person),
              )
              )
              ),
          ),
      )
    );
  }
}
