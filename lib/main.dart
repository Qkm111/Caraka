import 'package:caraka/belajar_pages/list/list_angka.dart';
import 'package:caraka/belajar_pages/list/list_gajang.dart';
import 'package:caraka/belajar_pages/list/list_raja.dart';
import 'package:caraka/belajar_pages/list/list_rekaan.dart';
import 'package:caraka/belajar_pages/list/list_sandhangan.dart';
import 'package:caraka/belajar_pages/list/list_sowara.dart';
import 'package:caraka/info_aplikasi/about.dart';
import 'package:caraka/kuis_pages/kuis_view.dart';
import 'package:caraka/utama_pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:caraka/utama_pages/splashscreen.dart';
import 'package:caraka/belajar_pages/belajar_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routes: {
        '/': (context) => SplashScreen(),
        '/menu': (context) => const Menu(),
        '/teori': (context) => const DashboardBelajar(),
        '/kuis': (context) => const DashboardKuis(),
        '/info': (context) => const DashboardInfo(),
        '/gajang': (context) => const ListGajang(),
        '/angka': (context) => const ListAngka(),
        '/raja': (context) => const ListRaja(),
        '/rekaan' :(context) => const ListRekaan(),
        '/sowara' :(context) => const ListSowara(),
        '/sandhangan' :(context) => const ListSandhangan(),
      },
      initialRoute: '/',
    );
  }
}
