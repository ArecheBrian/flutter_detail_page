// lib/pages/food_detail_page.dart

import 'package:flutter/material.dart';
import 'package:tu_proyecto/model/food.dart';

class FoodDetailPage extends StatelessWidget {
  final Food food;

  FoodDetailPage({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de ${food.name}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: ${food.name}',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text('Descripción: ${food.description}'),
          ],
        ),
      ),
    );
  }
}
