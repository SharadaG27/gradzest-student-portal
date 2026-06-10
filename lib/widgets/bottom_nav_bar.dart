import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,

      type: BottomNavigationBarType.fixed,

      backgroundColor: Colors.white,

      elevation: 10,

      selectedItemColor: const Color(0xFF2B3674),

      unselectedItemColor: const Color(0xFF9CA3AF),

      selectedFontSize: 12,
      unselectedFontSize: 12,

      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w600,
      ),

      items: const [
        BottomNavigationBarItem(
  icon: Icon(Icons.dashboard_outlined),
  activeIcon: Icon(Icons.dashboard),
  label: "Dashboard",
),

        BottomNavigationBarItem(
          icon: Icon(Icons.description_outlined),
          activeIcon: Icon(Icons.description),
          label: "Applications",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.school_outlined),
          activeIcon: Icon(Icons.school),
          label: "Universities",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          activeIcon: Icon(Icons.chat_bubble),
          label: "Chat",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}