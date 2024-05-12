import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/components/my_quantity_selector.dart';

import 'package:fooddeliveryapp/models/restaurant.dart';
import 'package:provider/provider.dart';
import '../models/cart_items.dart';

class MyCartTie extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTie({Key? key, required this.cartItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Accessing the instance of Restaurant using Provider
    Restaurant restaurant = Provider.of<Restaurant>(context, listen: false);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food images
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    cartItem.food.imagepath,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                // name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food name
                    Text(cartItem.food.name),
                    // food price
                    Text(
                      cartItem.food.price.toString(),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                Spacer(),

                // increment or decrement quantity
                QuantitySelector(
                  quantity: cartItem.quality,
                  food: cartItem.food,
                  onDecrement: () {
                    restaurant.removeFromCart(
                        cartItem); // Call instance method on restaurant instance
                  },
                  onIncrement: () {
                    restaurant.addToCart(
                        cartItem.food,
                        cartItem
                            .selectedAddons); // Call instance method on restaurant instance
                  },
                )
              ],
            ),
          ),
          // Addons
          SizedBox(
            height: cartItem.selectedAddons.isEmpty ? 0 : 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10, bottom: 10, right: 10),
              children: [
                // Use forEach to iterate over the addons list
                ...cartItem.selectedAddons
                    .map((addon) => Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: FilterChip(
                            label: Row(
                              children: [
                                //  addon name
                                Text(addon.name),
                                // addon price
                                Text('\$${addon.price}'),
                              ],
                            ),
                            shape: StadiumBorder(
                              side: BorderSide(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            onSelected: (value) {},
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontSize: 12),
                          ),
                        ))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
