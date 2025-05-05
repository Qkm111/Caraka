import 'package:caraka/global_utils/belajar_utils/widgets/animasi.dart';
import 'package:caraka/global_utils/belajar_utils/drawer/customdraw.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListRekaan extends StatelessWidget {
   ListRekaan({super.key});

  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();
    return Scaffold(
      backgroundColor:  Color(0xFFFF0000),
      appBar: PreferredSize(
          preferredSize:  Size.fromHeight(0),
          child: AppBar(
            backgroundColor:  Color(0xFFF00000),
          )),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  color:  Color(0xFFFF0000),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 800,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(right: 20.0, left: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding:  EdgeInsets.only(top: 56.0),
                  child: Container(
                    height: 133,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color:  Color(0xFFA8D1D1),
                        borderRadius: BorderRadius.circular(16)),
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
                              )),
                          Text(
                            'Aksara Rekaan',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/ic_menu/dashboard-rekan.png',
                            height: 72,
                            width: 72,
                          )
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
                      SizedBox(
                        height: 200,
                      ),
                      Text(
                        penerjemah.translate('petunjukanimasi'),
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                ListMenu(
                      name: 'ha',
                      image: 'assets/ic_rekaan/ha.png',
                      navigate: Animasi(
                          warna: Color(0xFFA8D1D1),
                          // Koreksi path thumbnail jika perlu (sebelumnya ada /rekaan/ tambahan)
                          thumbnail: 'assets/ic_rekaan/ha.png',
                          // Judul pakai translate
                          judul: penerjemah.translate('judul_rekaan_ha_animasi'),
                          animasi: 'https://caraka11.web.app/aksara_rekaan/ha.gif',
                          navigate: CustomD(
                              warna: Color(0xFFA8D1D1),
                              thumbnail: 'https://caraka11.web.app/aksara_rekaan/ha.gif',
                              // Judul pakai translate
                              judul: penerjemah.translate('judul_rekaan_ha_draw'),
                              modelgambar: 'assets/bg_draw/rekaan/ha.png',
                          )
                      ),
                      color: Color(0xFFA8D1D1)),
                  ListMenu(
                      name: 'fa',
                      image: 'assets/ic_rekaan/fa.png',
                      navigate: Animasi(
                          warna: Color(0xFFA8D1D1),
                          thumbnail: 'assets/ic_rekaan/fa.png',
                          judul: penerjemah.translate('judul_rekaan_fa_animasi'), // Diubah
                          animasi: 'https://caraka11.web.app/aksara_rekaan/fa.gif',
                          navigate: CustomD(
                              warna: Color(0xFFA8D1D1),
                              thumbnail: 'https://caraka11.web.app/aksara_rekaan/fa.gif',
                              judul: penerjemah.translate('judul_rekaan_fa_draw'), // Diubah
                              modelgambar: 'assets/bg_draw/rekaan/fa.png',
                          )
                      ),
                      color: Color(0xFFA8D1D1)),
                  ListMenu(
                      name: 'za',
                      image: 'assets/ic_rekaan/za.png',
                      navigate: Animasi(
                          warna: Color(0xFFA8D1D1),
                          thumbnail: 'assets/ic_rekaan/za.png',
                          judul: penerjemah.translate('judul_rekaan_za_animasi'), // Diubah
                          animasi: 'https://caraka11.web.app/aksara_rekaan/za.gif',
                          navigate: CustomD(
                              warna: Color(0xFFA8D1D1),
                              thumbnail: 'https://caraka11.web.app/aksara_rekaan/za.gif',
                              judul: penerjemah.translate('judul_rekaan_za_draw'), // Diubah
                              modelgambar: 'assets/bg_draw/rekaan/za.png',
                          )
                      ),
                      color: Color(0xFFA8D1D1)),
                  ListMenu(
                      name: 'gha',
                      image: 'assets/ic_rekaan/gha.png',
                      navigate: Animasi(
                          warna: Color(0xFFA8D1D1),
                          thumbnail: 'assets/ic_rekaan/gha.png',
                          judul: penerjemah.translate('judul_rekaan_gha_animasi'), // Diubah
                          animasi: 'https://caraka11.web.app/aksara_rekaan/gha.gif',
                          navigate: CustomD(
                              warna: Color(0xFFA8D1D1),
                              thumbnail: 'https://caraka11.web.app/aksara_rekaan/gha.gif',
                              judul: penerjemah.translate('judul_rekaan_gha_draw'), // Diubah
                              modelgambar: 'assets/bg_draw/rekaan/gha.png',
                          )
                      ),
                      color: Color(0xFFA8D1D1)),
                  ListMenu(
                      name: 'dza',
                      image: 'assets/ic_rekaan/dza.png',
                      navigate: Animasi(
                          warna: Color(0xFFA8D1D1),
                          thumbnail: 'assets/ic_rekaan/dza.png',
                          judul: penerjemah.translate('judul_rekaan_dza_animasi'), // Diubah
                          animasi: 'https://caraka11.web.app/aksara_rekaan/dza.gif',
                          navigate: CustomD(
                              warna: Color(0xFFA8D1D1),
                              thumbnail: 'https://caraka11.web.app/aksara_rekaan/dza.gif',
                              judul: penerjemah.translate('judul_rekaan_dza_draw'), // Diubah
                              modelgambar: 'assets/bg_draw/rekaan/dza.png',
                          )
                      ),
                      color: Color(0xFFA8D1D1)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
