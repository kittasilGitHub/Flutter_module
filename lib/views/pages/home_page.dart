import 'package:first_app/bloc/counter/counter_bloc.dart';
import 'package:first_app/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Home Page"),
          Text("Bloc Counter Value"),
          // blocbuilder is used to listen to the state changes 
          // and rebuild the widget when the state changes
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                "${state.counter}",
                style: Theme.of(context).textTheme.headlineMedium,
              );
            },
          ),
        ],
      ),
    );
  }
}
