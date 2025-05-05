import 'package:caraka/global_utils/info_utils/widgets/listinfo.dart';
import 'package:caraka/info_aplikasi/dev_caraka.dart';
import 'package:caraka/info_aplikasi/language.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';

class DashboardInfo extends StatelessWidget {
  const DashboardInfo({super.key});

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
                        color: const Color(0xFFFF8080),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          penerjemah.translate('bannerinfo'),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                ListInfo(
                  image: 'assets/ic_character/language.png',
                  title: penerjemah.translate('menuinfo1'), // Pakai terjemahan
                  navigate: Language(),
                ),
                SizedBox(height: 24),
                ListInfo(
                  image: 'assets/ic_character/dev.png',
                  title: penerjemah.translate('menuinfo2'), // Pakai terjemahan
                  navigate: DeveloperInfo(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}