import 'package:caraka/global_utils/kuis_utils/widgets/listkuis.dart';
import 'package:caraka/kuis_pages/soal/kuis_angka.dart';
import 'package:caraka/kuis_pages/soal/kuis_gajang.dart';
import 'package:caraka/kuis_pages/soal/kuis_raja.dart';
import 'package:caraka/kuis_pages/soal/kuis_rekaan.dart';
import 'package:caraka/kuis_pages/soal/kuis_sowara.dart';
import 'package:caraka/kuis_pages/soal/kuis_pangangghuy.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardKuis extends StatefulWidget {
  const DashboardKuis({super.key});

  @override
  State<DashboardKuis> createState() => _DashboardKuisState();
}

class _DashboardKuisState extends State<DashboardKuis> {
  int _gajangScore = 0;
  int _angkaScore = 0;
  int _rajaScore = 0;
  int _rekaanScore = 0;
  int _sowaraScore = 0;
  int _pangangghuyScore = 0;

  @override
  void initState() {
    super.initState();
    _loadScore();
  }

  void _updateScore() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _gajangScore;
      _angkaScore;
      _rajaScore;
      _rekaanScore;
      _sowaraScore;
      _pangangghuyScore;
    });
    await prefs.setInt('scoreGajang', _gajangScore);
    await prefs.setInt('scoreAngka', _angkaScore);
    await prefs.setInt('scoreRaja', _rajaScore);
    await prefs.setInt('scoreRekaan', _rekaanScore);
    await prefs.setInt('scoreSowara', _sowaraScore);
    await prefs.setInt('scorePangangghuy', _pangangghuyScore);
  }

  void _loadScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _gajangScore = prefs.getInt('scoreGajang') ?? 0;
      _angkaScore = prefs.getInt('scoreAngka') ?? 0;
      _rajaScore = prefs.getInt('scoreRaja') ?? 0;
      _rekaanScore = prefs.getInt('scoreRekaan') ?? 0;
      _sowaraScore = prefs.getInt('scoreSowara') ?? 0;
      _pangangghuyScore = prefs.getInt('scorePangangghuy') ?? 0;
    });
  }

  void _resetScores() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _gajangScore = 0;
      _angkaScore = 0;
      _rajaScore = 0;
      _rekaanScore = 0;
      _sowaraScore = 0;
      _pangangghuyScore = 0;
    });
    await prefs.setInt('scoreGajang', 0);
    await prefs.setInt('scoreAngka', 0);
    await prefs.setInt('scoreRaja', 0);
    await prefs.setInt('scoreRekaan', 0);
    await prefs.setInt('scoreSowara', 0);
    await prefs.setInt('scorePangangghuy', 0);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: const Color(0xFFF00000),
        )
      ),
      backgroundColor: const Color(0xFFFF0000),
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
                  height: MediaQuery.of(context).size.height + 100,
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
              padding: const EdgeInsets.only(left: 20.0, right: 20),
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
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Kuis Carakan',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Image.asset('assets/ic_character/quiz.png')
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
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Text(
                        'Ollèna kuis',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                ListKuis(
                  point: _gajangScore.toString(),
                  name: 'Kuis Gâjâng',
                  navigate: KuisGajang(),
                  color: Color(0xFFD77FA1),
                ),
                ListKuis(
                  point: _angkaScore.toString(),
                  name: 'Kuis Angka',
                  navigate: KuisAngka(),
                  color: Color(0xFF9EA1D4),
                ),
                ListKuis(
                  point: _rajaScore.toString(),
                  name: 'Kuis Rajâ',
                  navigate: KuisRaja(),
                  color: Color(0xFFF8B195),
                ),
                ListKuis(
                  point: _rekaanScore.toString(),
                  name: 'Kuis Rekaan',
                  navigate: KuisRekaan(),
                  color: Color(0xFFA8D1D1),
                ),
                ListKuis(
                  point: _sowaraScore.toString(),
                  name: 'Kuis Sowara',
                  navigate: KuisSowara(),
                  color: Color(0xFFCDB699),
                ),
                ListKuis(
                  point: _pangangghuyScore.toString(),
                  name: 'Kuis Pangangghuy',
                  navigate: KuisPangangghuy(),
                  color: Color(0xFFFFE1AF),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 36,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          _resetScores();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFFF00000),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.delete),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Reset Nilai'),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
