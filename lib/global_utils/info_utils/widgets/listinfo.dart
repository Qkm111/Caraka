import 'package:flutter/material.dart';

class ListInfo extends StatelessWidget {
  
  final String image;
  final String title;
  final Widget navigate;

  const ListInfo({
    super.key,
    required this.image,
    required this.title,
    required this.navigate
  });

  @override
  Widget build(BuildContext context) {

    void _navigate(BuildContext context, Widget navigate) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => navigate,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Transisi slide dari kiri ke kanan
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        ),
      );
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFF8080)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image),
            SizedBox(width: 20),
            Text(title, style: TextStyle(fontSize: 16)),
            Spacer(),
            IconButton(onPressed: () => _navigate(context, navigate), icon: Icon(Icons.arrow_forward)),
          ],
        ),
      ),
    );
  }
}
