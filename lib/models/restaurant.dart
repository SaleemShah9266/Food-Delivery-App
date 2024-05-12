import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/cart_items.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu

  final List<Food> _menu = [
    // burger
    Food(
        name: "Classic CheeseBurger",
        description: "A huicy Burger with fantastic taste",
        imagepath: "assets/images/burger/burger1.jpeg",
        price: 0.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),

    Food(
        name: "BBQ Burger",
        description: "A huicy Burger with fantastic taste",
        imagepath: "assets/images/burger/burger1.jpeg",
        price: 0.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),
    Food(
        name: "vegitable Burger",
        description: "A huicy Burger with fantastic taste",
        imagepath: "assets/images/burger/burger3.jpg",
        price: 0.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),
    Food(
        name: "vegan Burger",
        description: "A huicy Burger with fantastic taste",
        imagepath: "assets/images/burger/burger3.jpg",
        price: 0.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),
    // salad
    Food(
        name: "Classic salad",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/salade/salad1.jpeg",
        price: 0.99,
        category: FoodCategory.salades,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),
    Food(
        name: "Classic salad",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/salade/salad2.jpeg",
        price: 0.99,
        category: FoodCategory.salades,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),
    Food(
        name: "Classic salad",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/salade/salad3.jpeg",
        price: 0.99,
        category: FoodCategory.salades,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),

    // sides
    Food(
        name: "Classic sides",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/sides/sides1.jpeg",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),
    Food(
        name: "Classic sides",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/sides/sides2.jpeg",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),
    Food(
        name: "Classic sides",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/sides/sides3.jpeg",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),

    // drinks
    Food(
        name: "Classic sides",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/drinks/drink1.jpeg",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),

    Food(
        name: "Classic sides",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/drinks/drink2.jpeg",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),
    Food(
        name: "Classic sides",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/drinks/drink3.jpeg",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),

    // diserts

    Food(
        name: "Classic desert",
        description: "A huicy desert with fantastic taste",
        imagepath: "assets/images/desert/desert1.jpeg",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),

    Food(
        name: "Classic sides",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/desert/desert2.jpeg",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),

    Food(
        name: "Classic sides",
        description: "A huicy salad with fantastic taste",
        imagepath: "assets/images/desert/desert3.jpeg",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 0.99),
          Addon(name: " Avocada", price: 0.99)
        ]),
  ];
  /*

  GETTERS
 */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
OPERATIONS
*/

//  user cart
  final List<CartItem> _cart = [];

// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is cart iteam already with the sam e food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food item are same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameAddons && isSameAddons;

      // check if the list of selected addons are the same
    });

    // if item already exist , increase it's quantity
    if (cartItem != null) {
      cartItem.quality++;
    }
    // othwise add a new item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

// remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quality > 1) {
        _cart[cartIndex].quality--;
      } else {
        _cart.remove(cartIndex);
      }
    }
    notifyListeners();
  }

// get total price of cart

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quality;
    }
    return total;
  }

// get total number of items in cart
  int getTotalItemCount() {
    int totalIteamCount = 0;
    for (CartItem cartItem in _cart) {
      totalIteamCount += cartItem.quality;
    }
    return totalIteamCount;
  }

// clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

// HELPERS
//  generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your Receipt");
    receipt.writeln();

    // format the date to include up to second only
// Format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln("------------");

    for (final cartItem in _cart) {
      // Fixed the for loop
      receipt.writeln(
          "${cartItem.quality}x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln("----------");
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items : ${getTotalItemCount()}");
    receipt.writeln("Total Price : ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

// format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

// format addons into a string summery
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) =>
            "${addon.name} (${_formatPrice(addon.price)})") // Corrected function call to _formatPrice
        .join(", "); // Use comma and space to separate addon details
  }
}
