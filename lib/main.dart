import 'dart:async';

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
      title: 'Lab N1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      home: const MyHomePage(title: 'Lab N1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _time = 0;
    void _initTimer() {
      _time = 0;
  Timer timer = Timer.periodic(const Duration(seconds: 1), (timer) {
    setState(() {
          _time++;
    });
  });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text("Timer:", style: TextStyle(fontSize: 50)), 
            Text('$_time', style: TextStyle(fontSize: 45), selectionColor: Theme.of(context).colorScheme.inversePrimary)
            ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: .center,
        children: [
          FloatingActionButton(
            onPressed: _initTimer,
            tooltip: 'Start Timer',
            child: const Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
