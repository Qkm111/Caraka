import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListKuis extends StatelessWidget {
  final String point;
  final String name;
  final Widget navigate;
  final Color color;

  const ListKuis(
      {required this.name,
      required this.point,
      required this.navigate,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
      child: Container(
        height: 88,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Row(
                children: [
                  Text(
                    point,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    '/',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  ),
                  Text(
                    '5',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          navigate,
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return child; // Tanpa animasi
                      },
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ))
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              spreadRadius: 0,
              offset: const Offset(0, 4)
            )
          ]
        ),
      ),
    );
  }
}
