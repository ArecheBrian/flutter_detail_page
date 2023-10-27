// lib/repository.dart

class FoodRepository {
  Future<List<Food>> fetchFoods() async {
    String jsonString = await rootBundle.loadString('assets/food_data.json');
    List<dynamic> jsonList = json.decode(jsonString);

    return jsonList.map((json) => Food.fromJson(json)).toList();
  }
}
