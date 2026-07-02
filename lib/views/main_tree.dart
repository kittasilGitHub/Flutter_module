import 'package:first_app/bloc/counter/counter_bloc.dart';
import 'package:first_app/bloc/counter/counter_event.dart';
import 'package:first_app/bloc/page/page_bloc.dart';
import 'package:first_app/bloc/page/page_state.dart';
import 'package:first_app/views/pages/home_page.dart';
import 'package:first_app/views/pages/setting_page.dart';
import 'package:first_app/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainTreeWidget extends StatefulWidget {
  const MainTreeWidget({super.key, required this.title});

  final String title;

  @override
  State<MainTreeWidget> createState() => _MainTreeWidgetState();
}

class _MainTreeWidgetState extends State<MainTreeWidget> {
  List<Widget> pages = [Homepage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BlocBuilder<PageBloc, PageState>(
        builder: (context, state) {
          return pages.elementAt(state.selectedPage);
        },
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(IncreaseCounterEvent());
            },
            tooltip: 'Increase',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(DecreaseCounterEvent());
            },
            tooltip: 'Decrease',
            child: Icon(Icons.remove),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
