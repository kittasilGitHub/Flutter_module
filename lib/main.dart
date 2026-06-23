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
          colorScheme: .fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Flutter App'),
      //debugShowCheckedModeBanner: true,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset('assets/images/sky.jpeg'),
                    Text('Sky', 
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Text('ท้องฟ้า', 
                        style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                    ),
                  ]
                ),
              ),
            ),
            SizedBox(height: 20),
            Card( 
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset('assets/images/sky.jpeg'),
                    Text('Sky2', 
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Text('ท้องฟ้า2', 
                        style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                    ),
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 183, 171, 58)),