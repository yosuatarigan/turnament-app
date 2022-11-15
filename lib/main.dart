import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List number = [2, 6, 15, 7];
  var no1, no2, no3, no4;
  var node1, node2, node3, node4, node5, node6, node7;

  void turnamentsort() {
    node1 = number[0];
    node2 = number[1];
    node3 = number[2];
    node4 = number[3];
    if (node1 < node2) {
      node5 = node1;
    } else {
      node5 = node2;
    }

    if (node3 < node4) {
      node6 = node3;
    } else {
      node6 = node4;
    }

    if (node5 < node6) {
      node7 = node5;
      no1 = node7;
    } else {
      node7 = node6;
      no1 = node7;
    }

    if (node1 != no1) {
      if (node1 < node6) {
        no2 = node1;
      } else {
        no2 = node6;
      }
    } else {
      {
        if (node2 < node6) {
          no2 = node2;
          no3 = node6;
          if (node3 < node4 && node3 != no2) {
            no4 = node4;
          } else {
            no4 = node3;
          }
        } else {
          no2 = node6;
        }
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "List Number : ${number.toString().replaceAll('[', '').replaceAll(']', '')}",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(no1.toString()),
                Text('-'),
                Text(no2.toString()),
                Text('-'),
                Text(no3.toString()),
                Text('-'),
                Text(no4.toString()),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: turnamentsort,
            tooltip: 'Increment',
            child: const Text('Sort'),
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              setState(() {
                node1 = '';
                node2 = '';
                node3 = '';
                node4 = '';
                node5 = '';
                node6 = '';
                node7 = '';
                no1 = '';
                no2 = '';
                no3 = '';
                no4 = '';
              });
            },
            tooltip: 'Increment',
            child: const Text('Reset'),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
