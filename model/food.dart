// lib/model/food.dart

class Food {
  final String name;
  final String description;

  Food({required this.name, required this.description});

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      name: json['name'],
      description: json['description'],
    );
  }
}
