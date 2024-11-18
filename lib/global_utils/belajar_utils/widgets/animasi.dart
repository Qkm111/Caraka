import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Animasi extends StatelessWidget {
  final Color warna;
  final String thumbnail;
  final String judul;
  final String animasi;
  final Widget navigate;

  const Animasi(
      {required this.warna,
      required this.thumbnail,
      required this.judul,
      required this.animasi,
      required this.navigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: AppBar(
            backgroundColor: const Color(0xFFF00000),
          )),
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
                          color: warna,
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              thumbnail,
                              width: 72,
                              height: 72,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              judul,
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
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: warna,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: const Offset(0, 4))
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(36),
                      child: CachedNetworkImage(
                        imageUrl: animasi,
                        placeholder: (context, url) =>
                            Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 36,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => navigate)));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF00000),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.draw),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Coba' tolès"),
                        ],
                      )),
                ),
                SizedBox(height: 12,),
                SizedBox(
                  height: 36,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Abhâli'),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
