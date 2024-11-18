import 'package:caraka/global_utils/belajar_utils/widgets/animasi.dart';
import 'package:caraka/global_utils/belajar_utils/drawer/customdraw.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:flutter/material.dart';

class ListRaja extends StatelessWidget {
  const ListRaja({super.key});

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
                  height: 1100,
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
                        color: const Color(0xFFF8B195),
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
                            'Aksara Rajâ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/ic_menu/dashboard-raja.png',
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
                  name: 'Na',
                  image: 'assets/ic_raja/Na.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Na.png',
                    judul: 'Nolès "Na"',
                    animasi: 'https://caraka11.web.app/aksara_raja/Na.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail:
                        'https://caraka11.web.app/aksara_raja/Na.gif',
                      judul: 'Nolès "Na"',
                      modelgambar: 'assets/bg_draw/raja/Na.png',
                    )
                  ),
                  color: Color(0xFFF8B195)
                ),
                ListMenu(
                  name: 'Sa',
                  image: 'assets/ic_raja/Sa.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Sa.png',
                    judul: 'Nolès "Sa"',
                    animasi: 'https://caraka11.web.app/aksara_raja/Sa.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail:
                        'https://caraka11.web.app/aksara_raja/Sa.gif',
                      judul: 'Nolès "Sa"',
                      modelgambar: 'assets/bg_draw/raja/Sa.png',
                    )
                  ),
                  color: Color(0xFFF8B195)
                ),
                ListMenu(
                  name: 'Pa',
                  image: 'assets/ic_raja/Pa.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Pa.png',
                    judul: 'Nolès "Pa"',
                    animasi: 'https://caraka11.web.app/aksara_raja/Pa.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail:
                        'https://caraka11.web.app/aksara_raja/Pa.gif',
                      judul: 'Nolès "Pa"',
                      modelgambar: 'assets/bg_draw/raja/Pa.png',
                    )
                  ),
                  color: Color(0xFFF8B195)
                ),
                ListMenu(
                  name: 'Ka',
                  image: 'assets/ic_raja/Ka.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Ka.png',
                    judul: 'Nolès "Ka"',
                    animasi: 'https://caraka11.web.app/aksara_raja/Ka.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail:
                        'https://caraka11.web.app/aksara_raja/Ka.gif',
                      judul: 'Nolès "Ka"',
                      modelgambar: 'assets/bg_draw/raja/Ka.png',
                    )
                  ),
                  color: Color(0xFFF8B195)
                ),
                ListMenu(
                  name: 'Ta',
                  image: 'assets/ic_raja/Ta.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Ta.png',
                    judul: 'Nolès "Ta"',
                    animasi: 'https://caraka11.web.app/aksara_raja/Ta.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail:
                        'https://caraka11.web.app/aksara_raja/Ta.gif',
                      judul: 'Nolès "Ta"',
                      modelgambar: 'assets/bg_draw/raja/Ta.png',
                    )
                  ),
                  color: Color(0xFFF8B195)
                ),
                ListMenu(
                  name: 'Nya',
                  image: 'assets/ic_raja/Nya.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Nya.png',
                    judul: 'Nolès "Nya"',
                    animasi: 'https://caraka11.web.app/aksara_raja/Nya.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail:
                        'https://caraka11.web.app/aksara_raja/Nya.gif',
                      judul: 'Nolès "Nya"',
                      modelgambar: 'assets/bg_draw/raja/Nya.png',
                    )
                  ),
                  color: Color(0xFFF8B195)
                ),
                ListMenu(
                  name: 'Ga',
                  image: 'assets/ic_raja/Ga.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Ga.png',
                    judul: 'Nolès "Ga"',
                    animasi: 'https://caraka11.web.app/aksara_raja/Ga.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail:
                        'https://caraka11.web.app/aksara_raja/Ga.gif',
                      judul: 'Nolès "Ga"',
                      modelgambar: 'assets/bg_draw/raja/Ga.png',
                    )
                  ),
                  color: Color(0xFFF8B195)
                ),
                ListMenu(
                  name: 'Ba',
                  image: 'assets/ic_raja/Ba.png',
                  navigate: Animasi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_raja/Ba.png',
                    judul: 'Nolès "Ba"',
                    animasi: 'https://caraka11.web.app/aksara_raja/Ba.gif',
                    navigate: CustomD(
                      warna: Color(0xFFF8B195),
                      thumbnail:
                        'https://caraka11.web.app/aksara_raja/Ba.gif',
                      judul: 'Nolès "Ba"',
                      modelgambar: 'assets/bg_draw/raja/Ba.png',
                    )
                  ),
                  color: Color(0xFFF8B195)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
