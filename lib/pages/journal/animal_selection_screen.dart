import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ios_fl_n_wildrama_3398/pages/journal/observation_date_screen.dart';
import 'package:ios_fl_n_wildrama_3398/pages/journal/observation_note_screen.dart';
import 'package:ios_fl_n_wildrama_3398/pages/journal/observation_photo_screen.dart';

class AnimalSelectionScreen extends StatefulWidget {
  const AnimalSelectionScreen({super.key});

  @override
  State<AnimalSelectionScreen> createState() => _AnimalSelectionScreenState();
}

class _AnimalSelectionScreenState extends State<AnimalSelectionScreen> {
  String? _selected;

  final List<String> animals = [
    'Wolf',
    'Deer',
    'Bear',
    'Rabbit',
    'Fox',
    'Coyote',
    'Squirrel',
    'Mountain Lion',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C09),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_back, color: Colors.red),
                    ),
                    SizedBox(width: 12),
                    Center(
                      child: Text(
                        'Select an animal',
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
              ),

              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemCount: animals.length,
                  itemBuilder: (context, index) {
                    final animal = animals[index];
                    final isSelected = _selected == animal;

                    return GestureDetector(
                      onTap: () => setState(() => _selected = animal),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color:
                              isSelected
                                  ? const Color(0xFFE53D43)
                                  : const Color(0xFF471F1F),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/animals/${index + 1}.png',
                            ),
                          ),
                          title: Text(
                            animal,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: CircleAvatar(
                            radius: 18,
                            backgroundColor: const Color(
                              0xFFFEE006,
                            ).withOpacity(0.32),
                            child: FaIcon(
                              FontAwesomeIcons.arrowRight,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: JournalButton(
                  icon: FontAwesomeIcons.binoculars,
                  label: 'Next',
                  color: const Color(0xFFFEE006).withOpacity(0.32),
                  onTap: () {
                    if (_selected != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (_) => ObservationNoteScreen(
                                animalName: _selected!,
                                onNext: (note) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (_) => ObservationPhotoScreen(
                                            animalName: _selected!,
                                            note: note,
                                          ),
                                    ),
                                  );
                                },
                              ),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
