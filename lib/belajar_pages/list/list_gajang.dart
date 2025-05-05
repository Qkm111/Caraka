import 'package:caraka/global_utils/belajar_utils/widgets/animasi.dart';
import 'package:caraka/global_utils/belajar_utils/drawer/customdraw.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListGajang extends StatelessWidget {
   ListGajang({super.key});

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
                  height: 2300,
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
                        color:  Color(0xFFFD77FA1),
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
                            'Aksara Gâjâng',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/ic_menu/dashboard-gejeng.png',
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
                    name: 'a',
                    image: 'assets/ic_gajang/a.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/a.png',
                        judul: penerjemah.translate('judul_a_animasi'), // Menggunakan translate
                        animasi: 'https://caraka11.web.app/aksara_gajang/a.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/a.gif',
                            judul: penerjemah.translate('judul_a_draw'), // Menggunakan translate
                            modelgambar: 'assets/bg_draw/gajang/a.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'na',
                    image: 'assets/ic_gajang/na.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/na.png',
                        judul: penerjemah.translate('judul_na_animasi'), // Menggunakan translate
                        animasi: 'https://caraka11.web.app/aksara_gajang/na.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/na.gif',
                            judul: penerjemah.translate('judul_na_draw'), // Menggunakan translate
                            modelgambar: 'assets/bg_draw/gajang/na.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'ca',
                    image: 'assets/ic_gajang/ca.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/ca.png',
                        judul: penerjemah.translate('judul_ca_animasi'), // Menggunakan translate
                        animasi: 'https://caraka11.web.app/aksara_gajang/ca.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/ca.gif',
                            judul: penerjemah.translate('judul_ca_draw'), // Menggunakan translate
                            modelgambar: 'assets/bg_draw/gajang/ca.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'ra',
                    image: 'assets/ic_gajang/ra.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/ra.png',
                        judul: penerjemah.translate('judul_ra_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/ra.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/ra.gif',
                            judul: penerjemah.translate('judul_ra_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/ra.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                 ListMenu(
                    name: 'ka',
                    image: 'assets/ic_gajang/ka.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/ka.png',
                        judul: penerjemah.translate('judul_ka_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/ka.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/ka.gif',
                            judul: penerjemah.translate('judul_ka_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/ka.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'da',
                    image: 'assets/ic_gajang/da.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/da.png',
                        judul: penerjemah.translate('judul_da_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/da.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/da.gif',
                            judul: penerjemah.translate('judul_da_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/da.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'ta',
                    image: 'assets/ic_gajang/ta.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/ta.png',
                        judul: penerjemah.translate('judul_ta_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/ta.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/ta.gif',
                            judul: penerjemah.translate('judul_ta_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/ta.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'sa',
                    image: 'assets/ic_gajang/sa.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/sa.png',
                        judul: penerjemah.translate('judul_sa_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/sa.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/sa.gif',
                            judul: penerjemah.translate('judul_sa_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/sa.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'wa',
                    image: 'assets/ic_gajang/wa.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/wa.png',
                        judul: penerjemah.translate('judul_wa_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/wa.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/wa.gif',
                            judul: penerjemah.translate('judul_wa_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/wa.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'la',
                    // Perbaiki path image jika perlu, sebelumnya a.png
                    image: 'assets/ic_gajang/la.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/la.png',
                        judul: penerjemah.translate('judul_la_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/la.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/la.gif',
                            judul: penerjemah.translate('judul_la_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/la.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                 ListMenu(
                    name: 'pa',
                    image: 'assets/ic_gajang/pa.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/pa.png',
                        judul: penerjemah.translate('judul_pa_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/pa.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/pa.gif',
                            judul: penerjemah.translate('judul_pa_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/pa.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'dha',
                    image: 'assets/ic_gajang/dha.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/dha.png',
                        judul: penerjemah.translate('judul_dha_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/dha.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/dha.gif',
                            judul: penerjemah.translate('judul_dha_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/dha.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'ja',
                    image: 'assets/ic_gajang/ja.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/ja.png',
                        judul: penerjemah.translate('judul_ja_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/ja.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/ja.gif',
                            judul: penerjemah.translate('judul_ja_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/ja.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'ya',
                    image: 'assets/ic_gajang/ya.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/ya.png',
                        judul: penerjemah.translate('judul_ya_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/ya.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/ya.gif',
                            judul: penerjemah.translate('judul_ya_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/ya.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'nya',
                    image: 'assets/ic_gajang/nya.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/nya.png',
                        judul: penerjemah.translate('judul_nya_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/nya.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/nya.gif',
                            judul: penerjemah.translate('judul_nya_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/nya.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'ma',
                    image: 'assets/ic_gajang/ma.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/ma.png',
                        judul: penerjemah.translate('judul_ma_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/ma.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/ma.gif',
                            judul: penerjemah.translate('judul_ma_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/ma.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'ga',
                    image: 'assets/ic_gajang/ga.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/ga.png',
                        judul: penerjemah.translate('judul_ga_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/ga.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/ga.gif',
                            judul: penerjemah.translate('judul_ga_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/ga.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                 ListMenu(
                    name: 'ba',
                    image: 'assets/ic_gajang/ba.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/ba.png',
                        judul: penerjemah.translate('judul_ba_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/ba.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/ba.gif',
                            judul: penerjemah.translate('judul_ba_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/ba.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'tha',
                    image: 'assets/ic_gajang/tha.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/tha.png',
                        judul: penerjemah.translate('judul_tha_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/tha.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/tha.gif',
                            judul: penerjemah.translate('judul_tha_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/tha.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'nga',
                    image: 'assets/ic_gajang/nga.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/nga.png',
                        judul: penerjemah.translate('judul_nga_animasi'), // Diubah
                        animasi: 'https://caraka11.web.app/aksara_gajang/nga.gif',
                        navigate: CustomD(
                            warna: Color(0xFFD77FA1),
                            thumbnail: 'https://caraka11.web.app/aksara_gajang/nga.gif',
                            judul: penerjemah.translate('judul_nga_draw'), // Diubah
                            modelgambar: 'assets/bg_draw/gajang/nga.png',
                        )
                    ),
                    color: Color(0xFFFD77FA1)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
