import 'package:caraka/global_utils/belajar_utils/widgets/widgets_sandhangan.dart';
import 'package:flutter/material.dart';

class ListSandhangan extends StatelessWidget {
  const ListSandhangan({super.key});

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
                  height: 1300,
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
                        color: const Color(0xFFFFE1AF),
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
                            'Pangangguy',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/ic_menu/dashboard-sandhangan.png',
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
                        '',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Sandhangan(
                  name: 'Lèngè',
                  image: 'assets/ic_sandhangan/taleng.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Lèngè',
                  description: 'Tandâ vokal é. Ètolès è adhâ’na aksara',
                ),
                Sandhangan(
                  name: 'Lèngè longo',
                  image: 'assets/ic_sandhangan/lengelongo.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Lèngè longo',
                  description: 'Tandâ vokal o. Ètolès è adhâ’na bân è budhina aksara',
                ),
                Sandhangan(
                  name: 'Nyèthâk',
                  image: 'assets/ic_sandhangan/nyethak.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Nyèthâk',
                  description: 'Tandâ vokal i. Etolès è attasa aksara',
                ),
                Sandhangan(
                  name: 'Nyoko',
                  image: 'assets/ic_sandhangan/nyoko.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Nyoko',
                  description: 'Tanda vokal u. Ètolès è budhina agantong ka aksara',
                ),
                Sandhangan(
                  name: 'Mètpèt',
                  image: 'assets/ic_sandhangan/petpet.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Mètpèt',
                  description: 'Tandâ Vokal e. Ètolès è attasa aksara',
                ),
                Sandhangan(
                  name: 'Lâjèr',
                  image: 'assets/ic_sandhangan/lajar.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Lâjèr',
                  description: 'Tandâ ghântè konsonan r. Ètolès è attasa aksara',
                ),
                Sandhangan(
                  name: 'Nyèkcèk',
                  image: 'assets/ic_sandhangan/cekcek.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Nyèkcèk',
                  description: 'Tandâ ghântè konsonân ng. Ètolès è attasa aksara',
                ),
                Sandhangan(
                  name: 'Bisât',
                  image: 'assets/ic_sandhangan/bisat.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Bisât',
                  description: 'Tandâ ghântè konsonan ’. Ètolès è  budhina aksara',
                ),
                Sandhangan(
                  name: 'Pâpâtèn',
                  image: 'assets/ic_sandhangan/pangkon.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Pâpâtèn',
                  description: 'Tandâ maèlang vokal. Ètolès è budhina aksara',
                ),
                Sandhangan(
                  name: 'Soko Mâljè',
                  image: 'assets/ic_sandhangan/pengkal.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Soko Mâljè',
                  description: 'Tandâ penambâ konsonan y. Ètolès ekonco’ budina aksara',
                ),
                Sandhangan(
                  name: 'Pèrpèr',
                  image: 'assets/ic_sandhangan/kerret.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Pèrpèr',
                  description: 'Tandâ penambâ konsonan re. Ètolès è konco’ budina aksara',
                ),
                Sandhangan(
                  name: 'Câkrâ',
                  image: 'assets/ic_sandhangan/cakra.png',
                  color: Color(0xFFFFE1AF),
                  title: 'Câkrâ',
                  description: 'Tandâ penambâ konsonan r. Ètolès è konco’ budina aksara',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
