class AnimalModel {
  final String name;
  final String image;
  final String description;

  AnimalModel({
    required this.name,
    required this.image,
    required this.description,
  });

  factory AnimalModel.fromJson(Map<String, dynamic> json) {
    return AnimalModel(
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
    );
  }
}

class EcosystemModel {
  final String name;
  final String shortDescription;
  final String image;
  final String longDescription;
  final List<AnimalModel> animals;

  EcosystemModel({
    required this.name,
    required this.shortDescription,
    required this.longDescription,
    required this.image,
    required this.animals,
  });

  factory EcosystemModel.fromJson(Map<String, dynamic> json) {
    return EcosystemModel(
      name: json['name'] as String,
      shortDescription: json['shortDescription'] as String,
      longDescription: json['longDescription'] as String,
      image: json['image'] as String,
      animals: (json['animals'] as List)
          .map((animal) => AnimalModel.fromJson(animal))
          .toList(),
    );
  }
}
