
import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        leading : const Icon(
          Icons.home,
          color:Colors.red
          ),
        title: const Text('hi'),
        actions : const [
          Icon(Icons.add),
          Icon(Icons.search),
          Icon(Icons.center_focus_weak_sharp),
          
        ]
      ),
      body:  Container(
        color: Colors.teal[900],
        // color:const Color(0xFE00F5F5),
        // color:const Color.fromARGB(155, 0, 0,255),
        // color:const Color.fromRGBO(255, 0, 0, 0.5),
        child: const Text('Hello, world!'),
      ),
    ));
  }
}
