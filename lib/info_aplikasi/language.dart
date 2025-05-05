import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(backgroundColor: const Color(0xFFF00000)),
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
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
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
                        color: Color(0xFFFF8080),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
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
                              ),
                            ),
                            Image.asset(
                              'assets/ic_character/language.png',
                              width: 80,
                              height: 80,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              penerjemah.translate('bannerlang'),
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                _buildLanguageOption(
                  context,
                  penerjemah.translate('lang1'),
                  const Locale('id'),
                  penerjemah.currentLocale == const Locale('id'),
                ),
                _buildLanguageOption(
                  context,
                  penerjemah.translate('lang2'),
                  const Locale('mad'),
                  penerjemah.currentLocale == const Locale('mad'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Helper widget untuk membuat opsi bahasa
Widget _buildLanguageOption(
  BuildContext context,
  String languageName,
  Locale locale,
  bool isActive,
) {
  return GestureDetector(
    onTap: () {
      // Panggil changeLocale saat opsi ditekan
      context.read<AppLocalization>().changeLocale(locale);
    },
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color:
            isActive
                ? Color(0xFFFF8080).withOpacity(0.2)
                : Colors.grey[200], // Warna berbeda jika aktif
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color:
              isActive
                  ? Color(0xFFFF8080)
                  : Colors.grey[400]!, // Border berbeda jika aktif
          width: isActive ? 2 : 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            languageName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              color: isActive ? Color(0xFFF00000) : Colors.black87,
            ),
          ),
          if (isActive)
            Icon(
              Icons.check_circle,
              color: Color(0xFFF00000),
            ), // Tanda centang jika aktif
        ],
      ),
    ),
  );
}
