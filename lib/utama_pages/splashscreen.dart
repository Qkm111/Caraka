import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Delay untuk simulasi splash screen
    Future.delayed(const Duration(seconds: 2), () {
      // Navigasi ke StartPage setelah selesai splash screen
      Navigator.pushReplacementNamed(
        context, '/menu'
      );
    });

    return Scaffold(
      body: Center(
        child: Container(
          width: 360,
          height: 800,
          padding: const EdgeInsets.only(top: 35),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 124,
                height: 175,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/common/logo-splash.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
