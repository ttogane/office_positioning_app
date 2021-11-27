import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  var _navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin_circle),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'account',
        ),
      ],
      onTap: (int index) {
        setState(
          () {
            _navIndex = index;
          },
        );
      },
      currentIndex: _navIndex,
    );
  }
}
