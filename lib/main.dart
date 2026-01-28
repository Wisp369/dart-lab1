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
  final stopwatch = Stopwatch();

  void startStopwatch() {
    setState(() {
      stopwatch.start();
    });
  }

  void stopStopwatch() {
    setState(() {
      stopwatch.stop();
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
            Text('$stopwatch', style: TextStyle(fontSize: 45), selectionColor: Theme.of(context).colorScheme.inversePrimary)
            ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: .center,
        children: [
          FloatingActionButton(
            onPressed: startStopwatch,
            tooltip: 'Start Timer',
            child: const Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
