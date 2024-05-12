import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/components/My_buttons.dart';
import 'package:fooddeliveryapp/components/my_cart_Tile.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';
import 'package:fooddeliveryapp/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCArt = restaurant.cart;
        // Scaffold
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Are you sure to clear the cart"),
                            actions: [
                              // cancle
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("cancle")),
                              // Yes button
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  restaurant.clearCart();
                                },
                                child: Text("Yes"),
                              )
                            ],
                          ));
                },
                icon: Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCArt.isEmpty
                        ? Expanded(
                            child: Center(child: Text("Cart is Empty...")))
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCArt.length,
                              itemBuilder: (context, index) {
                                // get indidual cart item
                                final CartItem = userCArt[index];

                                // return cart tile UI
                                return MyCartTie(cartItem: CartItem);
                              },
                            ),
                          ),
                  ],
                ),

                // my button to pay
              ),

              MyButton(
                  text: "Go to Check out",
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentPage()))),
              SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }
}
