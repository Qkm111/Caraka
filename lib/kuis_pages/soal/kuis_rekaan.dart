import 'package:caraka/global_utils/kuis_utils/widgets/next.dart';
import 'package:caraka/kuis_pages/hasil/hasil_rekaan.dart';
import 'package:flutter/material.dart';
import 'package:caraka/global_utils/kuis_utils/model/bank_soal.dart';
import 'package:caraka/global_utils/kuis_utils/widgets/pilihjawab.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';

class KuisRekaan extends StatefulWidget {
  const KuisRekaan({
    super.key,
  });

  @override
  State<KuisRekaan> createState() => _KuisRekaanState();
}

class _KuisRekaanState extends State<KuisRekaan> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int scoreRekaan = 0;

  void _quizSelesai() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('scoreRekaan', scoreRekaan);
    if (!mounted) return;
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (_) => HasilRekaan(skorAkhir: scoreRekaan)
        )
    );
  }

  void pickAnswer(int value) {
    if (selectedAnswerIndex == null) {
      selectedAnswerIndex = value;
      final question = pertanyaanRekaan[questionIndex];
      if (selectedAnswerIndex == question.jawabanBenar) {
        scoreRekaan++;
      }
      setState(() {});
    }
  }

  void Selanjutnya() {
    if (questionIndex < pertanyaanRekaan.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
      setState(() {});
    } else {
      _quizSelesai();
    }
  }

  bool _isLocalizationKey(String text) {
    return text.startsWith('soal_') ||
           text.startsWith('subsoal_') ||
           text.startsWith('pilihan_');
  }

  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();
    final tanya = pertanyaanRekaan[questionIndex];
    bool isAkhir = questionIndex == pertanyaanRekaan.length - 1;
    final bool isSoalGambar = tanya.soal.startsWith('assets/');

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
                              'Kuis Rekaan',
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
                  const SizedBox(
                    height: 30,
                  ),
                  if (isSoalGambar)
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFF8080),
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                tanya.soal,
                              ),
                            ),
                          ),
                        ),
                        if (tanya.subsoal.isNotEmpty) ...[
                           SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF8080),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                _isLocalizationKey(tanya.subsoal)
                                    ? penerjemah.translate(tanya.subsoal)
                                    : tanya.subsoal,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ]
                      ],
                    )
                  else
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFF8080),
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          _isLocalizationKey(tanya.soal)
                             ? penerjemah.translate(tanya.soal)
                             : tanya.soal,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                   SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: tanya.pilihan.length,
                    itemBuilder: (context, index) {
                      final String option = tanya.pilihan[index];
                      return GestureDetector(
                        onTap: selectedAnswerIndex == null
                            ? () => pickAnswer(index)
                            : null,
                        child: AnswerCard(
                          currentIndex: index,
                          answer: option,
                          isSelected: selectedAnswerIndex == index,
                          selectedAnswerIndex: selectedAnswerIndex,
                          correctAnswerIndex: tanya.jawabanBenar,
                        ),
                      );
                    },
                  ),
                   SizedBox(height: 20),
                  if (selectedAnswerIndex != null)
                    isAkhir
                        ? NextButton(
                            onPressed: _quizSelesai,
                            label: penerjemah.translate('tombolselesai'),
                          )
                        : NextButton(
                            onPressed: Selanjutnya,
                            label: penerjemah.translate('tombolnext'),
                          ),
                   SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ]));
  }
}