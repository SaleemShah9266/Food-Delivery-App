import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Textstyle
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);

    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Deliver fees
          Column(
            children: [
              Text(
                '\$0.99',
                style: myPrimaryTextStyle,
              ),
              Text(
                'Delivery fee',
                style: mySecondaryTextStyle,
              ),
            ],
          ),
          // delivery
          Column(
            children: [
              Text(
                '10-40 min',
                style: myPrimaryTextStyle,
              ),
              Text(
                'Delivery time',
                style: mySecondaryTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
