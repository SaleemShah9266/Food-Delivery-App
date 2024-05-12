//food item

class Food {
  final String name;   //cheese burger
  final String description; // a burger full of cheses
  final String imagepath;  // lib/images/burger
  final double price;         //200
  final FoodCategory category; //burger
  List<Addon> availableAddons;  // extra chees


  Food(
      {required this.name,
      required this.description,
      required this.imagepath,
      required this.price,
      required this.category,
      required this.availableAddons});
}

// Food Categoury

enum FoodCategory {
  burger,
  salades,
  sides,
  desserts,
  drinks,
}

// food addons
class Addon {
  String name;
  double price;
  Addon({required this.name, required this.price});
}
