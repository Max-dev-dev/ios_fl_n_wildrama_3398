import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ios_fl_n_wildrama_3398/pages/onboarding/onboarding_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  final PageController _pageController = PageController();
  final int _totalPages = 6;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startSlideshow();
  }

  void _startSlideshow() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_currentIndex < _totalPages - 1) {
        setState(() {
          _currentIndex++;
        });
      } else {
        timer.cancel();
        _goToNextScreen();
      }
    });
  }

  void _goToNextScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 700),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        transitionBuilder: (child, animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: Image.asset(
          'assets/images/splash/${_currentIndex + 1}.png',
          key: ValueKey<int>(_currentIndex),
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
