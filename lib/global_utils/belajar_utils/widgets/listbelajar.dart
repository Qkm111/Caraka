import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  final String image;
  final String name;
  final Widget navigate;
  final Color color;

  const ListMenu(
      {required this.name,
      required this.image,
      required this.navigate,
      required this.color});

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(image), context);

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

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
      child: GestureDetector(
        onTap: () => _navigate(context, navigate),
        child: Container(
          height: 88,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: Image.asset(image),
              ),
              const SizedBox(width: 40),
              Expanded(
                child: Text(
                  name,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => _navigate(context, navigate),
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              )
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
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
