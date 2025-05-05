import 'package:caraka/global_utils/belajar_utils/widgets/animasi.dart';
import 'package:caraka/global_utils/belajar_utils/drawer/customdraw.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListRaja extends StatelessWidget {
  ListRaja({super.key});

  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();
    return Scaffold(
      backgroundColor: Color(0xFFFF0000),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(backgroundColor: Color(0xFFF00000)),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFFF0000),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0, left: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 56.0),
                  child: Container(
                    height: 133,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFF8B195),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.navigate_before,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Aksara Rajâ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8),
                          Image.asset(
                            'assets/ic_menu/dashboard-raja.png',
                            height: 72,
                            width: 72,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 200),
                      Text(
                        penerjemah.translate('petunjukanimasi'),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                ListMenu(
                  name: 'Na',
                  image: 'assets/ic_raja/Na.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Na.png',
                    // Judul pakai translate
                    judul: penerjemah.translate('judul_raja_Na_animasi'),
                    animasi: 'https://caraka11.web.app/aksara_raja/Na.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail: 'https://caraka11.web.app/aksara_raja/Na.gif',
                      // Judul pakai translate
                      judul: penerjemah.translate('judul_raja_Na_draw'),
                      modelgambar: 'assets/bg_draw/raja/Na.png',
                    ),
                  ),
                  color: Color(0xFFF8B195),
                ),
                ListMenu(
                  name: 'Sa',
                  image: 'assets/ic_raja/Sa.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Sa.png',
                    judul: penerjemah.translate(
                      'judul_raja_Sa_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_raja/Sa.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail: 'https://caraka11.web.app/aksara_raja/Sa.gif',
                      judul: penerjemah.translate(
                        'judul_raja_Sa_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/raja/Sa.png',
                    ),
                  ),
                  color: Color(0xFFF8B195),
                ),
                ListMenu(
                  name: 'Pa',
                  image: 'assets/ic_raja/Pa.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Pa.png',
                    judul: penerjemah.translate(
                      'judul_raja_Pa_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_raja/Pa.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail: 'https://caraka11.web.app/aksara_raja/Pa.gif',
                      judul: penerjemah.translate(
                        'judul_raja_Pa_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/raja/Pa.png',
                    ),
                  ),
                  color: Color(0xFFF8B195),
                ),
                ListMenu(
                  name: 'Ka',
                  image: 'assets/ic_raja/Ka.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Ka.png',
                    judul: penerjemah.translate(
                      'judul_raja_Ka_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_raja/Ka.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail: 'https://caraka11.web.app/aksara_raja/Ka.gif',
                      judul: penerjemah.translate(
                        'judul_raja_Ka_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/raja/Ka.png',
                    ),
                  ),
                  color: Color(0xFFF8B195),
                ),
                ListMenu(
                  name: 'Ta',
                  image: 'assets/ic_raja/Ta.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Ta.png',
                    judul: penerjemah.translate(
                      'judul_raja_Ta_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_raja/Ta.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail: 'https://caraka11.web.app/aksara_raja/Ta.gif',
                      judul: penerjemah.translate(
                        'judul_raja_Ta_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/raja/Ta.png',
                    ),
                  ),
                  color: Color(0xFFF8B195),
                ),
                ListMenu(
                  name: 'Nya',
                  image: 'assets/ic_raja/Nya.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Nya.png',
                    judul: penerjemah.translate(
                      'judul_raja_Nya_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_raja/Nya.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail: 'https://caraka11.web.app/aksara_raja/Nya.gif',
                      judul: penerjemah.translate(
                        'judul_raja_Nya_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/raja/Nya.png',
                    ),
                  ),
                  color: Color(0xFFF8B195),
                ),
                ListMenu(
                  name: 'Ga',
                  image: 'assets/ic_raja/Ga.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Ga.png',
                    judul: penerjemah.translate(
                      'judul_raja_Ga_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_raja/Ga.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail: 'https://caraka11.web.app/aksara_raja/Ga.gif',
                      judul: penerjemah.translate(
                        'judul_raja_Ga_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/raja/Ga.png',
                    ),
                  ),
                  color: Color(0xFFF8B195),
                ),
                ListMenu(
                  name: 'Ba',
                  image: 'assets/ic_raja/Ba.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Ba.png',
                    judul: penerjemah.translate(
                      'judul_raja_Ba_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_raja/Ba.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail: 'https://caraka11.web.app/aksara_raja/Ba.gif',
                      judul: penerjemah.translate(
                        'judul_raja_Ba_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/raja/Ba.png',
                    ),
                  ),
                  color: Color(0xFFF8B195),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
