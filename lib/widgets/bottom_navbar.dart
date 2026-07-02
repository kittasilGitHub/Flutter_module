import 'package:first_app/bloc/page/page_bloc.dart';
import 'package:first_app/bloc/page/page_event.dart';
import 'package:first_app/bloc/page/page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the PageBloc
    final pageBloc = context.read<PageBloc>();
    // Access the selectedPage from the PageBloc state
    final selectedPage = context.watch<PageBloc>().state.selectedPage;

    return BlocBuilder<PageBloc, PageState>(
      builder: (context, state) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
          ],
          onDestinationSelected: (value) {
            pageBloc.add(PageChangeEvent(value));
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
