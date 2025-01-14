import 'package:flutter/material.dart';

class bottomNavbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const bottomNavbar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF00623B),
        items: const [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/home.png'),
              width: 23,
            ),
            backgroundColor: Color(0xFF00623B),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/fav.png'),
              width: 23,
            ),
            backgroundColor: Color(0xFF00623B),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/person.png'),
              width: 23,
            ),
            backgroundColor: Color(0xFF00623B),
            label: 'notification',
          ),
        ],
      ),
    );
  }
}
