import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/views/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1100,
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset(
              "assets/lottie/splash.json",
            ),
          )
        ],
      ),
      nextScreen: const HomeView(),
      splashIconSize: 400,
      backgroundColor: Colors.white,
    );
  }
}
