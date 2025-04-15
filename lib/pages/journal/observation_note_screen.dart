import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ios_fl_n_wildrama_3398/pages/journal/observation_date_screen.dart';

class ObservationNoteScreen extends StatefulWidget {
  final String animalName;
  final void Function(String note) onNext;

  const ObservationNoteScreen({
    required this.animalName,
    required this.onNext,
    super.key,
  });

  @override
  State<ObservationNoteScreen> createState() => _ObservationNoteScreenState();
}

class _ObservationNoteScreenState extends State<ObservationNoteScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C09),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back, color: Colors.red),
                  ),
                  SizedBox(width: 12),
                  Center(
                    child: Text(
                      'Share your observations',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFE53D43),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              TextField(
                controller: _controller,
                maxLines: 6,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Text',
                  hintStyle: const TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFE53D43),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFFE53D43),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              const Spacer(),
              JournalButton(
                icon: FontAwesomeIcons.binoculars,
                label: 'Next',
                color: const Color(0xFFFEE006).withOpacity(0.32),
                onTap: () {
                  if (_controller.text.trim().isNotEmpty) {
                    widget.onNext(_controller.text.trim());
                  }
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
