import 'package:caraka/global_utils/belajar_utils/widgets/deskripsi.dart';
import 'package:caraka/global_utils/belajar_utils/widgets/listbelajar.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardBelajar extends StatelessWidget {
   DashboardBelajar({super.key});

  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();
    return Scaffold(
      backgroundColor:  Color(0xFFFF0000),
      appBar: PreferredSize(
          preferredSize:  Size.fromHeight(0),
          child: AppBar(
            backgroundColor:  Color(0xFFF00000),
          )
        ),
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
                  height: MediaQuery.of(context).size.height,
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
                        color:  Color(0xFFFF8080),
                        borderRadius: BorderRadius.circular(16)),
                    child:  Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            penerjemah.translate('bannerbelajar'),
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
                        penerjemah.translate('ajakanbelajar'),
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
                    deskripsi: penerjemah.translate('deskripsigajang'),
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
                    deskripsi: penerjemah.translate('deskripsiangka'),
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
                    deskripsi: penerjemah.translate('deskripsiraja'),
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
                    deskripsi: penerjemah.translate('deskripsirekaan'),
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
                      deskripsi: penerjemah.translate('deskripsisowara'),
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
                      deskripsi: penerjemah.translate('deskripsipangangguy'),
                      search: '/sandhangan'
                      ),
                    color: Color(0xFFFFE1AF)
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
