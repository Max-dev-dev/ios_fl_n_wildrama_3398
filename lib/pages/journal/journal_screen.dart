// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ios_fl_n_wildrama_3398/pages/journal/my_observation.dart';
import 'package:ios_fl_n_wildrama_3398/pages/journal/observation_date_screen.dart';

class JournalScreen extends StatelessWidget {
  const JournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C09),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Observation Journal',
                    style: TextStyle(
                      color: Color(0xFFE53D43),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Here, you can record your observations of animals, capture unique moments, and share your discoveries with the world!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),

              Row(
                children: [
                  Spacer(),
                  Image.asset(
                    'assets/images/app_logo.png',
                    width: 200,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Spacer(),
              JournalButton(
                icon: FontAwesomeIcons.binoculars,
                label: 'My observations',
                color: const Color(0xFFFee006).withOpacity(0.32),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const MyObservation()),
                  );
                },
              ),
              const SizedBox(height: 8),
              JournalButton(
                icon: FontAwesomeIcons.image,
                label: 'Add an observation',
                color: const Color(0xFFFee006).withOpacity(0.32),
                trailingIcon: FontAwesomeIcons.plus,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const ObservationDateScreen()),
                  );
                },
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class JournalButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final IconData? trailingIcon;
  final Color color;

  const JournalButton({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.color,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xffe53d43).withOpacity(0.32),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            FaIcon(icon, color: Color(0xFFE53D43), size: 20),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CircleAvatar(
              radius: 18,
              backgroundColor: color,
              child: FaIcon(
                trailingIcon ?? FontAwesomeIcons.arrowRight,
                color: Colors.white,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
