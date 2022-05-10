import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> question = ['', ''];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter Demo'),
            ),
            body: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text('hello world'),
                      Text('hello world'),
                      Text('hello world'),
                    ]))));
  }
}


// return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: const Text('Flutter Demo'),
//             ),
//             body: Center (child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const <Widget>[
//                   Text('hello world'),
//                   Text('hello world'),
//                   Text('hello world'),
//                 ]))));