import 'dart:math';

import 'package:app/service/ServiceApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../util.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late User user;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            CupertinoButton(
                onPressed: () => setState(() {
                  _counter--;
                }),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12)),
                  height: 50,
                  width: 200,
                  child: const Center(
                    child: Text(
                      'Error',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )),
            CupertinoButton(
                child: createContainer(), onPressed: () => setState(() {})),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget createContainer() {
    return Container(
      height: 90,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.blue.shade400, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(
          '${getRandom()}',
          style: const TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }

  List<Color> initList() {
    List<Color> l = [Colors.green];
    return l;
  }
}

class User {
  String name;
  int age;

  User(this.name, this.age);
}


