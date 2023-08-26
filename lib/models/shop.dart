import 'package:flutter/material.dart';

import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    //classic
    Food(
      name: "Classic",
      price: "130.00",
      imagePath: "lib/images/classic.png",
      rating: "4.5",
      descriptionFood:
          "Indulge in the buttery richness of fresh, melt-in-your-mouth salmon that sits elegantly atop a perfectly formed bed of vinegared sushi rice. Each bite is a journey through the pristine waters, where the salmon's natural flavors shine through, accompanied by the gentle notes of our house-made soy-based dipping sauce.",
    ),
    //beef
    Food(
      name: "Sushi With Beef",
      price: "150.00",
      imagePath: "lib/images/sushi with beef.png",
      rating: "4.3",
      descriptionFood:
          "Tantalize your taste buds with our innovative creation - the Citrus-Kissed Salmon Roll. Inside, a symphony of textures awaits as velvety salmon is joined by crisp cucumber, creamy avocado, and a hint of tangy yuzu zest. Encased in a delicate wrapping of nori and seasoned rice, this roll offers a refreshing balance that delights with every bite.",
    ),
    //egg
    Food(
      name: "Sushi With Salmon's eggs",
      price: "155.00",
      imagePath: "lib/images/sushi with egg.png",
      rating: "4.8",
      descriptionFood:
          "Prepare for an explosion of taste with our Volcano Blaze Maki. Succulent slices of seared salmon are rolled alongside a fiery blend of spicy mayo and sriracha-infused tobiko, offering a fusion of flavors that's both bold and beautifully complex. The crunch of tempura flakes adds a satisfying contrast to the ensemble, making this roll a true spectacle for the senses.",
    ),
    //salmon
    Food(
      name: "Sushi With Salmon",
      price: "145.00",
      imagePath: "lib/images/sushi with salmon.png",
      rating: "4.7",
      descriptionFood:
          "Embark on a journey of sustainability and supreme freshness with our Sustainable Salmon Sashimi. Sourced responsibly, this dish showcases the silky texture and vibrant hue of top-grade salmon. Presented artistically and accompanied by wasabi and pickled ginger, it's a celebration of simplicity that pays homage to the pure essence of the ocean.",
    ),
  ];

//customer cart
  List<Food> _cart = [];

  //getter method
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  //remove cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
