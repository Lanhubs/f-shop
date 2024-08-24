
import 'package:flutter/material.dart';
import 'clothe.dart';

class Cart extends ChangeNotifier {
  // products
  List<Clothe> clotheShop = [
    Clothe(
        price: "9000.00",
        name: "Hoodie",
        description: "Best so far",
        image: "lib/images/hoodie.jpg"),
    Clothe(
        price: "20000.00",
        name: "Hoodie acid",
        description: "Best so far",
        image: "lib/images/hoodie_2.jpg"),
    Clothe(
        price: "10000.00",
        name: "Hoodie ",
        description: "Best so far",
        image: "lib/images/hoodie_3.jpg"),
  ];
  // user cart
  List<Clothe> userCart = [];
// get clothes
  List<Clothe> getClothes() {
    return clotheShop;
  }

  // get cart items
  List<Clothe> getCart() {
    return userCart;
  }

  void addToCart(Clothe clothe) {
    userCart.add(clothe);
  }

  void removeCartItem(Clothe clothe) {
    userCart.remove(clothe);
  }

  void clearCart() {
    userCart.clear();
  }
}
