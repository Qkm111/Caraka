class ModelTanya {
  final String soal;
  final String subsoal;
  final List<String> pilihan;
  final int jawabanBenar;

  const ModelTanya({
    required this.soal,
    required this.subsoal,
    required this.pilihan,
    required this.jawabanBenar
  });
}

//Soal Kuis Gajang
const List<ModelTanya> pertanyaanGajang = [
  ModelTanya(
    soal: 'Oca’ ”calana” obâ dâ’ tolèsan carakan madhurâ!',
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [
      'assets/banksoal/jawabgajang1-1.png',
      'assets/banksoal/jawabgajang1-2.png',
      'assets/banksoal/jawabgajang1-3.png',
      'assets/banksoal/jawabgajang1-4.png'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalgajang2.png',
    subsoal: "ponapa aksara latènna okara carakan ka’dinto?",
    jawabanBenar: 2,
    pilihan: [
      'Bajana',
      'Ngacara',
      'Ngakana',
      'Badana'
    ]
  ),
  ModelTanya(
    soal: 'Bâdâ saponapa macemma aksara gâjâng?',
    subsoal: '',
    jawabanBenar: 3,
    pilihan: [
      '26 macem',
      '15 macem',
      '32 macem',
      '20 macem'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalgajang4.png',
    subsoal: 'Horof napa panèka?',
    jawabanBenar: 2,
    pilihan: [
      'na',
      'gha',
      'ka',
      'ma'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalgajang5.png',
    subsoal: 'Horof Ponapa Panèka?',
    jawabanBenar: 1,
    pilihan: [
      'sa',
      'dha',
      'ya',
      'la'
    ]
  ),
];

//Soal Kuis Angka
const List<ModelTanya> pertanyaanAngka = [
  ModelTanya(
    soal: 'assets/banksoal/soalangka1.png',
    subsoal: 'Ponapa aksara latènna okara carakanka’dinto?',
    jawabanBenar: 0,
    pilihan: [
      '1945',
      '1965',
      '1942',
      '2001'
    ]
  ),
  ModelTanya(
    soal: '17 Agustus kamardhika’an Bhangsa Indonèsia. Tolèsan aksara angka 17 iyâ arèya?',
    subsoal: '',
    jawabanBenar: 2,
    pilihan: [
      'assets/banksoal/jawabangka2-1.png',
      'assets/banksoal/jawabangka2-2.png',
      'assets/banksoal/jawabangka2-3.png',
      'assets/banksoal/jawabangka2-4.png'
    ]
  ),
  ModelTanya(
    soal: '“17-08-1945” obâ dâ’ tolèsan carakan madhurâ!',
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [
      'assets/banksoal/jawabangka3-1.png',
      'assets/banksoal/jawabangka3-2.png',
      'assets/banksoal/jawabangka3-3.png',
      'assets/banksoal/jawabangka3-4.png'
    ]
  ),
  ModelTanya(
    soal: 'Aksara angka bâdâ saponapa?',
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [
      '10 angka',
      '9 angka',
      '12 angka',
      '20 angka'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalangka5.png',
    subsoal: 'Ponapa aksara latènna okara carakan ka’dinto? ',
    jawabanBenar: 3,
    pilihan: [
      '2022',
      '2023',
      '2024',
      '2025'
    ]
  ),
];

//Soal Kuis Raja
const List<ModelTanya> pertanyaanRaja = [
  ModelTanya(
    soal: 'Aksara carakan madhurâ sè ghâdhuwân aksara rajâ namong coma bâdâ?',
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [
      '8',
      '7',
      '9',
      '1'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalraja2.png',
    subsoal: 'horof ponapa panèka?',
    jawabanBenar: 3,
    pilihan: [
      'Sa',
      'Pa',
      'Ta',
      'Ba'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalraja3.png',
    subsoal: 'ponapa aksara latènna okara carakan ka’dinto?',
    jawabanBenar: 2,
    pilihan: [
      'pamakasan',
      'priyangan',
      'pasuruan',
      'probolinggo'
    ]
  ),
  ModelTanya(
    soal: 'Oca’ ”Madina” obâ dâ’ tolèsan carakan madhurâ!',
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [
      'assets/banksoal/jawabraja4-1.png',
      'assets/banksoal/jawabraja4-2.png',
      'assets/banksoal/jawabraja4-3.png',
      'assets/banksoal/jawabraja4-4.png'
    ]
  ),
  ModelTanya(
    soal: 'oca’ sè aghuna’aghi aksara rajâ èngghi panèka ..... bân .....',
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [
      'nyama bulân, nyama taon', 
      'nyama orèng, nyama tèmpat',
      'nyama kèben, nyama taneman',
      'nyama tempat, nyama taon'
    ]
  ),
];

//Soal Kuis Rekaan
const List<ModelTanya> pertanyaanRekaan = [
  ModelTanya(
    soal: 'Bâdâ saponapa aksara rèkaan carakan madhurâ?',
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [
      '3',
      '5',
      '4',
      '6'
    ]
  ),
  ModelTanya(
    soal: 'Aksara rekaan ka’angguy nyerrat?',
    subsoal: '',
    jawabanBenar: 2,
    pilihan: [
      "Ca’-oca' serrebbhâ dri jhâbâ",
      "Ca'-oca' serrebbhâ dâri Mlayu",
      "Ca'-oca' serrebbhâ dâri Arab",
      "Ca'-oca' serrebbhâ dâri Bhâsa Daèrah"
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalrekaan3.png',
    subsoal: 'Ponapa aksara latènna okara carakan ka’dinto?',
    jawabanBenar: 3,
    pilihan: [
      'zamzam',
      'zaman',
      'zakat',
      'zakariya'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalrekaan4.png',
    subsoal: 'Horof ponapa panèka?',
    jawabanBenar: 2,
    pilihan: [
      'Fa',
      'Za',
      'Ha',
      'Gha'
    ]
  ),
  ModelTanya(
    soal: 'oca’ “Dzuhur” obâ dâ’ tolèsan aksara carakan madhurâ!',
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [
      'assets/banksoal/jawabrekaan5-1.png',
      'assets/banksoal/jawabrekaan5-2.png',
      'assets/banksoal/jawabrekaan5-3.png',
      'assets/banksoal/jawabrekaan5-4.png'
    ]
  ),
];

//Soal Kuis Sowara
const List<ModelTanya> pertanyaanSowara = [
  ModelTanya(
    soal: 'bâdâ saponapa aksara sowara panèka?',
    subsoal: '',
    jawabanBenar: 3,
    pilihan: [
      'Bâdâ duwe’',
      'Bâdâ tello’',
      'Bâdâ empa’',
      'Bâdâ lèma’'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalsowara2.png',
    subsoal: 'Ponapa artè latènna carakan ka’dinto?',
    jawabanBenar: 2,
    pilihan: [
      'Inggris',
      'Jakarta',
      'Indonesia',
      'Mekah'
    ]
  ),
  ModelTanya(
    soal: 'Aksara sowara ..... dâlèm aksara gâjâng',
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [
      'bâgiân',
      'ta’ tamaso’',
      'sabâgiân',
      'panèkâ'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalsowara4.png',
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [
      'i',
      'u',
      'e',
      'o'
    ]
  ),
  ModelTanya(
    soal: 'èyatorè oca’ “Amalia” tolès dâ’ aksara carakanna',
    subsoal: '',
    jawabanBenar: 2,
    pilihan: [
      'assets/banksoal/jawabsowara5-1.png',
      'assets/banksoal/jawabsowara5-2.png',
      'assets/banksoal/jawabsowara5-3.png',
      'assets/banksoal/jawabsowara5-4.png'
    ]
  ),
];

//Soal Kuis Pangangghuy
const List<ModelTanya> pertanyaanPangangghuy = [
  ModelTanya(
    soal: 'assets/banksoal/soalpangangghuy1.png',
    subsoal: 'Ponapa aksara latènna okara carakanka’dinto?',
    jawabanBenar: 3,
    pilihan: [
      'Tèdung',
      'Sekolah',
      'Ka Pasar',
      'Asakola'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalpangangghuy2.png',
    subsoal: 'Ponapa aksara latènna okara carakan ka’dinto?',
    jawabanBenar: 0,
    pilihan: [
      'Ka Pasar',
      'Sekolah',
      'Asakola',
      'Tèdung'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalpangangghuy3.png',
    subsoal: 'Ponapa aksara latènna okara carakan ka’dinto?',
    jawabanBenar: 2,
    pilihan: [
      'Sèkolah',
      'Ka pasar',
      'Tèdung',
      'Asakola'
    ]
  ),
  ModelTanya(
    soal: "Ka'angghuy nyèrrat kèccap (e) aghuna'aghi pangangghuy sowara?",
    subsoal: '',
    jawabanBenar: 2,
    pilihan: [
      'Lèngè',
      'Lèngè-longo',
      'Metpet ',
      'Soko'
    ]
  ),
  ModelTanya(
    soal: "Ka'angghuy nyèrrat kèccap (è) aghuna'aghi pangangghuy sowara?",
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [
      'Lèngè',
      'Lèngè-longo',
      'Metpet ',
      'Soko'
    ]
  ),
];