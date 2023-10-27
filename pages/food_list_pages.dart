// lib/pages/food_list_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tu_proyecto/bloc/food_cubit.dart';
import 'package:tu_proyecto/pages/food_detail_page.dart';
import 'package:tu_proyecto/model/food.dart';

class FoodListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FoodCubit()..fetchFoods(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Alimentos'),
        ),
        body: BlocBuilder<FoodCubit, List<Food>>(
          builder: (context, state) {
            return state.isNotEmpty
                ? ListView.builder(
                    itemCount: state.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state[index].name),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FoodDetailPage(food: state[index]),
                            ),
                          );
                        },
                      );
                    },
                  )
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
