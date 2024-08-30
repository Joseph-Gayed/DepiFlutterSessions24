import 'package:flutter/material.dart';
import 'package:flutter_session_05/screens.dart';

class BottomNavContainer extends StatefulWidget {
  const BottomNavContainer({super.key});

  @override
  State<BottomNavContainer> createState() => _BottomNavContainerState();
}

class _BottomNavContainerState extends State<BottomNavContainer> {
  int selectedPage = 0;

  late List<Widget> _pages;
  late List<BottomNavigationBarItem> _tabs;

  @override
  void didChangeDependencies() {
    _pages = [
      HomePage(firstButtonNavigation: () {
        updateSelectedPage(1);
      }, secondButtonNavigation: () {
        updateSelectedPage(2);
      }),
      ProfilePage(
          firstButtonNavigation: homeNavigation,
          secondButtonNavigation: settingsNavigation),
      SettingsPage(
          firstButtonNavigation: homeNavigation,
          secondButtonNavigation: profileNavigation)
    ];

    _tabs = const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
    ];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedPage],

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: selectedPage,
        items: _tabs,
        onTap: (newIndex) => updateSelectedPage(newIndex),
      ),
    );
  }

  void updateSelectedPage(int newIndex) {
    setState(() {
      selectedPage = newIndex;
    });
  }

  void homeNavigation() {
    updateSelectedPage(0);
  }

  void profileNavigation() {
    updateSelectedPage(1);
  }

  void settingsNavigation() {
    updateSelectedPage(2);
  }
}
