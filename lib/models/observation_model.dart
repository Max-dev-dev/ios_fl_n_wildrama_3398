class Observation {
  final String animalName;
  final String note;
  final String photoPath;

  Observation({
    required this.animalName,
    required this.note,
    required this.photoPath,
  });

  Map<String, dynamic> toJson() => {
        'animalName': animalName,
        'note': note,
        'photoPath': photoPath,
      };

  factory Observation.fromJson(Map<String, dynamic> json) => Observation(
        animalName: json['animalName'],
        note: json['note'],
        photoPath: json['photoPath'],
      );
}
