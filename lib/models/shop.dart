import 'package:flutter/material.dart';
import 'package:flutter_sushi_app/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: 'Salmon Sushi',
      price: '78.000',
      imagePath: 'lib/images/salmon_sushi.png',
      rating: '4.9',
    ),
    Food(
      name: 'Tuna',
      price: '69.000',
      imagePath: 'lib/images/tuna.png',
      rating: '4.8',
    ),
  ];

  List<Food> _cart = [];

  //method
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food food, int qty) {
    for (var i = 0; i < qty; i++) {
      _cart.add(food);
    }
    notifyListeners();
  }

  void removeCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
