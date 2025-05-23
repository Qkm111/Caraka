import 'package:caraka/global_utils/belajar_utils/widgets/animasi.dart';
import 'package:caraka/global_utils/belajar_utils/drawer/customdraw.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListAngka extends StatelessWidget {
  ListAngka({super.key});

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
                  height: 1300,
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
                      color: Color(0xFF9EA1D4),
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
                            'Aksara Angka',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8),
                          Image.asset(
                            'assets/ic_menu/dashboard-angka.png',
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
                  name: '0',
                  image: 'assets/ic_angka/0.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/0.png',
                    // Menggunakan penerjemah untuk judul animasi
                    judul: penerjemah.translate('judul_angka_0_animasi'),
                    animasi: 'https://caraka11.web.app/aksara_angka/0.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/0.gif',
                      // Menggunakan penerjemah untuk judul draw
                      judul: penerjemah.translate('judul_angka_0_draw'),
                      modelgambar: 'assets/bg_draw/angka/0.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  name: '1',
                  image: 'assets/ic_angka/1.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/1.png',
                    judul: penerjemah.translate(
                      'judul_angka_1_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_angka/1.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/1.gif',
                      judul: penerjemah.translate(
                        'judul_angka_1_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/angka/1.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  name: '2',
                  image: 'assets/ic_angka/2.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/2.png',
                    judul: penerjemah.translate(
                      'judul_angka_2_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_angka/2.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/2.gif',
                      judul: penerjemah.translate(
                        'judul_angka_2_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/angka/2.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  name: '3',
                  image: 'assets/ic_angka/3.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/3.png',
                    judul: penerjemah.translate(
                      'judul_angka_3_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_angka/3.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/3.gif',
                      judul: penerjemah.translate(
                        'judul_angka_3_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/angka/3.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  name: '4',
                  image: 'assets/ic_angka/4.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/4.png',
                    judul: penerjemah.translate(
                      'judul_angka_4_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_angka/4.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/4.gif',
                      judul: penerjemah.translate(
                        'judul_angka_4_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/angka/4.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  name: '5',
                  image: 'assets/ic_angka/5.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/5.png',
                    judul: penerjemah.translate(
                      'judul_angka_5_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_angka/5.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/5.gif',
                      judul: penerjemah.translate(
                        'judul_angka_5_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/angka/5.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  name: '6',
                  image: 'assets/ic_angka/6.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/6.png',
                    judul: penerjemah.translate(
                      'judul_angka_6_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_angka/6.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/6.gif',
                      judul: penerjemah.translate(
                        'judul_angka_6_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/angka/6.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  name: '7',
                  image: 'assets/ic_angka/7.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/7.png',
                    judul: penerjemah.translate(
                      'judul_angka_7_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_angka/7.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/7.gif',
                      judul: penerjemah.translate(
                        'judul_angka_7_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/angka/7.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  name: '8',
                  image: 'assets/ic_angka/8.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/8.png',
                    judul: penerjemah.translate(
                      'judul_angka_8_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_angka/8.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/8.gif',
                      judul: penerjemah.translate(
                        'judul_angka_8_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/angka/8.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  name: '9',
                  image: 'assets/ic_angka/9.png',
                  navigate: Animasi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_angka/9.png',
                    judul: penerjemah.translate(
                      'judul_angka_9_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_angka/9.gif',
                    navigate: CustomD(
                      warna: Color(0xFF9EA1D4),
                      thumbnail: 'https://caraka11.web.app/aksara_angka/9.gif',
                      judul: penerjemah.translate(
                        'judul_angka_9_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/angka/9.png',
                    ),
                  ),
                  color: Color(0xFF9EA1D4),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
