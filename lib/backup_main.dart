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


  //  SingleChildScrollView(
  //       child: Column(
  //         children: [
  //           Card(
  //             child: Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Column(
  //                 children: [
  //                   Image.asset('assets/images/sky.jpeg'),
  //                   Text('Sky', 
  //                       style: TextStyle(fontSize: 20, color: Colors.blue),
  //                   ),
  //                   Text('ท้องฟ้า', 
  //                       style: TextStyle(fontSize: 16, color: Colors.blueGrey),
  //                   ),
  //                 ]
  //               ),
  //             ),
  //           ),
  //           SizedBox(height: 20),
  //           Card( 
  //             child: Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Column(
  //                 children: [
  //                   Image.asset('assets/images/sky.jpeg'),
  //                   Text('Sky2', 
  //                       style: TextStyle(fontSize: 20, color: Colors.blue),
  //                   ),
  //                   Text('ท้องฟ้า2', 
  //                       style: TextStyle(fontSize: 16, color: Colors.blueGrey),
  //                   ),
  //                 ]
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),


            //   Icon(Icons.home, size: 50, color: Colors.white),
            // Icon(Icons.search, size: 50, color: Colors.red),
            // Icon(Icons.settings, size: 50, color: Colors.green, shadows: [
            //   Shadow(
            //     color: Colors.black,
            //     offset: Offset(2, 2),
            //     blurRadius: 4,
            //   ),
            // ]),


        //     Material(
        //   color: Colors.pink.shade300,
        //   child: ListTile(
        //     leading: const Icon(Icons.home),
        //     title: const Text('Home'),
        //     subtitle: const Text('Go to home page'),
        //     trailing: const Icon(Icons.arrow_forward),
        //     onTap: () {
        //       // Handle tap event
        //       print('tapped');
        //     },
        //   ),
        // ),



          // Chip(
          //   label: Text('Red'),
          //   avatar: Icon(Icons.tag),
          //   deleteIcon: Icon(Icons.close),            
          //   deleteIconColor: Colors.red,
          //   onDeleted: () {
          //     // Handle delete action
          //     print('Chip deleted');
          //   },
          // ),
          // Chip(
          //   label: Text('Green'),
          //   avatar: Icon(Icons.tag),
          //   deleteIcon: Icon(Icons.close),            
          //   deleteIconColor: Colors.green,
          //   onDeleted: () {
          //     // Handle delete action
          //     print('Chip deleted');
          //   },
          // ),



  //   // เอาไว้เก็บค่าที่ผู้ใช้กรอกใน TextField
  // TextEditingController textFieldController = TextEditingController();

          // TextField(
          //   controller: textFieldController,
          //   decoration: InputDecoration(
          //     labelText: 'Enter your name',
          //     border: OutlineInputBorder(),
          //   ),
          //   onEditingComplete: () {
          //     setState(() {}); // รีเฟรช UI เมื่อผู้ใช้กด Enter
          //   },
          // ),
          // Text(
          //   textFieldController.text.isEmpty
          //       ? 'Please enter your name.'
          //       : 'Hello, ${textFieldController.text}!',
          //   style: TextStyle(fontSize: 24),
          // ),

  // // เอาไว้เก็บสถานะของ Checkbox
  // bool? isChecked = false;

          //  Checkbox(
          //   value: isChecked,
          //   onChanged: (bool? value) {
          //     print('Checkbox value: $value');
          //     setState(() {
          //       isChecked = value;
          //     });
          //   },
          // ),
          // CheckboxListTile(
          //   title: const Text('Checkbox List Tile'),
          //   value: isChecked,
          //   onChanged: (bool? value) {
          //     print('CheckboxListTile value: $value');
          //     setState(() {
          //       isChecked = value;
          //     });
          //   },
          // ),

  // // เอาไว้เก็บสถานะของ Switch
  // bool isSwitched = false;
          // Switch(
          //   value: isSwitched,
          //   onChanged: (bool value) {
          //     setState(() {
          //       isSwitched = value;
          //     });
          //   },
          // ),
          // SwitchListTile(
          //   title: const Text('Switch List Tile'),
          //   value: isSwitched,
          //   onChanged: (bool value) {
          //     setState(() {
          //       isSwitched = value;
          //     });
          //   },
          // ),


  // // เอาไว้เก็บค่าของ Slider
  // double sliderValue = 0;
  //         Slider(
  //           min: 0,
  //           max: 10,
  //           divisions: 10,
  //           value: sliderValue,
  //           onChanged: (value) {
  //             setState(() {
  //               sliderValue = value;
  //             });
  //           },
  //         ),
  //         Text('Value: ${sliderValue.toStringAsFixed(2)}'),



            // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Material(
          //     color: Colors.blue,
          //     child: InkWell(
          //       splashFactory: InkRipple.splashFactory,
          //       splashColor: Colors.indigo,
          //       radius: 200,
          //       onTap: () {
          //         // Handle button tap
          //         print("Tap Inkwell");
          //       },
          //       child: SizedBox(
          //         height: 150,
          //         width: double.infinity,
          //       ),
          //     ),
          //   ),
          //),

          // // GestureDetector
          // GestureDetector(
          //   onTap: () {
          //     print("Tap");
          //   },
          //   onDoubleTap: () {
          //     print("Double Click");
          //   },
          //   onLongPress: () {
          //     print("Holding");
          //   },
          //   onLongPressEnd: (LongPressEndDetails detail) {
          //     print("Holding End");
          //   },
          //   child: Image.asset("assets/images/sky.jpeg"),
          // ),

          // // ElevatedButton
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.green,
          //     foregroundColor: Colors.white,
          //   ),
          //   onPressed: () {
          //     print("Click ElevatedButton");
          //   },
          //   child: Text("ElevatedButton"),
          // ),
          // // FilledButton
          // FilledButton(onPressed: () {}, child: Text("FilledButton")),
          // // TextButton
          // TextButton(onPressed: () {}, child: Text("TextButton")),
          // // OutlinedButton
          // OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),
          // // IconButton
          // IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
          // BackButton(),
          // CloseButton(),

          // // Dropdown Button
          // DropdownButton(
          //   value: selectedDropdown,
          //   items: [
          //     DropdownMenuItem(value: "Cat",child: Text("Cat")),
          //     DropdownMenuItem(value: "Dog",child: Text("Dog")),
          //     DropdownMenuItem(value: "Rabbit", child: Text("Rabbit")),
          //     DropdownMenuItem(value: "Snake", child: Text("Snake")),
          //   ],
          //   onChanged: (String? value) {
          //     print("Dropdown Value: $value");
          //     setState(() {
          //       selectedDropdown = value;
          //     });
          //   },
          // ),

          // // Snackbar
          // FilledButton(
          //   onPressed: () {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       SnackBar(
          //         duration: Duration(minutes: 1),
          //         content: Text("I'm Snackbar"),
          //         behavior: SnackBarBehavior.floating,
          //       ),
          //     );
          //   },
          //   child: Text("Click To Show Snackbar"),
          // ),



          // FilledButton(
          //   onPressed: () {
          //     showDialog(
          //       context: context,
          //       builder: (context) {
          //         return AlertDialog(
          //           title: Text("Alert Title"),
          //           content: Text("Alert Content"),
          //           actions: [
          //             FilledButton(
          //               onPressed: () {
          //                 print("Close Dialog");
          //                 Navigator.pop(context);
          //               },
          //               child: Text("Close this Dialog"),
          //             ),
          //           ],
          //         );
          //       },
          //     );
          //   },
          //   child: Text("Click To Show Alert"),
          // ),