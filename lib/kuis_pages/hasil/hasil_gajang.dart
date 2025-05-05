import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';

class HasilGajang extends StatefulWidget {
  final int skorAkhir;

  const HasilGajang({
    super.key,
    required this.skorAkhir,
  });

  @override
  State<HasilGajang> createState() => _HasilGajangState();
}

class _HasilGajangState extends State<HasilGajang> {

  String getResultImage(int skorAkhir) {
    // Tampilkan gambar berhasil hanya jika skor sempurna (5)
    if (skorAkhir == 5) {
      return 'assets/ic_character/berhasil.png';
    } else {
      return 'assets/ic_character/gagal.png';
    }
  }

  String getResultTextKey(int skorAkhir) {
     // Kembalikan key terjemahan berdasarkan skor sempurna (5)
    if (skorAkhir == 5) {
      return 'hasilberhasil';
    } else {
      return 'hasilgagal';
    }
  }

  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();
    final String resultKey = getResultTextKey(widget.skorAkhir);

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: AppBar(
              backgroundColor: const Color(0xFFF00000),
            )),
        backgroundColor: const Color(0xFFFF0000),
        body: Stack(children: [
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
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 56.0),
                      child: Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFFF8080),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: const Offset(0, 4))
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              penerjemah.translate('headerhasil'), // Terjemahan Header
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFD77FA1), // Warna Card Hasil Gajang
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: const Offset(0, 4))
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Image.asset(getResultImage(widget.skorAkhir)),
                          const SizedBox(height: 10,),
                          Text(
                            penerjemah.translate(resultKey), // Terjemahan Teks Hasil
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFD77FA1), // Warna Card Skor Gajang
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: const Offset(0, 4))
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.skorAkhir.toString(),
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            '/',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            '5', // Asumsi total soal selalu 5
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero), // Hapus padding default TextButton
                    onPressed: () {
                      // Kembali ke halaman sebelumnya (biasanya dashboard/list kuis)
                      // Mengirim skor kembali mungkin tidak perlu jika hanya pop
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: const Offset(0, 4))
                        ]
                      ),
                      child: Center(
                        child: Text(
                          penerjemah.translate('tombolbackkuis'), // Terjemahan Tombol Kembali
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500 // Sedikit lebih tebal dari w100
                          ),
                        ),
                      ),
                    )
                  ),
                   SizedBox(height: 40), // Padding bawah tambahan
                ],
              ),
            ),
          ),
        ]));
  }
}