import 'package:caraka/belajar_pages/list/list_angka.dart';
import 'package:caraka/belajar_pages/list/list_gajang.dart';
import 'package:caraka/belajar_pages/list/list_raja.dart';
import 'package:caraka/belajar_pages/list/list_rekaan.dart';
import 'package:caraka/belajar_pages/list/list_sandhangan.dart';
import 'package:caraka/belajar_pages/list/list_sowara.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:caraka/info_aplikasi/info.dart';
import 'package:caraka/kuis_pages/kuis_view.dart';
import 'package:caraka/utama_pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:caraka/utama_pages/splashscreen.dart';
import 'package:caraka/belajar_pages/belajar_view.dart';
import 'package:provider/provider.dart';

final supportedLocales = [
  Locale('id'),
  Locale('mad')
];

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ChangeNotifierProvider(
      create: (_) => AppLocalization(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routes: {
        '/': (context) => SplashScreen(),
        '/menu': (context) => Menu(),
        '/teori': (context) => DashboardBelajar(),
        '/kuis': (context) => DashboardKuis(),
        '/info': (context) => DashboardInfo(),
        '/gajang': (context) => ListGajang(),
        '/angka': (context) => ListAngka(),
        '/raja': (context) => ListRaja(),
        '/rekaan' :(context) => ListRekaan(),
        '/sowara' :(context) => ListSowara(),
        '/sandhangan' :(context) => ListSandhangan(),
      },
      initialRoute: '/',
    );
  }
}
