import 'package:caraka/global_utils/belajar_utils/widgets/animasi.dart';
import 'package:caraka/global_utils/belajar_utils/drawer/customdraw.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:flutter/material.dart';

class ListGajang extends StatelessWidget {
  const ListGajang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF0000),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: const Color(0xFFF00000),
          )),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFFFF0000),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 56.0),
                  child: Container(
                    height: 133,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFD77FA1),
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
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Text(
                        'Tekan pana kaangguy matao animasi',
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
                        judul: 'Nolès "a"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/a.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/a.gif',
                          judul: 'Nolès "a"',
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
                        judul: 'Nolès "na"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/na.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/na.gif',
                          judul: 'Penulisan "na"',
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
                        judul: 'Nolès "na"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/ca.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/ca.gif',
                          judul: 'Nolès "ca"',
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
                        judul: 'Nolès "ra"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/ra.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/ra.gif',
                          judul: 'Nolès "ra"',
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
                        judul: 'Nolès "ka"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/ka.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/ka.gif',
                          judul: 'Nolès "ka"',
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
                        judul: 'Nolès "da"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/da.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/da.gif',
                          judul: 'Nolès "da"',
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
                        judul: 'Nolès "ta"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/ta.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/ta.gif',
                          judul: 'Nolès "ta"',
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
                        judul: 'Nolès "sa"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/sa.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/sa.gif',
                          judul: 'Nolès "sa"',
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
                        judul: 'Nolès "wa"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/wa.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/wa.gif',
                          judul: 'Nolès "wa"',
                          modelgambar: 'assets/bg_draw/gajang/wa.png',
                        )
                      ),
                    color: Color(0xFFFD77FA1)),
                ListMenu(
                    name: 'la',
                    image: 'assets/ic_gajang/a.png',
                    navigate: Animasi(
                        warna: Color(0xFFD77FA1),
                        thumbnail: 'assets/ic_gajang/la.png',
                        judul: 'Nolès "la"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/la.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/la.gif',
                          judul: 'Nolès "la"',
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
                        judul: 'Nolès "pa"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/pa.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/pa.gif',
                          judul: 'Nolès "pa"',
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
                        judul: 'Nolès "dha"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/dha.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/dha.gif',
                          judul: 'Nolès "dha"',
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
                        judul: 'Nolès "ja"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/ja.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/ja.gif',
                          judul: 'Nolès "ja"',
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
                        judul: 'Nolès "ya"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/ya.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/ya.gif',
                          judul: 'Nolès "ya"',
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
                        judul: 'Nolès "nya"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/nya.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/nya.gif',
                          judul: 'Nolès "nya"',
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
                        judul: 'Nolès "ma"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/ma.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/ma.gif',
                          judul: 'Nolès "ma"',
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
                        judul: 'Nolès "ga"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/ga.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/ga.gif',
                          judul: 'Nolès "ga"',
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
                        judul: 'Nolès "ba"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/ba.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/ba.gif',
                          judul: 'Nolès "ba"',
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
                        judul: 'Nolès "tha"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/tha.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/tha.gif',
                          judul: 'Nolès "tha"',
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
                        judul: 'Nolès "nga"',
                        animasi: 'https://caraka11.web.app/aksara_gajang/nga.gif',
                        navigate: CustomD(
                          warna: Color(0xFFD77FA1),
                          thumbnail: 'https://caraka11.web.app/aksara_gajang/nga.gif',
                          judul: 'Nolès "nga"',
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
