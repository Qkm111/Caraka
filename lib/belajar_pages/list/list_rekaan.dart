import 'package:caraka/global_utils/belajar_utils/widgets/animasi.dart';
import 'package:caraka/global_utils/belajar_utils/drawer/customdraw.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:flutter/material.dart';

class ListRekaan extends StatelessWidget {
  const ListRekaan({super.key});

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
                  height: 800,
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
                        color: const Color(0xFFA8D1D1),
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
                  name: 'ha',
                  image: 'assets/ic_rekaan/ha.png',
                  navigate: Animasi(
                    warna: Color(0xFFA8D1D1),
                    thumbnail: 'assets/ic_rekaan/rekaan/ha.png',
                    judul: 'Nolès "ha"',
                    animasi: 'https://caraka11.web.app/aksara_rekaan/ha.gif',
                    navigate: CustomD(
                      warna: Color(0xFFA8D1D1),
                      thumbnail:
                        'https://caraka11.web.app/aksara_rekaan/ha.gif',
                      judul: 'Nolès "ha"',
                      modelgambar: 'assets/bg_draw/rekaan/ha.png',
                    )
                  ),
                  color: Color(0xFFA8D1D1)
                ),
                ListMenu(
                  name: 'fa',
                  image: 'assets/ic_rekaan/fa.png',
                  navigate: Animasi(
                    warna: Color(0xFFA8D1D1),
                    thumbnail: 'assets/ic_rekaan/fa.png',
                    judul: 'Nolès "fa"',
                    animasi: 'https://caraka11.web.app/aksara_rekaan/fa.gif',
                    navigate: CustomD(
                      warna: Color(0xFFA8D1D1),
                      thumbnail:
                        'https://caraka11.web.app/aksara_rekaan/fa.gif',
                      judul: 'Nolès "fa"',
                      modelgambar: 'assets/bg_draw/rekaan/fa.png',
                    )
                  ),
                  color: Color(0xFFA8D1D1)
                ),
                ListMenu(
                  name: 'za',
                  image: 'assets/ic_rekaan/za.png',
                  navigate: Animasi(
                    warna: Color(0xFFA8D1D1),
                    thumbnail: 'assets/ic_rekaan/za.png',
                    judul: 'Nolès "za"',
                    animasi: 'https://caraka11.web.app/aksara_rekaan/za.gif',
                    navigate: CustomD(
                      warna: Color(0xFFA8D1D1),
                      thumbnail:
                        'https://caraka11.web.app/aksara_rekaan/za.gif',
                      judul: 'Nolès "za"',
                      modelgambar: 'assets/bg_draw/rekaan/za.png',
                    )
                  ),
                  color: Color(0xFFA8D1D1)
                ),
                ListMenu(
                  name: 'gha',
                  image: 'assets/ic_rekaan/gha.png',
                  navigate: Animasi(
                    warna: Color(0xFFA8D1D1),
                    thumbnail: 'assets/ic_rekaan/gha.png',
                    judul: 'Nolès "gha"',
                    animasi: 'https://caraka11.web.app/aksara_rekaan/gha.gif',
                    navigate: CustomD(
                      warna: Color(0xFFA8D1D1),
                      thumbnail:
                        'https://caraka11.web.app/aksara_rekaan/gha.gif',
                      judul: 'Nolès "gha"',
                      modelgambar: 'assets/bg_draw/rekaan/gha.png',
                    )
                  ),
                  color: Color(0xFFA8D1D1)
                ),
                ListMenu(
                  name: 'dza',
                  image: 'assets/ic_rekaan/dza.png',
                  navigate: Animasi(
                    warna: Color(0xFFA8D1D1),
                    thumbnail: 'assets/ic_rekaan/dza.png',
                    judul: 'Nolès "dza"',
                    animasi: 'https://caraka11.web.app/aksara_rekaan/dza.gif',
                    navigate: CustomD(
                      warna: Color(0xFFA8D1D1),
                      thumbnail:
                        'https://caraka11.web.app/aksara_rekaan/dza.gif',
                      judul: 'Nolès "dza"',
                      modelgambar: 'assets/bg_draw/rekaan/dza.png',
                    )
                  ),
                  color: Color(0xFFA8D1D1)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
