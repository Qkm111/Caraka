class ModelTanya {
  final String soal;
  final String subsoal;
  final List<String> pilihan;
  final int jawabanBenar;

  // Hapus const karena list di bawahnya jadi non-const
   ModelTanya({
    required this.soal,
    required this.subsoal,
    required this.pilihan,
    required this.jawabanBenar
  });
}

//Soal Kuis Gajang
// Hapus const
 List<ModelTanya> pertanyaanGajang = [
  ModelTanya(
    soal: 'soal_gajang_1', // Key terjemahan
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [ // Path aset dibiarkan
      'assets/banksoal/jawabgajang1-1.png',
      'assets/banksoal/jawabgajang1-2.png',
      'assets/banksoal/jawabgajang1-3.png',
      'assets/banksoal/jawabgajang1-4.png'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalgajang2.png', // Path aset dibiarkan
    subsoal: "subsoal_gajang_2", // Key terjemahan
    jawabanBenar: 2,
    pilihan: [ // Teks tanpa key dibiarkan
      'Bajana',
      'Ngacara',
      'Ngakana',
      'Badana'
    ]
  ),
  ModelTanya(
    soal: 'soal_gajang_3', // Key terjemahan
    subsoal: '',
    jawabanBenar: 3,
    pilihan: [ // Key terjemahan
      'pilihan_gajang_3_0',
      'pilihan_gajang_3_1',
      'pilihan_gajang_3_2',
      'pilihan_gajang_3_3'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalgajang4.png', // Path aset dibiarkan
    subsoal: 'subsoal_gajang_4', // Key terjemahan
    jawabanBenar: 2,
    pilihan: [ // Teks tanpa key dibiarkan
      'na',
      'gha',
      'ka',
      'ma'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalgajang5.png', // Path aset dibiarkan
    subsoal: 'subsoal_gajang_5', // Key terjemahan
    jawabanBenar: 1,
    pilihan: [ // Teks tanpa key dibiarkan
      'sa',
      'dha',
      'ya',
      'la'
    ]
  ),
];

//Soal Kuis Angka
// Hapus const
 List<ModelTanya> pertanyaanAngka = [
  ModelTanya(
    soal: 'assets/banksoal/soalangka1.png', // Path aset dibiarkan
    subsoal: 'subsoal_angka_1', // Key terjemahan
    jawabanBenar: 0,
    pilihan: [ // Teks tanpa key dibiarkan
      '1945',
      '1965',
      '1942',
      '2001'
    ]
  ),
  ModelTanya(
    soal: 'soal_angka_2', // Key terjemahan
    subsoal: '',
    jawabanBenar: 2,
    pilihan: [ // Path aset dibiarkan
      'assets/banksoal/jawabangka2-1.png',
      'assets/banksoal/jawabangka2-2.png',
      'assets/banksoal/jawabangka2-3.png',
      'assets/banksoal/jawabangka2-4.png'
    ]
  ),
  ModelTanya(
    soal: 'soal_angka_3', // Key terjemahan
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [ // Path aset dibiarkan
      'assets/banksoal/jawabangka3-1.png',
      'assets/banksoal/jawabangka3-2.png',
      'assets/banksoal/jawabangka3-3.png',
      'assets/banksoal/jawabangka3-4.png'
    ]
  ),
  ModelTanya(
    soal: 'soal_angka_4', // Key terjemahan
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [ // Teks tanpa key dibiarkan
      '10 angka',
      '9 angka',
      '12 angka',
      '20 angka'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalangka5.png', // Path aset dibiarkan
    subsoal: 'subsoal_angka_5', // Key terjemahan
    jawabanBenar: 3,
    pilihan: [ // Teks tanpa key dibiarkan
      '2022',
      '2023',
      '2024',
      '2025'
    ]
  ),
];

//Soal Kuis Raja
// Hapus const
 List<ModelTanya> pertanyaanRaja = [
  ModelTanya(
    soal: 'soal_raja_1', // Key terjemahan
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [ // Teks tanpa key dibiarkan
      '8',
      '7',
      '9',
      '1'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalraja2.png', // Path aset dibiarkan
    subsoal: 'subsoal_raja_2', // Key terjemahan
    jawabanBenar: 3,
    pilihan: [ // Teks tanpa key dibiarkan
      'Sa',
      'Pa',
      'Ta',
      'Ba'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalraja3.png', // Path aset dibiarkan
    subsoal: 'subsoal_raja_3', // Key terjemahan
    jawabanBenar: 2,
    pilihan: [ // Teks tanpa key dibiarkan
      'Pamakasan',
      'Priyangan',
      'Pasuruan',
      'Probolinggo'
    ]
  ),
  ModelTanya(
    soal: 'soal_raja_4', // Key terjemahan
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [ // Path aset dibiarkan
      'assets/banksoal/jawabraja4-1.png',
      'assets/banksoal/jawabraja4-2.png',
      'assets/banksoal/jawabraja4-3.png',
      'assets/banksoal/jawabraja4-4.png'
    ]
  ),
  ModelTanya(
    soal: 'soal_raja_5', // Key terjemahan
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [ // Key terjemahan
      'pilihan_raja_5_0',
      'pilihan_raja_5_1',
      'pilihan_raja_5_2',
      'pilihan_raja_5_3'
    ]
  ),
];

//Soal Kuis Rekaan
// Hapus const
 List<ModelTanya> pertanyaanRekaan = [
  ModelTanya(
    soal: 'soal_rekaan_1', // Key terjemahan
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [ // Teks tanpa key dibiarkan
      '3',
      '5',
      '4',
      '6'
    ]
  ),
  ModelTanya(
    soal: 'soal_rekaan_2', // Key terjemahan
    subsoal: '',
    jawabanBenar: 2,
    pilihan: [ // Key terjemahan
      'pilihan_rekaan_2_0',
      'pilihan_rekaan_2_1',
      'pilihan_rekaan_2_2',
      'pilihan_rekaan_2_3'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalrekaan3.png', // Path aset dibiarkan
    subsoal: 'subsoal_rekaan_3', // Key terjemahan
    jawabanBenar: 3,
    pilihan: [ // Teks tanpa key dibiarkan
      'zamzam',
      'zaman',
      'zakat',
      'zakariya'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalrekaan4.png', // Path aset dibiarkan
    subsoal: 'subsoal_rekaan_4', // Key terjemahan
    jawabanBenar: 2,
    pilihan: [ // Teks tanpa key dibiarkan
      'Fa',
      'Za',
      'Ha',
      'Gha'
    ]
  ),
  ModelTanya(
    soal: 'soal_rekaan_5', // Key terjemahan
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [ // Path aset dibiarkan
      'assets/banksoal/jawabrekaan5-1.png',
      'assets/banksoal/jawabrekaan5-2.png',
      'assets/banksoal/jawabrekaan5-3.png',
      'assets/banksoal/jawabrekaan5-4.png'
    ]
  ),
];

//Soal Kuis Sowara
// Hapus const
 List<ModelTanya> pertanyaanSowara = [
  ModelTanya(
    soal: 'soal_sowara_1', // Key terjemahan
    subsoal: '',
    jawabanBenar: 3,
    pilihan: [ // Key terjemahan
      'pilihan_sowara_1_0',
      'pilihan_sowara_1_1',
      'pilihan_sowara_1_2',
      'pilihan_sowara_1_3'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalsowara2.png', // Path aset dibiarkan
    subsoal: 'subsoal_sowara_2', // Key terjemahan
    jawabanBenar: 2,
    pilihan: [ // Teks tanpa key dibiarkan
      'Inggris',
      'Jakarta',
      'Indonesia',
      'Mekah'
    ]
  ),
  ModelTanya(
    soal: 'soal_sowara_3', // Key terjemahan
    subsoal: '',
    jawabanBenar: 1,
    pilihan: [ // Key terjemahan
      'pilihan_sowara_3_0',
      'pilihan_sowara_3_1',
      'pilihan_sowara_3_2',
      'pilihan_sowara_3_3'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalsowara4.png', // Path aset dibiarkan
    // Sesuai AppLocalization, key-nya 'soal_sowara_4', bukan 'subsoal'
    subsoal: 'soal_sowara_4', // Key terjemahan (disesuaikan dengan AppLocalization)
    jawabanBenar: 1,
    pilihan: [ // Teks tanpa key dibiarkan
      'i',
      'u',
      'e',
      'o'
    ]
  ),
  ModelTanya(
    soal: 'soal_sowara_5', // Key terjemahan
    subsoal: '',
    jawabanBenar: 2,
    pilihan: [ // Path aset dibiarkan
      'assets/banksoal/jawabsowara5-1.png',
      'assets/banksoal/jawabsowara5-2.png',
      'assets/banksoal/jawabsowara5-3.png',
      'assets/banksoal/jawabsowara5-4.png'
    ]
  ),
];

//Soal Kuis Pangangghuy
// Hapus const
 List<ModelTanya> pertanyaanPangangghuy = [
  ModelTanya(
    soal: 'assets/banksoal/soalpangangghuy1.png', // Path aset dibiarkan
    subsoal: 'subsoal_pangangghuy_1', // Key terjemahan
    jawabanBenar: 3,
    pilihan: [ // Teks tanpa key dibiarkan
      'Tèdung',
      'Sekolah',
      'Ka Pasar',
      'Asakola'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalpangangghuy2.png', // Path aset dibiarkan
    subsoal: 'subsoal_pangangghuy_2', // Key terjemahan
    jawabanBenar: 0,
    pilihan: [ // Teks tanpa key dibiarkan
      'Ka Pasar',
      'Sekolah',
      'Asakola',
      'Tèdung'
    ]
  ),
  ModelTanya(
    soal: 'assets/banksoal/soalpangangghuy3.png', // Path aset dibiarkan
    subsoal: 'subsoal_pangangghuy_3', // Key terjemahan
    jawabanBenar: 2,
    pilihan: [ // Teks tanpa key dibiarkan
      'Sèkolah',
      'Ka pasar',
      'Tèdung',
      'Asakola'
    ]
  ),
  ModelTanya(
    soal: "soal_pangangghuy_4", // Key terjemahan
    subsoal: '',
    jawabanBenar: 2,
    pilihan: [ // Teks tanpa key dibiarkan
      'Lèngè',
      'Lèngè-longo',
      'Metpet ', // Mungkin ada spasi ekstra di akhir? Biarkan dulu sesuai asli
      'Soko'
    ]
  ),
  ModelTanya(
    soal: "soal_pangangghuy_5", // Key terjemahan
    subsoal: '',
    jawabanBenar: 0,
    pilihan: [ // Teks tanpa key dibiarkan
      'Lèngè',
      'Lèngè-longo',
      'Metpet ', // Mungkin ada spasi ekstra di akhir? Biarkan dulu sesuai asli
      'Soko'
    ]
  ),
];