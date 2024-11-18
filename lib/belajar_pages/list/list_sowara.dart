import 'package:caraka/global_utils/belajar_utils/widgets/animasi.dart';
import 'package:caraka/global_utils/belajar_utils/drawer/customdraw.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:flutter/material.dart';

class ListSowara extends StatelessWidget {
  const ListSowara({super.key});

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
                        color: const Color(0xFFCDB699),
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
                            'Aksara Sowara',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/ic_menu/dashboard-sowara.png',
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
                  name: 'A',
                  image: 'assets/ic_sowara/A.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/A.png',
                    judul: 'Nolès "A"',
                    animasi: 'https://caraka11.web.app/aksara_sowara/A.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail:
                        'https://caraka11.web.app/aksara_sowara/A.gif',
                      judul: 'Nolès "A"',
                      modelgambar: 'assets/bg_draw/sowara/A.png',
                    )
                  ),
                  color: Color(0xFFCDB699)
                ),
                ListMenu(
                  name: 'I',
                  image: 'assets/ic_sowara/I.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/I.png',
                    judul: 'Nolès "I"',
                    animasi: 'https://caraka11.web.app/aksara_sowara/I.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail:
                        'https://caraka11.web.app/aksara_sowara/I.gif',
                      judul: 'Nolès "I"',
                      modelgambar: 'assets/bg_draw/sowara/I.png',
                    )
                  ),
                  color: Color(0xFFCDB699)
                ),
                ListMenu(
                  name: 'U',
                  image: 'assets/ic_sowara/U.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/U.png',
                    judul: 'Nolès "U"',
                    animasi: 'https://caraka11.web.app/aksara_sowara/U.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail:
                        'https://caraka11.web.app/aksara_sowara/U.gif',
                      judul: 'Nolès U"',
                      modelgambar: 'assets/bg_draw/sowara/U.png',
                    )
                  ),
                  color: Color(0xFFCDB699)
                ),
                ListMenu(
                  name: 'E',
                  image: 'assets/ic_sowara/E.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/E.png',
                    judul: 'Nolès "E"',
                    animasi: 'https://caraka11.web.app/aksara_sowara/E.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail:
                        'https://caraka11.web.app/aksara_sowara/E.gif',
                      judul: 'Nolès "E"',
                      modelgambar: 'assets/bg_draw/sowara/E.png',
                    )
                  ),
                  color: Color(0xFFCDB699)
                ),
                ListMenu(
                  name: 'O',
                  image: 'assets/ic_sowara/O.png',
                  navigate: Animasi(
                    warna: Color(0xFFCDB699),
                    thumbnail: 'assets/ic_sowara/O.png',
                    judul: 'Nolès "O"',
                    animasi: 'https://caraka11.web.app/aksara_sowara/O.gif',
                    navigate: CustomD(
                      warna: Color(0xFFCDB699),
                      thumbnail:
                        'https://caraka11.web.app/aksara_sowara/O.gif',
                      judul: 'Nolès "O"',
                      modelgambar: 'assets/bg_draw/sowara/O.png',
                    )
                  ),
                  color: Color(0xFFCDB699)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
