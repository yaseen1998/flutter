import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  buttonOnPressed(msg) {
    print('Button pressed $msg');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.teal,
              elevation: 0,
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
                  RaisedButton(onPressed: () {}, child: const Text('C')),
                  IconButton(
                      onPressed: () {
                        print('button');
                      },
                      icon: const Icon(Icons.add)),
                  TextButton(
                      onPressed: () => print('Text button'),
                      child: const Text('Text')),
                  OutlinedButton(
                      onPressed: () => buttonOnPressed('hello'),
                      child: const Text('out')),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('elevated')),
                  TextButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        // padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.fromLTRB(5, 10, 20, 10)),
                        elevation: MaterialStateProperty.all(100.0),
                      ),

                      // autofocus: true,
                      onPressed: () {},
                      icon:
                          const Icon(Icons.night_shelter, color: Colors.white),
                      label: const Text('Icon')),
                  FloatingActionButton.extended(
                    label: const Text(
                        'add'), // you can remove extended and remove label and replace icon to child
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      side: BorderSide(
                          color: Colors.black,
                          width: 2,
                          style: BorderStyle.solid),
                    ),
                    splashColor: Colors.yellow,
                  ),
                ],
              )
            ]),
          ),
          floatingActionButton: FloatingActionButton.extended(
            label: const Text(
                'add'), // you can remove extended and remove label and replace icon to child
            onPressed: () {},
            icon: const Icon(Icons.add),
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              side: BorderSide(
                  color: Colors.black, width: 2, style: BorderStyle.solid),
            ),
            splashColor: Colors.yellow,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        ));
  }
}
