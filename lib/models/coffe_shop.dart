import 'package:flutter/material.dart';
import 'coffe.dart';

class CoffeShop extends ChangeNotifier {
  //list of coffee to sale
  final List<Coffe> _shop_coffe_list = [
    Coffe(name: 'black coffe', price: "50", imagePath: "lib/images/coffe1.png"),
    Coffe(
        name: 'Orginal coffe', price: "40", imagePath: "lib/images/coffe2.png"),
    Coffe(name: 'Milk coffe', price: "60", imagePath: "lib/images/coffe3.png"),
    Coffe(name: 'Coffe gold', price: "80", imagePath: "lib/images/coffe4.png"),
  ];

  //user cart
  List<Coffe> _userCart = [];

  // get coffee list
  List<Coffe> get coffeShop => _shop_coffe_list;

  // get user cart
  List<Coffe> get userCart => _userCart;

  //add item to cart
  void additemToCart(Coffe coffe) {
    _userCart.add(coffe);
    notifyListeners();
  }

  //remove coffe from user cart
  void removeFromCart(Coffe coffe) {
    _userCart.remove(coffe);
  }
}
