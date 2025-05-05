import 'package:flutter/material.dart';

class AppLocalization extends ChangeNotifier{
  Locale _currentLocale = Locale('mad'); // Default locale set ke Indonesia ('id')

  Locale get currentLocale => _currentLocale;

  // Peta (_map) yang menyimpan semua terjemahan
  static final Map<String, Map<String, String>> _terjemahan = {
    // Bahasa Madura
    'mad': {
      //Bottom Navigation Bar
      'bottomnav1':'Ajhâr',
      'bottomnav2':'Kuis',
      'bottomnav3':'Setèlan',

      /* ==Page Belajar==*/
      'bannerbelajar': 'Slamet Rabu',
      'ajakanbelajar': 'Éyatoré ajhâr aksara',
      'tomboldeskripsi': "Oladhi terosanna",
      'petunjukanimasi': "Tekan pana ka'angghuy matao animasi",
      'tombolmenggambar': "Coba' tolès",
      'tombolback': "Abhâli",
      'tombolbackdraw': "Abhâli dâ' animasi",

      //List Materi
      'deskripsigajang':"Aksara gâjâng èngghi panèka horof dasar dâlem carakan madhurâ, bâdâ 20 macèm aksara. Ènyâmâi aksara gâjâng âmârghâ horof dasar ghi’ tadhâ’ pangangguy okara.",
      'deskripsiangka': "Aksara angka (tong-bitongan) èngghi panèka macem aksara sè èghuna’aghi dâlèm bhâsâ Madhurâ ka’angguy nyerrat angka. Aksara angka bâdâ 10 macèm dhâri angka 0 sampè’ 9.",
      'deskripsiraja': "Aksara rajâ èngghi panèka horof kapital dâlèm carakan madhurâ, tapè ta’ sakabbhina aksara gâjâng bâdâ aksara rajânâ. Aksara gâjâng sè ghâdhuwân aksara rajâ bânnya’na 8 horof.",
      'deskripsirekaan': "Ètarèk dâri oca’ rèkaan sè ghâdhuwân artè karangan, saèngghana bisa è artèâghi aksara rèkaan èngghi panèka horof sè èrèka otabâ è rèkayasa. Aksara rèkaan panèka aksara sè tadhâ’ è kompolanna aksara gâjâng, otabâ èkannèng koca’ aksara tambâ’ân.",
      'deskripsisowara': "Aksara sowara bânnya’na bâdâ lèma’ èghuna’âghi ka’angghuy horof kapital nyama kota/tâmpat, horof kapital nyama orèng, horof kapital nyama bulân, bân horof kapital nyama naghârâ.",
      'deskripsipangangguy': "Pangangguy Okara (panambâ bân papatèn) èngghi panèka tandâ diakritik kâ’ângghuy ngobè bunyi dâri aksara gâjâng. Aksara sè ta’ gâdhuwân pangangguy è lafal aghi akadhie gabungan antara konsonan bân vokal a. Pangangguy okara bâdâ 12 macèm",
      'judul_a_animasi': 'Nolès "a"',
      'judul_a_draw': 'Nolès "a"',
      'judul_na_animasi': 'Nolès "na"',
      'judul_na_draw': 'Nolès "na"',
      'judul_ca_animasi': 'Nolès "ca"', // Perbaikan: sebelumnya "na"
      'judul_ca_draw': 'Nolès "ca"',
      'judul_ra_animasi': 'Nolès "ra"',
      'judul_ra_draw': 'Nolès "ra"',
      'judul_ka_animasi': 'Nolès "ka"',
      'judul_ka_draw': 'Nolès "ka"',
      'judul_da_animasi': 'Nolès "da"',
      'judul_da_draw': 'Nolès "da"',
      'judul_ta_animasi': 'Nolès "ta"',
      'judul_ta_draw': 'Nolès "ta"',
      'judul_sa_animasi': 'Nolès "sa"',
      'judul_sa_draw': 'Nolès "sa"',
      'judul_wa_animasi': 'Nolès "wa"',
      'judul_wa_draw': 'Nolès "wa"',
      'judul_la_animasi': 'Nolès "la"',
      'judul_la_draw': 'Nolès "la"',
      'judul_pa_animasi': 'Nolès "pa"',
      'judul_pa_draw': 'Nolès "pa"',
      'judul_dha_animasi': 'Nolès "dha"',
      'judul_dha_draw': 'Nolès "dha"',
      'judul_ja_animasi': 'Nolès "ja"',
      'judul_ja_draw': 'Nolès "ja"',
      'judul_ya_animasi': 'Nolès "ya"',
      'judul_ya_draw': 'Nolès "ya"',
      'judul_nya_animasi': 'Nolès "nya"',
      'judul_nya_draw': 'Nolès "nya"',
      'judul_ma_animasi': 'Nolès "ma"',
      'judul_ma_draw': 'Nolès "ma"',
      'judul_ga_animasi': 'Nolès "ga"',
      'judul_ga_draw': 'Nolès "ga"',
      'judul_ba_animasi': 'Nolès "ba"',
      'judul_ba_draw': 'Nolès "ba"',
      'judul_tha_animasi': 'Nolès "tha"',
      'judul_tha_draw': 'Nolès "tha"',
      'judul_nga_animasi': 'Nolès "nga"',
      'judul_nga_draw': 'Nolès "nga"',
      'judul_angka_0_animasi': 'Nolès "0"',
      'judul_angka_0_draw': 'Nolès "0"',
      'judul_angka_1_animasi': 'Nolès "1"',
      'judul_angka_1_draw': 'Nolès "1"',
      'judul_angka_2_animasi': 'Nolès "2"',
      'judul_angka_2_draw': 'Nolès "2"',
      'judul_angka_3_animasi': 'Nolès "3"',
      'judul_angka_3_draw': 'Nolès "3"',
      'judul_angka_4_animasi': 'Nolès "4"',
      'judul_angka_4_draw': 'Nolès "4"',
      'judul_angka_5_animasi': 'Nolès "5"',
      'judul_angka_5_draw': 'Nolès "5"',
      'judul_angka_6_animasi': 'Nolès "6"',
      'judul_angka_6_draw': 'Nolès "6"',
      'judul_angka_7_animasi': 'Nolès "7"',
      'judul_angka_7_draw': 'Nolès "7"',
      'judul_angka_8_animasi': 'Nolès "8"',
      'judul_angka_8_draw': 'Nolès "8"',
      'judul_angka_9_animasi': 'Nolès "9"',
      'judul_angka_9_draw': 'Nolès "9"',
      'judul_raja_Na_animasi': 'Nolès "Na"',
      'judul_raja_Na_draw': 'Nolès "Na"',
      'judul_raja_Sa_animasi': 'Nolès "Sa"',
      'judul_raja_Sa_draw': 'Nolès "Sa"',
      'judul_raja_Pa_animasi': 'Nolès "Pa"',
      'judul_raja_Pa_draw': 'Nolès "Pa"',
      'judul_raja_Ka_animasi': 'Nolès "Ka"',
      'judul_raja_Ka_draw': 'Nolès "Ka"',
      'judul_raja_Ta_animasi': 'Nolès "Ta"',
      'judul_raja_Ta_draw': 'Nolès "Ta"',
      'judul_raja_Nya_animasi': 'Nolès "Nya"',
      'judul_raja_Nya_draw': 'Nolès "Nya"',
      'judul_raja_Ga_animasi': 'Nolès "Ga"',
      'judul_raja_Ga_draw': 'Nolès "Ga"',
      'judul_raja_Ba_animasi': 'Nolès "Ba"',
      'judul_raja_Ba_draw': 'Nolès "Ba"',
      'judul_rekaan_ha_animasi': 'Nolès "ha"',
      'judul_rekaan_ha_draw': 'Nolès "ha"',
      'judul_rekaan_fa_animasi': 'Nolès "fa"',
      'judul_rekaan_fa_draw': 'Nolès "fa"',
      'judul_rekaan_za_animasi': 'Nolès "za"',
      'judul_rekaan_za_draw': 'Nolès "za"',
      'judul_rekaan_gha_animasi': 'Nolès "gha"',
      'judul_rekaan_gha_draw': 'Nolès "gha"',
      'judul_rekaan_dza_animasi': 'Nolès "dza"',
      'judul_rekaan_dza_draw': 'Nolès "dza"',
      'judul_sowara_A_animasi': 'Nolès "A"',
      'judul_sowara_A_draw': 'Nolès "A"',
      'judul_sowara_I_animasi': 'Nolès "I"',
      'judul_sowara_I_draw': 'Nolès "I"',
      'judul_sowara_U_animasi': 'Nolès "U"',
      'judul_sowara_U_draw': 'Nolès "U"',
      'judul_sowara_E_animasi': 'Nolès "E"',
      'judul_sowara_E_draw': 'Nolès "E"',
      'judul_sowara_O_animasi': 'Nolès "O"',
      'judul_sowara_O_draw': 'Nolès "O"',
      'desc_sandhangan_lenge': 'Tandâ vokal é. Ètolès è adhâ’na aksara',
      'desc_sandhangan_lenge_longo': 'Tandâ vokal o. Ètolès è adhâ’na bân è budhina aksara',
      'desc_sandhangan_nyethak': 'Tandâ vokal i. Etolès è attasa aksara',
      'desc_sandhangan_nyoko': 'Tanda vokal u. Ètolès è budhina agantong ka aksara',
      'desc_sandhangan_metpet': 'Tandâ Vokal e. Ètolès è attasa aksara',
      'desc_sandhangan_lajer': 'Tandâ ghântè konsonan r. Ètolès è attasa aksara',
      'desc_sandhangan_nyekcek': 'Tandâ ghântè konsonân ng. Ètolès è attasa aksara',
      'desc_sandhangan_bisat': 'Tandâ ghântè konsonan ’. Ètolès è  budhina aksara',
      'desc_sandhangan_papaten': 'Tandâ maèlang vokal. Ètolès è budhina aksara',
      'desc_sandhangan_soko_malje': 'Tandâ penambâ konsonan y. Ètolès ekonco’ budina aksara',
      'desc_sandhangan_perper': 'Tandâ penambâ konsonan re. Ètolès è konco’ budina aksara',
      'desc_sandhangan_cakra': 'Tandâ penambâ konsonan r. Ètolès è konco’ budina aksara',

      /*==Page Kuis==*/
      'ajakankuis': "Ollèna kuis",
      'tombolreset': "Kosongaghi nilai",
      'tombolnext': 'Terosanna',
      'tombolselesai': 'Lastarèh',
      'tombolbackkuis': 'Abhâli ka Dashboard',
      'headerhasil': 'Ollèna kuis',
      'hasilberhasil': "Wow keren! Selamet bâ'na berhasil",
      'hasilgagal': "Ampon parak, yuk ajhâr polè",

      //Soal Gajang
      'soal_gajang_1': 'Oca’ ”calana” obâ dâ’ tolèsan carakan madhurâ!',
      'subsoal_gajang_2': 'Ponapa aksara latènna okara carakan ka’dinto?',
      'soal_gajang_3': 'Bâdâ saponapa macemma aksara gâjâng?',
      'pilihan_gajang_3_0': '26 macem',
      'pilihan_gajang_3_1': '15 macem',
      'pilihan_gajang_3_2': '32 macem',
      'pilihan_gajang_3_3': '20 macem',
      'subsoal_gajang_4': 'Horof napa panèka?',
      'subsoal_gajang_5': 'Horof Ponapa Panèka?',

      //Soal angka
      'subsoal_angka_1': 'Ponapa aksara latènna okara carakanka’dinto?',
      'soal_angka_2': '17 Agustus kamardhika’an Bhangsa Indonèsia. Tolèsan aksara angka 17 iyâ arèya?',
      'soal_angka_3': '“17-08-1945” obâ dâ’ tolèsan carakan madhurâ!',
      'soal_angka_4': 'Aksara angka bâdâ saponapa?',
      'subsoal_angka_5': 'Ponapa aksara latènna okara carakan ka’dinto?',

      //Soal Raja
      'soal_raja_1': 'Aksara carakan madhurâ sè ghâdhuwân aksara rajâ namong coma bâdâ?',
      'subsoal_raja_2': 'Horof ponapa panèka?',
      'subsoal_raja_3': 'ponapa aksara latènna okara carakan ka’dinto?',
      'soal_raja_4': 'Oca’ ”Madina” obâ dâ’ tolèsan carakan madhurâ!',
      'soal_raja_5': 'oca’ sè aghuna’aghi aksara rajâ èngghi panèka ..... bân .....',
      'pilihan_raja_5_0': 'nyama bulân, nyama taon',
      'pilihan_raja_5_1': 'nyama orèng, nyama tèmpat',
      'pilihan_raja_5_2': 'nyama kèben, nyama taneman',
      'pilihan_raja_5_3': 'nyama tempat, nyama taon',

      //Soal Rekaan
      'soal_rekaan_1': 'Bâdâ saponapa aksara rèkaan carakan madhurâ?',
      'soal_rekaan_2': 'Aksara rekaan ka’angguy nyerrat?',
      'pilihan_rekaan_2_0': "Ca’-oca' serrebbhâ dri jhâbâ",
      'pilihan_rekaan_2_1': "Ca'-oca' serrebbhâ dâri Mlayu",
      'pilihan_rekaan_2_2': "Ca'-oca' serrebbhâ dâri Arab",
      'pilihan_rekaan_2_3': "Ca'-oca' serrebbhâ dâri Bhâsa Daèrah",
      'subsoal_rekaan_3': 'Ponapa aksara latènna okara carakan ka’dinto?',
      'subsoal_rekaan_4': 'Horof ponapa panèka?',
      'soal_rekaan_5': 'Oca’ “Dzuhur” obâ dâ’ tolèsan aksara carakan madhurâ!',

      //Soal Sowara
      'soal_sowara_1': 'Bâdâ saponapa aksara sowara panèka?',
      'pilihan_sowara_1_0': 'Bâdâ duwe’',
      'pilihan_sowara_1_1': 'Bâdâ tello’',
      'pilihan_sowara_1_2': 'Bâdâ empa’',
      'pilihan_sowara_1_3': 'Bâdâ lèma’',
      'subsoal_sowara_2': 'Ponapa artè latènna carakan ka’dinto?',
      'soal_sowara_3': 'Aksara sowara ..... dâlèm aksara gâjâng',
      'pilihan_sowara_3_0': 'bâgiân',
      'pilihan_sowara_3_1': 'ta’ tamaso’',
      'pilihan_sowara_3_2': 'sabâgiân',
      'pilihan_sowara_3_3': 'panèkâ',
      'soal_sowara_4':'Horof napa panèka?',
      'soal_sowara_5': 'èyatorè oca’ “Amalia” tolès dâ’ aksara carakanna',

      //Soal Pangangguy
      'subsoal_pangangghuy_1': 'Ponapa aksara latènna okara carakanka’dinto?',
      'subsoal_pangangghuy_2': 'Ponapa aksara latènna okara carakan ka’dinto?',
      'subsoal_pangangghuy_3': 'Ponapa aksara latènna okara carakan ka’dinto?',
      'soal_pangangghuy_4': "Ka'angghuy nyèrrat kèccap (e) aghuna'aghi pangangghuy sowara?",
      'soal_pangangghuy_5': "Ka'angghuy nyèrrat kèccap (è) aghuna'aghi pangangghuy sowara?",

      /*==Page Info==*/
      'bannerinfo': 'Setèlan Caraka',
      'menuinfo1': 'Setèlan bhâsa',
      'menuinfo2': 'Parkara Caraka',

      //Developer Info
      'bannerdev': 'Parkara Caraka',
      'caraka': "CARAKA panèka aplikasi ajhâr nolès bân maca Carakan Madhurâ ènèyataghi dhâ’ sadhâjâ morèd SD/MI sè aghunaaghi bhâsa madhurâ sareng ènèyatghi dhâ’ kaula dibi’ kaangguy Tugas Akhir. Malarmogha aplikasi ajhâr Nolès bân maca Carakan Madurâ paneka adâdhiyâghi manfaat otabâ aguna ongghu dhâ’ kamajhuwân Bhâsa Madhurâ kong langkong Carakan Madhurâ.",

      //Pengaturan bahasa
      'bannerlang':'Pèlè bhâsa',
      'lang1': 'Bhâsa Indonesia',
      'lang2': 'Bhâsa Madhurâ'
    },
    // Bahasa Indonesia
    'id': {
      //Bottom Navigation Bar
      'bottomnav1': 'Belajar',
      'bottomnav2': 'Kuis',
      'bottomnav3': 'Pengaturan',

      /* ==Halaman Belajar==*/
      'bannerbelajar': 'Selamat Datang', // Atau 'Selamat Belajar' tergantung konteks
      'ajakanbelajar': 'Mari belajar aksara',
      'tomboldeskripsi': "Lihat selengkapnya",
      'petunjukanimasi': "Tekan panah untuk melihat animasi",
      'tombolmenggambar': "Coba tulis",
      'tombolback': "Kembali",
      'tombolbackdraw': "Kembali ke animasi",

      //List Materi
      'deskripsigajang': "Aksara gâjâng adalah huruf dasar dalam carakan Madura, ada 20 macam aksara. Dinamakan aksara gâjâng karena huruf dasar masih belum memiliki imbuhan (sandhangan/pangangguy).",
      'deskripsiangka': "Aksara angka (hitungan) adalah jenis aksara yang digunakan dalam bahasa Madura untuk menulis angka. Aksara angka ada 10 macam dari angka 0 sampai 9.",
      'deskripsiraja': "Aksara rajâ adalah huruf kapital dalam carakan Madura, tetapi tidak semua aksara gâjâng memiliki aksara rajânya. Aksara gâjâng yang memiliki aksara rajâ berjumlah 8 huruf.",
      'deskripsirekaan': "Diambil dari kata rèkaan yang berarti karangan, sehingga bisa diartikan aksara rèkaan adalah huruf yang direka atau direkayasa. Aksara rèkaan ini adalah aksara yang tidak ada di kumpulan aksara gâjâng, atau disebut juga aksara tambahan.",
      'deskripsisowara': "Aksara sowara jumlahnya ada lima, digunakan untuk huruf kapital nama kota/tempat, huruf kapital nama orang, huruf kapital nama bulan, dan huruf kapital nama negara.",
      'deskripsipangangguy': "Pangangguy Okara (imbuhan dan pemati vokal) adalah tanda diakritik untuk mengubah bunyi dari aksara gâjâng. Aksara yang tidak memiliki pangangguy dilafalkan seperti gabungan antara konsonan dan vokal /a/. Pangangguy okara ada 12 macam.",
      'judul_a_animasi': 'Menulis "a"',
      'judul_a_draw': 'Menulis "a"',
      'judul_na_animasi': 'Menulis "na"',
      'judul_na_draw': 'Menulis "na"',
      'judul_ca_animasi': 'Menulis "ca"',
      'judul_ca_draw': 'Menulis "ca"',
      'judul_ra_animasi': 'Menulis "ra"',
      'judul_ra_draw': 'Menulis "ra"',
      'judul_ka_animasi': 'Menulis "ka"',
      'judul_ka_draw': 'Menulis "ka"',
      'judul_da_animasi': 'Menulis "da"',
      'judul_da_draw': 'Menulis "da"',
      'judul_ta_animasi': 'Menulis "ta"',
      'judul_ta_draw': 'Menulis "ta"',
      'judul_sa_animasi': 'Menulis "sa"',
      'judul_sa_draw': 'Menulis "sa"',
      'judul_wa_animasi': 'Menulis "wa"',
      'judul_wa_draw': 'Menulis "wa"',
      'judul_la_animasi': 'Menulis "la"',
      'judul_la_draw': 'Menulis "la"',
      'judul_pa_animasi': 'Menulis "pa"',
      'judul_pa_draw': 'Menulis "pa"',
      'judul_dha_animasi': 'Menulis "dha"',
      'judul_dha_draw': 'Menulis "dha"',
      'judul_ja_animasi': 'Menulis "ja"',
      'judul_ja_draw': 'Menulis "ja"',
      'judul_ya_animasi': 'Menulis "ya"',
      'judul_ya_draw': 'Menulis "ya"',
      'judul_nya_animasi': 'Menulis "nya"',
      'judul_nya_draw': 'Menulis "nya"',
      'judul_ma_animasi': 'Menulis "ma"',
      'judul_ma_draw': 'Menulis "ma"',
      'judul_ga_animasi': 'Menulis "ga"',
      'judul_ga_draw': 'Menulis "ga"',
      'judul_ba_animasi': 'Menulis "ba"',
      'judul_ba_draw': 'Menulis "ba"',
      'judul_tha_animasi': 'Menulis "tha"',
      'judul_tha_draw': 'Menulis "tha"',
      'judul_nga_animasi': 'Menulis "nga"',
      'judul_nga_draw': 'Menulis "nga"',
      'judul_angka_0_animasi': 'Menulis "0"',
      'judul_angka_0_draw': 'Menulis "0"',
      'judul_angka_1_animasi': 'Menulis "1"',
      'judul_angka_1_draw': 'Menulis "1"',
      'judul_angka_2_animasi': 'Menulis "2"',
      'judul_angka_2_draw': 'Menulis "2"',
      'judul_angka_3_animasi': 'Menulis "3"',
      'judul_angka_3_draw': 'Menulis "3"',
      'judul_angka_4_animasi': 'Menulis "4"',
      'judul_angka_4_draw': 'Menulis "4"',
      'judul_angka_5_animasi': 'Menulis "5"',
      'judul_angka_5_draw': 'Menulis "5"',
      'judul_angka_6_animasi': 'Menulis "6"',
      'judul_angka_6_draw': 'Menulis "6"',
      'judul_angka_7_animasi': 'Menulis "7"',
      'judul_angka_7_draw': 'Menulis "7"',
      'judul_angka_8_animasi': 'Menulis "8"',
      'judul_angka_8_draw': 'Menulis "8"',
      'judul_angka_9_animasi': 'Menulis "9"',
      'judul_angka_9_draw': 'Menulis "9"',
      'judul_raja_Na_animasi': 'Menulis "Na"',
      'judul_raja_Na_draw': 'Menulis "Na"',
      'judul_raja_Sa_animasi': 'Menulis "Sa"',
      'judul_raja_Sa_draw': 'Menulis "Sa"',
      'judul_raja_Pa_animasi': 'Menulis "Pa"',
      'judul_raja_Pa_draw': 'Menulis "Pa"',
      'judul_raja_Ka_animasi': 'Menulis "Ka"',
      'judul_raja_Ka_draw': 'Menulis "Ka"',
      'judul_raja_Ta_animasi': 'Menulis "Ta"',
      'judul_raja_Ta_draw': 'Menulis "Ta"',
      'judul_raja_Nya_animasi': 'Menulis "Nya"',
      'judul_raja_Nya_draw': 'Menulis "Nya"',
      'judul_raja_Ga_animasi': 'Menulis "Ga"',
      'judul_raja_Ga_draw': 'Menulis "Ga"',
      'judul_raja_Ba_animasi': 'Menulis "Ba"',
      'judul_raja_Ba_draw': 'Menulis "Ba"',
      'judul_rekaan_ha_animasi': 'Menulis "ha"',
      'judul_rekaan_ha_draw': 'Menulis "ha"',
      'judul_rekaan_fa_animasi': 'Menulis "fa"',
      'judul_rekaan_fa_draw': 'Menulis "fa"',
      'judul_rekaan_za_animasi': 'Menulis "za"',
      'judul_rekaan_za_draw': 'Menulis "za"',
      'judul_rekaan_gha_animasi': 'Menulis "gha"',
      'judul_rekaan_gha_draw': 'Menulis "gha"',
      'judul_rekaan_dza_animasi': 'Menulis "dza"',
      'judul_rekaan_dza_draw': 'Menulis "dza"',
      'judul_sowara_A_animasi': 'Menulis "A"',
      'judul_sowara_A_draw': 'Menulis "A"',
      'judul_sowara_I_animasi': 'Menulis "I"',
      'judul_sowara_I_draw': 'Menulis "I"',
      'judul_sowara_U_animasi': 'Menulis "U"',
      'judul_sowara_U_draw': 'Menulis "U"',
      'judul_sowara_E_animasi': 'Menulis "E"',
      'judul_sowara_E_draw': 'Menulis "E"',
      'judul_sowara_O_animasi': 'Menulis "O"',
      'judul_sowara_O_draw': 'Menulis "O"',
      'desc_sandhangan_lenge': 'Tanda vokal é. Ditulis di depan aksara',
      'desc_sandhangan_lenge_longo': 'Tanda vokal o. Ditulis di depan dan di belakang aksara',
      'desc_sandhangan_nyethak': 'Tanda vokal i. Ditulis di atas aksara',
      'desc_sandhangan_nyoko': 'Tanda vokal u. Ditulis di belakang menggantung pada aksara',
      'desc_sandhangan_metpet': 'Tanda Vokal e. Ditulis di atas aksara',
      'desc_sandhangan_lajer': 'Tanda pengganti konsonan r. Ditulis di atas aksara',
      'desc_sandhangan_nyekcek': 'Tanda pengganti konsonan ng. Ditulis di atas aksara',
      'desc_sandhangan_bisat': 'Tanda pengganti konsonan h (pemati h). Ditulis di belakang aksara', // Bisat biasanya untuk H mati
      'desc_sandhangan_papaten': 'Tanda mematikan vokal. Ditulis di belakang aksara',
      'desc_sandhangan_soko_malje': 'Tanda penambah konsonan y. Ditulis di bawah/menggantung di belakang aksara', // Posisi bisa bervariasi sedikit
      'desc_sandhangan_perper': 'Tanda penambah konsonan re. Ditulis di bawah/menggantung di belakang aksara',
      'desc_sandhangan_cakra': 'Tanda penambah konsonan r. Ditulis di bawah/menggantung di belakang aksara',

      /*==Halaman Kuis==*/
      'ajakankuis': "Hasil kuis",
      'tombolreset': "Kosongkan nilai",
      'tombolnext': 'Selanjutnya',
      'tombolselesai': 'Selesai',
      'tombolbackkuis': 'Kembali ke Dasbor',
      'headerhasil': 'Hasil kuis',
      'hasilberhasil': "Wow keren! Selamat kamu berhasil",
      'hasilgagal': "Sudah dekat, yuk belajar lagi",

      //Soal Gajang
      'soal_gajang_1': 'Kata ”calana” ubah ke tulisan carakan Madura!',
      'subsoal_gajang_2': 'Apa aksara latin dari kalimat carakan tersebut?',
      'soal_gajang_3': 'Ada berapa macam aksara gâjâng?',
      'pilihan_gajang_3_0': '26 macam',
      'pilihan_gajang_3_1': '15 macam',
      'pilihan_gajang_3_2': '32 macam',
      'pilihan_gajang_3_3': '20 macam', // Jawaban benar
      'subsoal_gajang_4': 'Huruf apa ini?',
      'subsoal_gajang_5': 'Huruf Apa Ini?',

      //Soal angka
      'subsoal_angka_1': 'Apa aksara latin dari kalimat carakan tersebut?',
      'soal_angka_2': '17 Agustus kemerdekaan Bangsa Indonesia. Tulisan aksara angka 17 yaitu?',
      'soal_angka_3': '“17-08-1945” ubah ke tulisan carakan Madura!',
      'soal_angka_4': 'Aksara angka ada berapa?',
      'subsoal_angka_5': 'Apa aksara latin dari kalimat carakan tersebut?',

      //Soal Raja
      'soal_raja_1': 'Aksara carakan Madura yang memiliki aksara rajâ hanya ada?',
      'subsoal_raja_2': 'Huruf apa ini?',
      'subsoal_raja_3': 'Apa aksara latin dari kalimat carakan tersebut?',
      'soal_raja_4': 'Kata ”Madina” ubah ke tulisan carakan Madura!',
      'soal_raja_5': 'Kata yang menggunakan aksara rajâ adalah ..... dan .....',
      'pilihan_raja_5_0': 'nama bulan, nama tahun',
      'pilihan_raja_5_1': 'nama orang, nama tempat', // Jawaban benar
      'pilihan_raja_5_2': 'nama hewan, nama tanaman',
      'pilihan_raja_5_3': 'nama tempat, nama tahun',

      //Soal Rekaan
      'soal_rekaan_1': 'Ada berapa aksara rèkaan carakan Madura?',
      'soal_rekaan_2': 'Aksara rèkaan digunakan untuk menulis?',
      'pilihan_rekaan_2_0': "Kata-kata serapan dari Jawa",
      'pilihan_rekaan_2_1': "Kata-kata serapan dari Melayu",
      'pilihan_rekaan_2_2': "Kata-kata serapan dari Arab", // Umumnya untuk ini
      'pilihan_rekaan_2_3': "Kata-kata serapan dari Bahasa Daerah",
      'subsoal_rekaan_3': 'Apa aksara latin dari kalimat carakan tersebut?',
      'subsoal_rekaan_4': 'Huruf apa ini?',
      'soal_rekaan_5': 'Kata “Dzuhur” ubah ke tulisan aksara carakan Madura!',

      //Soal Sowara
      'soal_sowara_1': 'Ada berapa aksara sowara?',
      'pilihan_sowara_1_0': 'Ada dua',
      'pilihan_sowara_1_1': 'Ada tiga',
      'pilihan_sowara_1_2': 'Ada empat',
      'pilihan_sowara_1_3': 'Ada lima', // Jawaban benar
      'subsoal_sowara_2': 'Apa arti latin dari carakan tersebut?',
      'soal_sowara_3': 'Aksara sowara ..... dalam aksara gâjâng',
      'pilihan_sowara_3_0': 'bagian',
      'pilihan_sowara_3_1': 'tidak termasuk', // Jawaban benar (Aksara Sowara bukan bagian dari Gajang)
      'pilihan_sowara_3_2': 'sebagian',
      'pilihan_sowara_3_3': 'adalah',
      'soal_sowara_4':'Huruf apa ini?',
      'soal_sowara_5': 'Mari kata “Amalia” tulis ke aksara carakannya!',

      //Soal Pangangguy
      'subsoal_pangangghuy_1': 'Apa aksara latin dari kalimat carakan tersebut?',
      'subsoal_pangangghuy_2': 'Apa aksara latin dari kalimat carakan tersebut?',
      'subsoal_pangangghuy_3': 'Apa aksara latin dari kalimat carakan tersebut?',
      'soal_pangangghuy_4': "Untuk menulis bunyi (e pepet) menggunakan pangangguy sowara?", // e seperti 'elang'
      'soal_pangangghuy_5': "Untuk menulis bunyi (è taling) menggunakan pangangguy sowara?", // è seperti 'lele'

      /*==Halaman Info==*/
      'bannerinfo': 'Pengaturan Caraka',
      'menuinfo1': 'Pengaturan Bahasa',
      'menuinfo2': 'Tentang Caraka',

      //Developer Info
      'bannerdev': 'Tentang Caraka',
      'caraka': "CARAKA adalah aplikasi belajar menulis dan membaca Carakan Madura, ditujukan kepada seluruh siswa SD/MI yang menggunakan bahasa madura, serta ditujukan kepada pengembang sendiri guna keperluan Tugas Akhir. Semoga aplikasi belajar menulis dan membaca Carakan Madura ini memberikan manfaat dan berguna untuk kemajuan Bahasa Madura Khususnya Carakan Madura.",

      //Pengaturan bahasa
      'bannerlang': 'Pilih Bahasa',
      'lang1': 'Bahasa Indonesia',
      'lang2': 'Bahasa Madura'
    },
  };

  // Fungsi untuk mendapatkan terjemahan berdasarkan kunci (key)
  String translate(String key) {
    // Mengembalikan terjemahan dari bahasa saat ini, atau key itu sendiri jika tidak ditemukan
    return _terjemahan[_currentLocale.languageCode]?[key] ?? key;
  }

  // Fungsi untuk mengubah locale (bahasa)
  void changeLocale(Locale newLocale) {
    // Cek apakah bahasa yang baru didukung (ada dalam _terjemahan)
    if (_terjemahan.containsKey(newLocale.languageCode)) {
      _currentLocale = newLocale;
      notifyListeners(); // Beri tahu listener (misalnya UI) bahwa locale telah berubah
    } else {
      // Jika bahasa tidak didukung, cetak pesan error
      print("Bahasa tidak didukung: ${newLocale.languageCode}");
    }
  }
}