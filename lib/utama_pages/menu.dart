import 'package:caraka/belajar_pages/belajar_view.dart';
import 'package:caraka/info_aplikasi/about.dart';
import 'package:caraka/kuis_pages/kuis_view.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const DashboardBelajar(),
    const DashboardKuis(),
    const DashboardInfo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xFFFFFFFF),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 30,
              offset: const Offset(5, 15))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _navigationBar,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu_book_outlined,
                    size: 30,
                  ),
                  label: 'Ajhâr'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.quiz_outlined), label: 'Kuis'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info_outline), label: 'Tentang')
            ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            backgroundColor: const Color(0xFFFF8080),
          ),
        ),
      ),
    );
  }
}
