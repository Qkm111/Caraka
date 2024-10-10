import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardInfo extends StatelessWidget {
  const DashboardInfo({super.key});

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
                            Image.asset('assets/ic_character/info.png'),
                            const Text(
                              'Tentang Caraka',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.all(24),
                  height: 200,
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
                    "CARAKA panèka aplikasi ajhâr nolès bân maca Carakan Madhurâ ènèyataghi dhâ’ sadhâjâ morèd SD/MI sè aghunaaghi bhâsa madhurâ sareng ènèyatghi dhâ’ kaula dibi’ kaangguy Tugas Akhir. Malarmogha aplikasi ajhâr Nolès bân maca Carakan Madurâ paneka adâdhiyâghi manfaat otabâ aguna ongghu dhâ’ kamajhuwân Bhâsa Madhurâ kong langkong Carakan Madhurâ. ",
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
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
                      width: 212,
                      decoration: BoxDecoration(
                        color: Color(0xFFFF8080),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Nurul Qomaria',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Manajemen Informatika',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black
                            ),
                          )
                        ],
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
