import 'package:flutter/material.dart';
import 'package:ios_fl_n_wildrama_3398/pages/journal/animal_selection_screen.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

class ObservationDateScreen extends StatefulWidget {
  const ObservationDateScreen({super.key});

  @override
  State<ObservationDateScreen> createState() => _ObservationDateScreenState();
}

class _ObservationDateScreenState extends State<ObservationDateScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  int _hour = 0;
  int _minute = 0;

  void _incrementHour() => setState(() => _hour = (_hour + 1) % 24);
  void _decrementHour() => setState(() => _hour = (_hour - 1 + 24) % 24);
  void _incrementMinute() => setState(() => _minute = (_minute + 1) % 60);
  void _decrementMinute() => setState(() => _minute = (_minute - 1 + 60) % 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0C09),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                      'Select the date and time\nof observation',
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
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffe53d43).withOpacity(0.32),
                  borderRadius: BorderRadius.circular(36),
                ),
                padding: const EdgeInsets.all(16),
                child: TableCalendar(
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  calendarFormat: CalendarFormat.month,
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: Colors.white24,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: const BoxDecoration(
                      color: Color(0xFFE53D43),
                      shape: BoxShape.circle,
                    ),
                    defaultTextStyle: const TextStyle(color: Colors.white),
                    weekendTextStyle: const TextStyle(color: Colors.red),
                    outsideTextStyle: const TextStyle(color: Colors.grey),
                  ),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    leftChevronIcon: const Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                    rightChevronIcon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _TimeUnitPicker(
                    value: _hour,
                    onUp: _incrementHour,
                    onDown: _decrementHour,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    ":",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  const SizedBox(width: 12),
                  _TimeUnitPicker(
                    value: _minute,
                    onUp: _incrementMinute,
                    onDown: _decrementMinute,
                  ),
                ],
              ),
              const SizedBox(height: 32),
              JournalButton(
                icon: FontAwesomeIcons.binoculars,
                label: 'Next',
                color: const Color(0xFFFEE006).withOpacity(0.32),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => AnimalSelectionScreen()),
                  );
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

class _TimeUnitPicker extends StatelessWidget {
  final int value;
  final VoidCallback onUp;
  final VoidCallback onDown;

  const _TimeUnitPicker({
    required this.value,
    required this.onUp,
    required this.onDown,
  });

  String _format(int val) => val.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: const Icon(Icons.keyboard_arrow_up, color: Colors.white),
          onPressed: onUp,
        ),
        Container(
          width: 60,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            _format(value),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          onPressed: onDown,
        ),
      ],
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
