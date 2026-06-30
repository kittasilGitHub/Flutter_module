import 'package:first_app/data/notifier.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "Home"),
              NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
            ],
            onDestinationSelected: (value) {
              selectedPageNotifier.value = value;
            },
            selectedIndex: selectedPage,
          );
      }
    );
  }
}