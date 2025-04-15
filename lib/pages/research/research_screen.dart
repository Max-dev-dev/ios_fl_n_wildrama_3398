// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ios_fl_n_wildrama_3398/models/animal_model.dart';
import 'package:ios_fl_n_wildrama_3398/pages/research/explore_ecosystem_screen.dart';

final List<Map<String, dynamic>> ecosystems = [
  {
    'name': 'Forest-Steppes',
    'image': 'assets/images/flora/1.png',
    'shortDescription':
        'An ecosystem located between forests and steppes, with a transitional climate, combining elements of both forests and open plains, home to many species of animals and plants adapted to varying conditions.',
    'longDescription': '''
The forest-steppe is a unique ecosystem that exists between the dense woodlands and the open grasslands. Stretching across Eastern Europe, Central Asia, and parts of North America, this biome is home to a diverse range of species that have adapted to both forests and open plains.

What Defines a Forest-Steppe?
	•	🌿 Mixed Vegetation – A blend of forests and grasslands, providing habitats for both woodland and prairie species.
	•	☀️ Extreme Climate – Hot summers and cold winters, requiring animals to adapt to seasonal changes.
	•	🌎 Diverse Wildlife – Home to large herbivores, elusive predators, and migratory birds.

This transition zone creates a rich environment where species must balance stealth, speed, and survival skills to thrive.
''',
    'animals': [
      {
        'name': 'Red Deer',
        'image': 'assets/images/flora_animals/1.png',
        'description': '''
One of the most iconic animals of the forest-steppe is the red deer (Cervus elaphus). With its towering antlers and powerful frame, this majestic herbivore is a symbol of strength and endurance.

How Do Red Deer Survive the Changing Seasons?
	•	🍂 Thick Winter Coats – Their fur becomes denser in winter to withstand extreme cold.
	•	🌾 Versatile Diet – They feed on grasses, leaves, and bark, adapting to seasonal food availability.
	•	🦌 Herd Behavior – They live in groups, offering protection from predators like wolves and lynxes.

Fascinating Facts:

🦌 Antler Power – Males shed and regrow their antlers every year, with each set becoming larger over time.

🦌 Roaring Contests – During mating season, stags compete in loud roaring battles to establish dominance.

🦌 Speed and Agility – Despite their size, red deer can run up to 70 km/h (43 mph) and leap over obstacles effortlessly.

As human activity expands into forest-steppe regions, red deer populations face threats from deforestation and poaching.
''',
      },
      {
        'name': 'Steppe Polecat',
        'image': 'assets/images/flora_animals/2.png',
        'description': '''
The steppe polecat (Mustela eversmanii) is a small but fierce predator, perfectly designed for life in the forest-steppe. With its slender body and sharp instincts, it is a master of stealth.

What Makes the Steppe Polecat a Fearsome Predator?
	•	🦴 Nocturnal Stalker – It hunts at night, using its keen senses to locate prey in the dark.
	•	🕳 Burrow Master – It takes over abandoned rodent burrows, creating hidden dens for safety.
	•	🐍 Fearless Fighter – It can take down prey larger than itself, including rabbits and venomous snakes.

Fascinating Facts:

🐾 “Zombie Mode” – When threatened, it can enter a catatonic state, tricking predators into thinking it’s dead.

🐾 Family Business – Polecat parents raise their kits together, teaching them how to hunt.

🐾 Natural Pest Control – They keep rodent populations in check, making them essential for ecosystem balance.

Unfortunately, the steppe polecat is now declining due to habitat destruction.
''',
      },
      {
        'name': 'Common Crane',
        'image': 'assets/images/flora_animals/3.png',
        'description': '''
One of the most graceful inhabitants of the forest-steppe is the common crane (Grus grus). These tall, long-legged birds are famous for their beautiful dances and epic migrations.

Why Are Common Cranes Such Skilled Migrants?
	•	✈️ Long-Distance Flyers – They travel thousands of kilometers between summer and winter habitats.
	•	🦴 Hollow Bones – Their lightweight skeletons allow them to soar for hours without exhaustion.
	•	🎭 Courtship Dances – Mating pairs perform intricate dances, jumping and bowing in synchronized movements.

Fascinating Facts:

🦢 Lifelong Love – Common cranes mate for life, staying together for decades.

🦢 Trumpet Calls – Their calls can be heard from several kilometers away, helping them stay connected during migration.

🦢 Cultural Symbol – In many cultures, cranes symbolize longevity, wisdom, and peace.

Despite their adaptability, wetland destruction threatens their breeding grounds.
''',
      },
    ],
  },
  {
    'name': 'Desert',
    'image': 'assets/images/flora/2.png',
    'shortDescription':
        'An ecosystem with extreme climatic conditions, where animals and plants have developed unique adaptations to survive in heat and water scarcity.',
    'longDescription': '''
The desert ecosystem is one of the harshest environments on Earth. With temperatures often soaring above 40°C (104°F) during the day and plunging below freezing at night, survival in this ecosystem requires remarkable adaptations. Despite these extremes, deserts are home to a wide range of wildlife, each uniquely suited to endure the heat, dryness, and scarcity of food and water.

What Defines a Desert?
	•	🌵 Minimal Rainfall – Deserts receive less than 250 mm (10 inches) of rain per year, making water a precious resource.
	•	☀️ Temperature Extremes – Daytime heat is intense, but desert animals often thrive by being active at night or in the early morning.
	•	🌍 Adaptations – Flora and fauna in the desert have evolved special strategies to cope with the arid climate, such as water conservation and heat resistance.
''',
    'animals': [
      {
        'name': 'Fennec Fox',
        'image': 'assets/images/flora_animals/4.png',
        'description': '''
The fennec fox (Vulpes zerda) is a small nocturnal predator with oversized ears and a remarkable ability to survive in the sands of the Sahara Desert. Known for its cuteness, this tiny fox is also one of the best-adapted animals for desert life.

How Does the Fennec Fox Survive the Desert Heat?
	•	🦊 Big Ears, Big Benefits – Its large ears act as cooling devices, dissipating heat and helping the fox stay cool.
	•	🌙 Nocturnal Lifestyle – The fennec fox is most active at night, avoiding the extreme daytime heat.
	•	💧 Water Conservation – It gets most of its moisture from prey, such as insects and small mammals, allowing it to survive without frequent access to water.

Fascinating Facts:

🦊 Superb Diggers – Fennecs are expert diggers, able to create burrows to escape the heat and stay safe from predators.

🦊 Silent Paws – Their soft pads allow them to move silently across the desert, making them stealthy hunters.

🦊 Lonely Solitude – Fennec foxes are territorial, and males will defend their territory against rivals, often using high-pitched calls to warn others.

This clever fox has adapted so well to the desert that it can thrive in conditions where many other animals would perish.
''',
      },
      {
        'name': 'Dromedary Camel',
        'image': 'assets/images/flora_animals/5.png',
        'description': '''
The dromedary camel (Camelus dromedarius) is one of the most iconic desert animals, revered for its resilience and stamina. Known as the “ship of the desert”, this one-humped camel has been the lifeline for nomadic tribes for thousands of years.

What Makes the Dromedary Camel a Desert Survivor?
	•	🐫 Water Storage – Camels store fat in their humps, which they can metabolize into water and energy when food and water are scarce.
	•	☀️ Heat Resistance – Camels can withstand extreme temperatures ranging from 50°C (122°F) in the day to below freezing at night.
	•	🦠 Tolerance to Dehydration – They can lose up to 25% of their body weight in water and still function, making them remarkably resilient to dehydration.

Fascinating Facts:

🐫 Knee Pads – Camels have thick calluses on their knees, which allow them to kneel on hot, rough surfaces during rest breaks.

🐫 Sunglasses of Nature – Their double-layered eyelashes and eyebrows help protect their eyes from sandstorms and the harsh desert sun.

🐫 Fast Movers – While camels are often associated with slow movements, they can actually run at speeds of 65 km/h (40 mph) in short bursts when necessary.

The dromedary’s ability to travel long distances in search of food and water has made it an essential animal for desert life.
''',
      },
      {
        'name': 'Horned Viper',
        'image': 'assets/images/flora_animals/6.png',
        'description': '''
The horned viper (Vipera ammodytes) is a venomous snake found in the desert regions of North Africa. Its name comes from the distinctive horn-like structure on its nose, which gives it a unique appearance among desert reptiles.

How Does the Horned Viper Survive in the Desert?
	•	🐍 Camouflage – Its brown and tan scales help it blend into the desert sand, making it almost invisible to prey and predators alike.
	•	🌑 Nocturnal Hunting – Like many desert predators, the horned viper is most active at night, when the temperature is cooler and prey is easier to catch.
	•	🦗 Ambush Predator – The horned viper waits in ambush for small mammals, birds, and lizards to approach before striking with lightning speed.

Fascinating Facts:

🐍 Venomous Bite – The venom of the horned viper is potent, capable of immobilizing small prey, and it has a hemotoxic effect that can disrupt blood circulation.

🐍 Hooded Defense – When threatened, the snake raises its head and displays its “horn”, making itself look more intimidating.

🐍 Survival Master – This snake can survive on very little food, and some can go without eating for weeks during the hottest months of the year.

The horned viper may be dangerous, but it is an essential part of the desert ecosystem, keeping populations of small mammals and lizards in check.
''',
      },
    ],
  },
  {
    'name': 'Tropical Forests',
    'image': 'assets/images/flora/3.png',
    'shortDescription':
        'An ecosystem with high levels of rainfall and a rich variety of living beings, where plants and animals are adapted to warm and humid climates.',
    'longDescription': '''
The tropical rainforest ecosystem is often referred to as the “lungs of the Earth” due to its vast role in producing oxygen and absorbing carbon dioxide. These forests, typically found near the Equator, are home to an astonishing variety of plants, animals, and microorganisms. Covering only about 6% of the Earth’s surface, tropical rainforests house more than half of the world’s species, making them one of the most biodiverse ecosystems on the planet.

What Defines a Tropical Forest?
	•	🌿 High Rainfall – These forests receive an average of 2000 mm to 10,000 mm (79-393 inches) of rain per year, creating a lush and humid environment.
	•	🌞 Constant Warmth – Temperatures remain warm year-round, between 20°C to 25°C (68°F to 77°F).
	•	🌳 Layered Canopy – The forests are composed of several layers, from the forest floor to the towering emergent layer, where sunlight is abundant.
	•	🌍 Incredibly Diverse – Tropical forests are home to a variety of species, many of which are yet to be discovered.
''',
    'animals': [
      {
        'name': 'Jaguar',
        'image': 'assets/images/flora_animals/7.png',
        'description': '''
The jaguar (Panthera onca) is one of the largest cats in the world and a true apex predator in the tropical rainforest ecosystem. Found primarily in Central and South America, the jaguar thrives in rainforests and is an expert hunter.

How Does the Jaguar Survive in Tropical Forests?
	•	🐆 Powerful Jaws – Jaguars are known for their incredible bite force, capable of crushing skulls and shells of prey such as turtles or caimans.
	•	🌲 Solitary Lifestyle – Jaguars are solitary animals that rely on their stealth and patience to stalk prey. They are excellent climbers, often hunting from the trees.
	•	🦸‍♂️ Opportunistic Hunter – Jaguars are not only skilled hunters but also scavengers, feeding on a variety of animals from deer to wild boars and even smaller creatures.

Fascinating Facts:

🐆 Territorial Cats – Jaguars mark their territory with scratches on trees, urine, and feces, establishing dominance in the forest.

🐆 Water Lovers – Unlike many big cats, jaguars enjoy water and are strong swimmers, often hunting in rivers or lakes.

🐆 Stealthy Approach – Known for their silent movements and powerful build, jaguars can sneak up on prey with incredible stealth.

The jaguar is the quintessential apex predator of the tropical forest, maintaining balance within the ecosystem and keeping the populations of other animals in check.
''',
      },
      {
        'name': 'Howler Monkey',
        'image': 'assets/images/flora_animals/8.png',
        'description': '''
The howler monkey (Alouatta) is one of the most distinctive animals in the tropical forests, especially known for its loud howls that can be heard over several kilometers. These monkeys are found in the rainforests of Central and South America and have adapted remarkably well to their environment.

How Does the Howler Monkey Adapt to Tropical Forest Life?
	•	🐒 Loud Calls – The howler monkey’s large throat is specialized for making deep, resonant howls that echo throughout the forest, allowing them to communicate over long distances.
	•	🌳 Prehensile Tail – Howler monkeys have a prehensile tail, which acts like a fifth hand, enabling them to navigate through the trees with ease.
	•	🍃 Herbivorous Diet – They are primarily leaf eaters, consuming a variety of leaves, fruits, and flowers. Their digestive system is adapted to process tough, fibrous plant matter.

Fascinating Facts:

🐒 Group Living – Howler monkeys live in social groups, with individuals working together to protect each other from predators.

🐒 Strategic Movement – They move slowly through the canopy to conserve energy, making them one of the least energetic monkeys.

🐒 Communication Masters – Their howls can travel over 3 kilometers (1.8 miles) through dense forest, helping them warn other members of their group of potential danger.

The howler monkey plays a key role in maintaining the forest ecosystem by dispersing seeds and helping to regulate the plant population in their environment.
''',
      },
      {
        'name': 'Poison Dart Frog',
        'image': 'assets/images/flora_animals/9.png',
        'description': '''
The poison dart frog (Dendrobatidae) is a small, brightly colored frog found in the rainforests of Central and South America. Despite their tiny size, these frogs have evolved some of the most potent toxins in the animal kingdom, which they use to defend themselves from predators.

How Does the Poison Dart Frog Survive in Tropical Forests?
	•	🦎 Bright Colors as a Warning – The vivid blue, yellow, and red colors of poison dart frogs serve as a warning to predators about their toxicity.
	•	🦠 Toxic Secretions – These frogs secrete potent toxins through their skin, deterring most animals from eating them. The toxins are obtained from the insects they consume, primarily ants and termites.
	•	🏞️ Habitat Preferences – Poison dart frogs thrive in the humid understory of the rainforest, where they live in moist environments near streams and puddles.

Fascinating Facts:

🦎 Not Born Toxic – Poison dart frogs are not born with toxins. They acquire them as tadpoles by feeding on toxic insects in their environment.

🦎 Vocal Communicators – These frogs are very vocal and use calls to communicate with others of their kind, especially during mating season.

🦎 Color Variations – Different species of poison dart frogs come in a range of colors and patterns, each serving as a warning signal to predators.

The poison dart frog is a fascinating example of evolution in action, using its toxicity to protect itself while contributing to the complex food web of the tropical rainforest.
''',
      },
    ],
  },
];

class ResearchScreen extends StatelessWidget {
  ResearchScreen({super.key});

  final List<EcosystemModel> ecosystemModels =
      ecosystems.map((e) => EcosystemModel.fromJson(e)).toList();

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
                    'Wildlife Research',
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
                'Explore the behavior of deer and other animals in forests, deserts, and rainforests. Discover their adaptations, migration patterns, hunting and defense strategies, and interactions with other species through articles, facts, and rare observations.',
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
                label: 'Explore',
                color: const Color(0xFFFee006).withOpacity(0.32),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (_) => ExploreEcosystemsScreen(
                            ecosystems: ecosystemModels,
                          ),
                    ),
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
              child: Image.asset('assets/images/menu_icons/3_on.png'),
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
