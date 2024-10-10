import 'package:caraka/global_utils/belajar_utils/widgets/deskripsi.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:flutter/material.dart';

class DashboardBelajar extends StatelessWidget {
  const DashboardBelajar({super.key});

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
                  height: MediaQuery.of(context).size.height,
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
                        color: const Color(0xFFFF8080),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Slamet Rabu',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Image(
                              image:
                                  AssetImage('assets/ic_character/welcome.png'))
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
                        'Éyatoré ajhâr aksara',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                ListMenu(
                  name: 'Aksara Gâjâng',
                  image: "assets/ic_menu/dashboard-gejeng.png",
                  navigate: Deskripsi(
                    warna: Color(0xFFD77FA1),
                    thumbnail: 'assets/ic_menu/dashboard-gejeng.png',
                    judul: 'Aksara Gâjâng',
                    deskripsi: 'Aksara gâjâng èngghi panèka horof dasar dâlem carakan madhurâ, bâdâ 20 macèm aksara. Ènyâmâi aksara gâjâng âmârghâ horof dasar ghi’ tadhâ’ pangangguy okara.',
                    search: '/gajang'),
                  color: Color(0xFFD77FA1),
                ),
                ListMenu(
                  image: 'assets/ic_menu/dashboard-angka.png',
                  name: 'Aksara Angka',
                  navigate: Deskripsi(
                    warna: Color(0xFF9EA1D4),
                    thumbnail: 'assets/ic_menu/dashboard-angka.png',
                    judul: 'Aksara Angka',
                    deskripsi: 'Aksara angka (tong-bitongan) èngghi panèka macem aksara sè èghuna’aghi dâlèm bhâsâ Madhurâ ka’angguy nyerrat angka. Aksara angka bâdâ 10 macèm dhâri angka 0 sampè’ 9.',
                    search: '/angka'
                  ),
                  color: Color(0xFF9EA1D4),
                ),
                ListMenu(
                  image: 'assets/ic_menu/dashboard-raja.png',
                  name: 'Aksara Rajâ',
                  navigate: Deskripsi(
                    warna: Color(0xFFF8B195),
                    thumbnail: 'assets/ic_menu/dashboard-raja.png',
                    judul: 'Aksara Rajâ',
                    deskripsi: 'Aksara rajâ èngghi panèka horof kapital dâlèm carakan madhurâ, tapè ta’ sakabbhina aksara gâjâng bâdâ aksara rajânâ. Aksara gâjâng sè ghâdhuwân aksara rajâ bânnya’na 8 horof.',
                    search: '/raja'
                  ),
                  color: Color(0xFFF8B195),
                ),
                ListMenu(
                  image: 'assets/ic_menu/dashboard-rekan.png',
                  name: 'Aksara Rekaan',
                  navigate: Deskripsi(
                    warna: Color(0xFFA8D1D1),
                    thumbnail: 'assets/ic_menu/dashboard-rekan.png',
                    judul: 'Aksara Rekaan',
                    deskripsi: 'Ètarèk dâri oca’ rèkaan sè ghâdhuwân artè karangan, saèngghana bisa è artèâghi aksara rèkaan èngghi panèka horof sè èrèka otabâ è rèkayasa. Aksara rèkaan panèka aksara sè tadhâ’ è kompolanna aksara gâjâng, otabâ èkannèng koca’ aksara tambâ’ân.',
                    search: '/rekaan'
                  ),
                  color: Color(0xFFA8D1D1),
                ),
                ListMenu(
                    image: 'assets/ic_menu/dashboard-sowara.png',
                    name: 'Aksara Sowara',
                    navigate: Deskripsi(
                      warna: Color(0xFFCDB699),
                      thumbnail: 'assets/ic_menu/dashboard-sowara.png',
                      judul: 'Aksara Sowara',
                      deskripsi: 'Aksara sowara bânnya’na bâdâ lèma’ èghuna’âghi ka’angghuy horof kapital nyama kota/tâmpat, horof kapital nyama orèng, horof kapital nyama bulân, bân horof kapital nyama naghârâ.',
                      search: '/sowara'
                  ),
                    color: Color(0xFFCDB699)),
                ListMenu(
                    image: 'assets/ic_menu/dashboard-sandhangan.png',
                    name: 'Pangangguy',
                    navigate: Deskripsi(
                      warna: Color(0xFFFFE1AF),
                      thumbnail: 'assets/ic_menu/dashboard-sandhangan.png',
                      judul: 'Pangangguy',
                      deskripsi: 'Pangangguy Okara (panambâ bân papatèn) èngghi panèka tandâ diakritik kâ’ângghuy ngobè bunyi dâri aksara gâjâng. Aksara sè ta’ gâdhuwân pangangguy è lafal aghi akadhie gabungan antara konsonan bân vokal a. Pangangguy okara bâdâ 12 macèm',
                      search: '/sandhangan'
                  ),
                    color: Color(0xFFFFE1AF))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
