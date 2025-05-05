import 'package:caraka/belajar_pages/belajar_view.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:caraka/info_aplikasi/info.dart';
import 'package:caraka/kuis_pages/kuis_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Menu extends StatefulWidget {
  Menu({super.key});
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
    DashboardBelajar(),
    DashboardKuis(),
    DashboardInfo(),
  ];

  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();
    return Scaffold(
      extendBody: true,
      backgroundColor:  Color(0xFFFFFFFF),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        margin:  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 30,
              offset:  Offset(5, 15))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _navigationBar,
            items:  [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu_book_outlined,
                    size: 30,
                  ),
                  label: penerjemah.translate('bottomnav1')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.quiz_outlined), label: penerjemah.translate('bottomnav2')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings_outlined), label: penerjemah.translate('bottomnav3'))
            ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            backgroundColor:  Color(0xFFFF8080),
          ),
        ),
      ),
    );
  }
}
