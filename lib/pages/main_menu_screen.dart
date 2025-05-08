import 'package:flutter/material.dart';
import 'package:ios_fl_n_wildrama_3398/pages/journal/journal_screen.dart';
import 'package:ios_fl_n_wildrama_3398/pages/research/research_screen.dart';
import 'package:ios_fl_n_wildrama_3398/pages/settings/settings_screen.dart';
import 'package:ios_fl_n_wildrama_3398/pages/track/track_screen.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int _selectedIndex = 3;

  final List<Widget> _screens = [
    SettingsScreen(),
    JournalScreen(),
    ResearchScreen(),
    TrackScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C09),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: const Color(0xFF0C0C09),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: List.generate(4, (index) {
          final iconIndex = index + 1;
          final isSelected = _selectedIndex == index;
          return BottomNavigationBarItem(
            label: '',
            icon: Image.asset(
              'assets/images/menu_icons/${iconIndex}${isSelected ? '_on' : ''}.png',
              width: 32,
              height: 32,
            ),
          );
        }),
      ),
    );
  }
}
