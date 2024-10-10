import 'package:caraka/global_utils/kuis_utils/widgets/next.dart';
import 'package:caraka/kuis_pages/hasil/hasil_pangangghuy.dart';
import 'package:flutter/material.dart';
import 'package:caraka/global_utils/kuis_utils/model/bank_soal.dart';
import 'package:caraka/global_utils/kuis_utils/widgets/pilihjawab.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KuisPangangghuy extends StatefulWidget {

  const KuisPangangghuy({
    super.key,
  });

  @override
  State<KuisPangangghuy> createState() => _KuisPangangghuyState();
}

class _KuisPangangghuyState extends State<KuisPangangghuy> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int scorePangangghuy = 0;

  void _quizSelesai() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('scorePangangghuy', scorePangangghuy);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => HasilPangangghuy(skorAkhir: scorePangangghuy)
      )
    );
  }

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = pertanyaanPangangghuy[questionIndex];
    if (selectedAnswerIndex == question.jawabanBenar) {
      scorePangangghuy++;
    }
    setState(() {});
  }

  void Selanjutnya() {
    if (questionIndex < pertanyaanPangangghuy.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final tanya = pertanyaanPangangghuy[questionIndex];
    bool isAkhir = questionIndex == pertanyaanPangangghuy.length - 1;
    final isGambar = tanya.soal.startsWith('assets/');
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
                              'Kuis Pangangghuy',
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
                  Column(
                    children: [
                      if (isGambar)
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
                            SizedBox(height: 10,),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFF8080),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  tanya.subsoal,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal
                                  ),
                                ),
                              ),
                            ),
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
                              tanya.soal,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: tanya.pilihan.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: selectedAnswerIndex == null
                                ? () => pickAnswer(index)
                                : null,
                            child: AnswerCard(
                              currentIndex: index,
                              answer: tanya.pilihan[index],
                              isSelected: selectedAnswerIndex == index,
                              selectedAnswerIndex: selectedAnswerIndex,
                              correctAnswerIndex: tanya.jawabanBenar,
                            ),
                          );
                        },
                      ),
                      isAkhir
                        ? NextButton(
                            onPressed: () {
                              _quizSelesai();
                            },
                          label: 'Selesai',
                        )
                        : NextButton(
                          onPressed:
                            selectedAnswerIndex != null ? Selanjutnya : null,
                          label: 'Selanjutnya',
                        )
                    ],
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
