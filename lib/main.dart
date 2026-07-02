import 'package:first_app/bloc/counter/counter_bloc.dart';
import 'package:first_app/views/main_tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      // BlocProvider is used to provide the CounterBloc to the widget tree.
      home: BlocProvider(
        create: (context) => CounterBloc(), // Create an object of CounterBloc,
        child: const MainTreeWidget(title: 'Flutter App'),
      ),
    );
  }
}
