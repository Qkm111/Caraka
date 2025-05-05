import 'package:caraka/global_utils/belajar_utils/widgets/widgets_sandhangan.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListSandhangan extends StatelessWidget {
   ListSandhangan({super.key});

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
                  height: MediaQuery.of(context).size.height + 556,
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
                        color:  Color(0xFFFFE1AF),
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
             Column(
              children: [
                SizedBox(height: 220,),
                                          Sandhangan(
                            name: 'Lèngè',
                            image: 'assets/ic_sandhangan/taleng.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Lèngè',
                            // Deskripsi pakai translate
                            description: penerjemah.translate('desc_sandhangan_lenge'),
                          ),
                          Sandhangan(
                            name: 'Lèngè Longo',
                            image: 'assets/ic_sandhangan/lengelongo.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Lèngè Longo',
                            description: penerjemah.translate('desc_sandhangan_lenge_longo'), // Diubah
                          ),
                          Sandhangan(
                            name: 'Nyethak',
                            image: 'assets/ic_sandhangan/nyethak.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Nyethak',
                            description: penerjemah.translate('desc_sandhangan_nyethak'), // Diubah
                          ),
                           Sandhangan(
                            name: 'Nyoko',
                            image: 'assets/ic_sandhangan/nyoko.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Nyoko',
                            description: penerjemah.translate('desc_sandhangan_nyoko'), // Diubah
                          ),
                          Sandhangan(
                            name: 'Metpet',
                            image: 'assets/ic_sandhangan/petpet.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Metpet',
                            description: penerjemah.translate('desc_sandhangan_metpet'), // Diubah
                          ),
                          Sandhangan(
                            name: 'Lajer',
                            image: 'assets/ic_sandhangan/lajar.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Lajer',
                            description: penerjemah.translate('desc_sandhangan_lajer'), // Diubah
                          ),
                          Sandhangan(
                            name: 'Nyekcek',
                            image: 'assets/ic_sandhangan/cekcek.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Nyekcek',
                            description: penerjemah.translate('desc_sandhangan_nyekcek'), // Diubah
                          ),
                          Sandhangan(
                            name: 'Bisat',
                            image: 'assets/ic_sandhangan/bisat.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Bisat',
                            description: penerjemah.translate('desc_sandhangan_bisat'), // Diubah
                          ),
                          Sandhangan(
                            name: 'Papatèn',
                            image: 'assets/ic_sandhangan/pangkon.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Papatèn',
                            description: penerjemah.translate('desc_sandhangan_papaten'), // Diubah
                          ),
                          Sandhangan(
                            name: 'Soko Malje',
                            image: 'assets/ic_sandhangan/pengkal.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Soko Malje',
                            description: penerjemah.translate('desc_sandhangan_soko_malje'), // Diubah
                          ),
                          Sandhangan(
                            name: 'Perper',
                            image: 'assets/ic_sandhangan/kerret.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Perper',
                            description: penerjemah.translate('desc_sandhangan_perper'), // Diubah
                          ),
                          Sandhangan(
                            name: 'Cakra',
                            image: 'assets/ic_sandhangan/cakra.png',
                            color: Color(0xFFFFE1AF),
                            title: 'Cakra',
                            description: penerjemah.translate('desc_sandhangan_cakra'), // Diubah
                          ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
