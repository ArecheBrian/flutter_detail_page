// lib/bloc/food_cubit.dart

class FoodCubit extends Cubit<List<Food>> {
  final FoodRepository repository = FoodRepository();

  FoodCubit() : super([]);

  void fetchFoods() async {
    try {
      List<Food> foods = await repository.fetchFoods();
      emit(foods);
    } catch (e) {
      // Manejo de errores
    }
  }
}
