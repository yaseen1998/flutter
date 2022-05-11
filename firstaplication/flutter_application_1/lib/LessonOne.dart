import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.teal,
              leading: const Icon(Icons.home, color: Colors.red),
              title: const Text('hi'),
              actions: const [
                Icon(Icons.add),
                Icon(Icons.search),
                Icon(Icons.center_focus_weak_sharp),
              ]),
          body: Container(
            alignment: Alignment.center,
            // color: Colors.teal[900],
            // color:const Color(0xFE00F5F5),
            // color:const Color.fromARGB(155, 0, 0,255),
            // color:const Color.fromRGBO(255, 0, 0, 0.5),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text('Hello, world!',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.combine([
                          TextDecoration.underline,
                          TextDecoration.overline
                        ]),
                        decorationColor: Colors.blue,
                        decorationStyle: TextDecorationStyle.dashed,
                        decorationThickness: 3,
                        wordSpacing: 2,
                        letterSpacing: 5,
                        height: 4,
                        shadows: const <Shadow>[
                          Shadow(
                              color: Colors.blue,
                              blurRadius: 5,
                              offset: Offset(10, -3)),
                          Shadow(
                              color: Colors.yellow,
                              // blurRadius: 5,
                              offset: Offset(10, 5))
                        ],
                        backgroundColor: Colors.black)),
                const Text('Hello, world!'),
                const Text('Hello, world!'),
                const Text('Hello, world!'),
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(onPressed: () {}, child: const Text('A')),
                  OutlineButton(onPressed: () {}, child: const Text('B')),
                  RaisedButton(onPressed: (){}, child: const Text('C')),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  TextButton(onPressed: () {}, child: const Text('Text')),
                  OutlinedButton(onPressed: () {}, child: const Text('out')),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('elevated')),
                  TextButton.icon(
                    autofocus: true,
                      onPressed: () {},
                      icon: const Icon(Icons.abc),
                      label: const Text('Icon'))
                ],
              )
            ]),
          ),
        ));
  }
}
