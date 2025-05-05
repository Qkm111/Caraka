import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';

class DeveloperInfo extends StatelessWidget {
  const DeveloperInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: const Color(0xFFF00000),
          )
      ),
      backgroundColor: const Color(0xFFFF0000),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFFF0000),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 56.0),
                    child: Container(
                      height: 133,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFF8080),
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )
                            ),
                             Spacer(), // Untuk mendorong ke tengah
                            Image.asset(
                              'assets/ic_character/dev.png',
                              height: 76,
                              width: 76,
                            ),
                            SizedBox(width: 4), // Jarak antara gambar dan teks
                            Text(
                              penerjemah.translate('bannerdev'), // Terjemahan header
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                             Spacer(), // Untuk mendorong ke tengah
                             Opacity(opacity: 0, child: IconButton(onPressed: null, icon: Icon(Icons.arrow_back))), // Placeholder agar simetris
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.all(24),
                  // Hapus height tetap agar menyesuaikan isi teks
                  // height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF8080),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: const Offset(0, 4)
                      )
                    ],
                  ),
                  child: Text(
                    penerjemah.translate('caraka'), // Terjemahan deskripsi
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 44,
                      backgroundImage: AssetImage('assets/common/profile.jpg'),
                    ),
                    SizedBox(width: 20),
                    Expanded( // Gunakan Expanded agar container nama fleksibel
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 80,
                        // Hapus width tetap
                        // width: 212,
                        decoration: BoxDecoration(
                          color: Color(0xFFFF8080),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Nurul Qomaria', // Nama tidak diterjemahkan
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white
                              ),
                              overflow: TextOverflow.ellipsis, // Handle jika nama panjang
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Manajemen Informatika', // Jurusan tidak diterjemahkan
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.black
                              ),
                               overflow: TextOverflow.ellipsis, // Handle jika jurusan panjang
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}