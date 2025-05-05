import 'package:caraka/global_utils/belajar_utils/widgets/animasi.dart';
import 'package:caraka/global_utils/belajar_utils/drawer/customdraw.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListSowara extends StatelessWidget {
  ListSowara({super.key});

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
                  height: 800,
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
                      color: Color(0xFFCDB699),
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
                            'Aksara Sowara',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8),
                          Image.asset(
                            'assets/ic_menu/dashboard-sowara.png',
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
                  name: 'A',
                  image: 'assets/ic_sowara/A.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/A.png',
                    // Judul pakai translate
                    judul: penerjemah.translate('judul_sowara_A_animasi'),
                    animasi: 'https://caraka11.web.app/aksara_sowara/A.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail: 'https://caraka11.web.app/aksara_sowara/A.gif',
                      // Judul pakai translate
                      judul: penerjemah.translate('judul_sowara_A_draw'),
                      modelgambar: 'assets/bg_draw/sowara/A.png',
                    ),
                  ),
                  color: Color(0xFFCDB699),
                ),
                ListMenu(
                  name: 'I',
                  image: 'assets/ic_sowara/I.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/I.png',
                    judul: penerjemah.translate(
                      'judul_sowara_I_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_sowara/I.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail: 'https://caraka11.web.app/aksara_sowara/I.gif',
                      judul: penerjemah.translate(
                        'judul_sowara_I_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/sowara/I.png',
                    ),
                  ),
                  color: Color(0xFFCDB699),
                ),
                ListMenu(
                  name: 'U',
                  image: 'assets/ic_sowara/U.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/U.png',
                    judul: penerjemah.translate(
                      'judul_sowara_U_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_sowara/U.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail: 'https://caraka11.web.app/aksara_sowara/U.gif',
                      // Diubah & typo diperbaiki
                      judul: penerjemah.translate('judul_sowara_U_draw'),
                      modelgambar: 'assets/bg_draw/sowara/U.png',
                    ),
                  ),
                  color: Color(0xFFCDB699),
                ),
                ListMenu(
                  name: 'E',
                  image: 'assets/ic_sowara/E.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/E.png',
                    judul: penerjemah.translate(
                      'judul_sowara_E_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_sowara/E.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail: 'https://caraka11.web.app/aksara_sowara/E.gif',
                      judul: penerjemah.translate(
                        'judul_sowara_E_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/sowara/E.png',
                    ),
                  ),
                  color: Color(0xFFCDB699),
                ),
                ListMenu(
                  name: 'O',
                  image: 'assets/ic_sowara/O.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/O.png',
                    judul: penerjemah.translate(
                      'judul_sowara_O_animasi',
                    ), // Diubah
                    animasi: 'https://caraka11.web.app/aksara_sowara/O.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail: 'https://caraka11.web.app/aksara_sowara/O.gif',
                      judul: penerjemah.translate(
                        'judul_sowara_O_draw',
                      ), // Diubah
                      modelgambar: 'assets/bg_draw/sowara/O.png',
                    ),
                  ),
                  color: Color(0xFFCDB699),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
