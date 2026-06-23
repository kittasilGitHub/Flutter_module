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

  // // 1. ตัวแปรเก็บจำนวนตัวเลข เริ่มต้นที่ 0

  // // 2. ฟังก์ชันเมื่อกดปุ่ม
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++; // เพิ่มค่าตัวเลขทีละ 1
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[200],
        child: Row(
          // แนวนอนของ Row
          mainAxisAlignment: MainAxisAlignment.center,
          // แนวตั้งของ Row         
          crossAxisAlignment: CrossAxisAlignment.start,
          // ขนาดของ Row
          mainAxisSize: MainAxisSize.max,
          // ระยะห่างระหว่าง Widget
          spacing: 50,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                    "Hello World",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
              ),
              width: 100,
              height: 100,
              child: Center(
                child: Text(
                    "Hello World",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
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



// child: Image.network(
      //   'https://images.pexels.com/photos/66997/pexels-photo-66997.jpeg',
      //   width: 200,
      //   height: 200,
   // ),

// child: Image.asset(
    //   'assets/images/sky.jpeg',
    //   //width: 200,
    //   //height: 200,
  // ),



  // Column(
  //       children: [
  //         Container(
  //           height: 200,
  //           color: Colors.green[200],
  //         ),
  //         Stack(
  //           children: [
  //             Image.asset('assets/images/sky.jpeg', fit: BoxFit.cover),
  //             Text('Hello World',style: TextStyle(fontSize: 30, color: Colors.white)),
  //           ],
  //         ),
  //         Container(
  //           height: 200,
  //           color: Colors.blue[200],
  //         ),
  //       ],
  //     ),



  // SingleChildScrollView(
  //       child: Column(
  //         spacing: 100,
  //         children: [
  //           Container(
  //             width: double.infinity,
  //             height: 200,
  //             color: Colors.green[200],
  //           ),
  //           Divider(
  //             color: Colors.black,
  //             thickness: 5,
  //           ),
  //           Container(
  //             width: double.infinity,
  //             height: 200,
  //             color: Colors.blue[200],
  //           ),
  //           Container(
  //             width: double.infinity,
  //             height: 200,
  //             color: Colors.red[200],
  //           ),
  //         ],
  //       ),
  //     ),



  // Container(
  //       color: Colors.green[200],
  //       padding: const EdgeInsets.all(20),
  //       margin: const EdgeInsets.all(30),
  //       child: Image.asset('assets/images/sky.jpeg'),
  //     ), 