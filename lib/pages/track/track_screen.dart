// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ios_fl_n_wildrama_3398/pages/track/animal_detail_track_screen.dart';

class AnimalWithTrack {
  final String name;
  final String image;
  final String trackImage;
  final String description;

  AnimalWithTrack({
    required this.name,
    required this.image,
    required this.trackImage,
    this.description = '',
  });
}

final List<AnimalWithTrack> animalWithTracks = [
  AnimalWithTrack(
    name: 'Wolf',
    image: 'assets/images/animals/1.png',
    description:
        'Wolves have been revered as the ultimate predators of the wild for centuries. They are not only iconic for their haunting howls but also for their complex social structures and hunting techniques. Wolves live in packs, with each member playing a distinct role in hunting, protecting the pack, and ensuring its survival. Their ability to coordinate and work together when hunting large prey like deer and moose showcases their intelligence and strength. Wolves also have an important role in maintaining the health of their ecosystem by controlling herbivore populations. Despite their importance, wolves have faced persecution, and their populations have dwindled in many areas. Today, conservation efforts are vital to protect these magnificent creatures and their habitats.',
    trackImage: 'assets/images/tracks/wolf.png',
  ),
  AnimalWithTrack(
    name: 'Deer',
    image: 'assets/images/animals/2.png',
    description:
        'Deer are among the most adaptable and graceful creatures in the wild. Found across North America, Europe, and Asia, they are an integral part of the forest ecosystem. Deer are herbivores, feeding on a wide variety of vegetation, which they help keep in balance by selectively grazing. Known for their ability to swiftly navigate through dense forests, deer rely on their keen sense of smell and hearing to detect predators. The male deer, or bucks, grow impressive antlers every year, which are used in battles for dominance during the rutting season. Although they are often seen as gentle and peaceful, deer can be fierce fighters when it comes to protecting their territory or mates. Their population has grown in certain regions, leading to an increased need for management to prevent overgrazing.',
    trackImage: 'assets/images/tracks/deer.png',
  ),
  AnimalWithTrack(
    name: 'Bear',
    image: 'assets/images/animals/3.png',
    trackImage: 'assets/images/tracks/bear.png',
    description:
        'Bears are some of the most iconic creatures in the wild. Known for their massive size, powerful presence, and solitary nature, bears inhabit a variety of ecosystems, from the dense forests of North America to the icy tundras of the Arctic. They are omnivores, feeding on everything from berries and fish to small mammals. Bears are particularly well-known for their hibernation behavior, where they enter a state of dormancy for the winter months to conserve energy. Despite their imposing size, many bears are surprisingly stealthy hunters, using their excellent sense of smell to track prey. However, bears also play a crucial role in their ecosystems, helping to disperse seeds, control pest populations, and balance the food chain. Their ability to adapt to diverse environments makes them resilient, but they are also vulnerable due to habitat loss and human activity.',
  ),
  AnimalWithTrack(
    name: 'Rabbit',
    image: 'assets/images/animals/4.png',
    trackImage: 'assets/images/tracks/rabbit.png',
    description:
        'Rabbits are known for their speed, agility, and ability to adapt to various environments. Found in forests, grasslands, and even urban areas, rabbits are herbivores that feed on grasses, herbs, and shrubs. Despite their docile appearance, rabbits are expert survivalists, with keen senses of hearing and smell to detect danger. Their large ears help them hear predators from miles away, and their powerful hind legs enable them to leap great distances when fleeing. Rabbits are also prolific breeders, with some species able to reproduce several times a year. This ability to rapidly increase their population makes them a key food source for predators, but also a necessary part of maintaining ecological balance. Unfortunately, rabbits are facing threats due to habitat destruction and invasive species.',
  ),
  AnimalWithTrack(
    name: 'Fox',
    image: 'assets/images/animals/5.png',
    trackImage: 'assets/images/tracks/fox.png',
    description:
        'Foxes are some of the most clever and adaptable creatures in the animal kingdom. Their ability to thrive in a wide variety of habitats—from forests and grasslands to urban areas—makes them remarkable survivors. Foxes are omnivorous, feeding on small mammals, fruits, and insects. What sets them apart from other predators is their cunning hunting strategies. Foxes are known to use their intelligence and agility to outsmart prey, often hunting alone or in pairs. Their characteristic bushy tail helps them balance while running and also acts as a blanket to keep them warm in colder weather. Foxes have been subjects of myths and folklore for centuries, often depicted as tricksters or symbols of intelligence. In the wild, they serve as important predators, helping to control small mammal populations and maintain ecosystem health.',
  ),
  AnimalWithTrack(
    name: 'Coyote',
    image: 'assets/images/animals/6.png',
    trackImage: 'assets/images/tracks/coyote.png',
    description:
        'Coyotes are often misunderstood creatures, frequently mistaken for wolves due to their similar appearance. However, coyotes are much smaller and more adaptable, thriving in diverse environments, including deserts, forests, and even urban areas. Coyotes are opportunistic omnivores, eating a wide range of foods from rodents and small mammals to fruits and even human garbage. Their keen sense of hearing allows them to detect prey from long distances, and their stealthy movements make them effective hunters, especially at night. Coyotes are also known for their complex vocalizations, which can be heard during the night as they communicate with each other. Despite being highly adaptable, coyotes face threats from habitat loss and human persecution, yet they continue to thrive in many regions.',
  ),
  AnimalWithTrack(
    name: 'Squirrel',
    image: 'assets/images/animals/7.png',
    trackImage: 'assets/images/tracks/squirrel.png',
    description:
        'Squirrels are one of the most familiar creatures in the forest, known for their playful antics and impressive agility. They are excellent climbers and can leap between trees with ease, using their bushy tails for balance and communication. Squirrels are primarily herbivores, feeding on nuts, seeds, fruits, and occasionally fungi. They are also opportunistic feeders, often caching food for the winter months when resources are scarce. Their sharp teeth and powerful jaws allow them to gnaw on a variety of materials, including tree bark and seeds. Squirrels are essential to forest ecosystems, as they help in seed dispersal, allowing for new plant growth. Despite their charming appearance, squirrels are constantly at risk from predators, including hawks, snakes, and foxes.',
  ),
  AnimalWithTrack(
    name: 'Mountain Lion',
    image: 'assets/images/animals/8.png',
    trackImage: 'assets/images/tracks/mountain_lion.png',
    description:
        'Mountain lions, also known as cougars or pumas, are among the most elusive big cats in North America. These solitary predators are known for their stealth and incredible agility, often stalking their prey before making a swift attack. Mountain lions can take down prey much larger than themselves, such as deer and elk, using their powerful jaws and sharp claws. They have a wide range, spanning from forests and mountains to deserts, adapting to various environments with ease. Unlike many other big cats, mountain lions do not roar but instead communicate through growls, whistles, and screams. Although they are a top predator, mountain lions are often elusive and difficult to spot in the wild due to their solitary nature and ability to blend into their surroundings.',
  ),
];

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

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
                    'Learning to Identify Wild\nAnimal Tracks',
                    maxLines: 2,
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
                'You will be able to test your knowledge and explore the tracks of various wild animals. Each task involves choosing the correct track.',
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
                label: 'Let`s go',
                color: const Color(0xFFFee006).withOpacity(0.32),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => GuessTrackScreen()),
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
  final String label;
  final VoidCallback onTap;
  final IconData? trailingIcon;
  final Color color;

  const JournalButton({
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
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Image.asset('assets/images/menu_icons/4_on.png'),
            ),
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

class GuessTrackScreen extends StatefulWidget {
  const GuessTrackScreen({super.key});

  @override
  State<GuessTrackScreen> createState() => _GuessTrackScreenState();
}

class _GuessTrackScreenState extends State<GuessTrackScreen> {
  late AnimalWithTrack correctAnimal;
  late List<AnimalWithTrack> options;
  int? selectedIndex;
  bool showFeedback = false;
  bool isCorrect = false;

  @override
  void initState() {
    super.initState();
    _generateQuestion();
    selectedIndex = null;
  }

  void _generateQuestion() {
    options = List.of(animalWithTracks)..shuffle();
    correctAnimal = options.first;
    options = options.take(3).toList()..shuffle();
  }

  void _onSelect(int index) async {
    if (selectedIndex != null) return;

    setState(() {
      selectedIndex = index;
      isCorrect = options[index].name == correctAnimal.name;
    });

    await Future.delayed(const Duration(milliseconds: 1500));

    showModalBottomSheet(
      context: context,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      builder:
          (_) =>
              isCorrect
                  ? CorrectTrackModal(
                    onNext: () {
                      setState(() {
                        _generateQuestion();
                        selectedIndex = null;
                      });
                      Navigator.pop(context);
                    },
                    onLearnMore: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (_) => AnimalDetailScreen(animal: correctAnimal),
                        ),
                      );
                    },
                  )
                  : WrongTrackModal(
                    onRetry: () {
                      setState(() {
                        selectedIndex = null;
                      });
                      Navigator.pop(context);
                    },
                    onBack: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C0C09),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xFFDC4E4E),
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    SizedBox(width: 12),
                    Center(
                      child: const Text(
                        'Find the correct Track',
                        maxLines: 2,
                        style: TextStyle(
                          color: Color(0xFFE53D43),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Image.asset(
                  correctAnimal.trackImage,
                  height: 300,
                  width: double.infinity,
                ),
                const SizedBox(height: 32),
                ...options.asMap().entries.map(
                  (entry) => _buildAnswerButton(entry.key, entry.value),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnswerButton(int index, AnimalWithTrack animal) {
    Color color;
    if (selectedIndex == null) {
      color = const Color(0xff2B1A1A);
    } else if (index == selectedIndex) {
      color = isCorrect ? Colors.green : Colors.red;
    } else if (options[index].name == correctAnimal.name) {
      color = Colors.green;
    } else {
      color = const Color(0xff2B1A1A);
    }

    return GestureDetector(
      onTap: () => _onSelect(index),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage(animal.image), radius: 20),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                animal.name,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.orangeAccent,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.white,
              ),
              radius: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class CorrectTrackModal extends StatelessWidget {
  final VoidCallback onLearnMore;
  final VoidCallback onNext;

  const CorrectTrackModal({
    super.key,
    required this.onLearnMore,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return _ModalContainer(
      color: const Color(0xffFEE006),
      icon: Icons.check_circle,
      iconColor: Colors.green,
      title: 'Congratulations!\nYou chose the correct track! 🎉🐾',
      primaryLabel: 'Learn more',
      secondaryLabel: 'Next',
      onPrimaryTap: onLearnMore,
      onSecondaryTap: onNext,
    );
  }
}

class WrongTrackModal extends StatelessWidget {
  final VoidCallback onRetry;
  final VoidCallback onBack;

  const WrongTrackModal({
    super.key,
    required this.onRetry,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return _ModalContainer(
      color: const Color(0xffE53D43),
      icon: Icons.cancel,
      iconColor: Colors.white,
      title: 'Missed this one, but\nthe journey continues!',
      primaryLabel: 'Back to home',
      secondaryLabel: 'Try again',
      onPrimaryTap: onBack,
      onSecondaryTap: onRetry,
    );
  }
}

class _ModalContainer extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String primaryLabel;
  final String secondaryLabel;
  final VoidCallback onPrimaryTap;
  final VoidCallback onSecondaryTap;

  const _ModalContainer({
    required this.color,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.onPrimaryTap,
    required this.onSecondaryTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        border: Border.all(width: 4, color: Colors.black),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 48, color: iconColor),
          const SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: 170,
            child: _ModalButton(label: primaryLabel, onTap: onPrimaryTap),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: 170,
            child: _ModalButton(label: secondaryLabel, onTap: onSecondaryTap),
          ),
        ],
      ),
    );
  }
}

class _ModalButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _ModalButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        backgroundColor: Colors.black,
      ),
      onPressed: onTap,
      icon: const Icon(Icons.arrow_forward, color: Colors.white),
      label: Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
