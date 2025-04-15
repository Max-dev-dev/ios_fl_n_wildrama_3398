import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ios_fl_n_wildrama_3398/cubit/observation_cubit.dart';
import 'package:ios_fl_n_wildrama_3398/models/observation_model.dart';
import 'package:ios_fl_n_wildrama_3398/pages/journal/observation_date_screen.dart';

class ObservationPhotoScreen extends StatefulWidget {
  final String animalName;
  final String note;

  const ObservationPhotoScreen({
    required this.animalName,
    required this.note,
    super.key,
  });

  @override
  State<ObservationPhotoScreen> createState() => _ObservationPhotoScreenState();
}

class _ObservationPhotoScreenState extends State<ObservationPhotoScreen> {
  XFile? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      setState(() {
        _image = file;
      });
    }
  }

  void _save() {
    if (_image == null) return;

    final observation = Observation(
      animalName: widget.animalName,
      note: widget.note,
      photoPath: _image!.path,
    );

    context.read<ObservationCubit>().add(observation);

    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C09),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            width: double.infinity,
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
                        'Upload a photo',
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
                Center(
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE53D43),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Icon(Icons.add, color: Colors.white, size: 80),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    width: 140,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE53D43),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Add a photo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                JournalButton(
                  icon: FontAwesomeIcons.binoculars,
                  label: 'Save',
                  color: const Color(0xFFFEE006).withOpacity(0.32),
                  onTap: _save,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
