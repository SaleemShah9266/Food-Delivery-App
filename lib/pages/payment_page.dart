import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:fooddeliveryapp/components/My_buttons.dart';
import 'package:fooddeliveryapp/pages/delivery_page.progress.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formkey = GlobalKey();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  // // user want to pay
  void userTappedPay() {
    if (formkey.currentState!.validate()) {}

    // only show dialogue if form is valid
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Confirm Payment"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text("Card Number:$cardNumber "),
              Text("Expiry Date:$expiryDate "),
              Text("Card Holder name:$cardHolderName "),
              Text("CVV:$cvvCode "),
            ],
          ),
        ),
        actions: [
          // cancle button
          TextButton(
              onPressed: () => Navigator.pop(context), child: Text("Cancle")),

          // Yes button
          TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliveryProgressPage(),
                  ),
                );
              },
              child: Text("Yes"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Checkout"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cridit Card
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: ((p0) {}),
            ),
            CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: ((date) {
                  setState(() {
                    cardNumber = date.cardNumber;
                    expiryDate = date.expiryDate;
                    cardHolderName = date.cardHolderName;
                    cvvCode = date.cvvCode;
                  });
                }),
                formKey: formkey),
            SizedBox(
              height: 160,
            ),

            MyButton(
              text: "Pay now",
              onTap: userTappedPay,
            ),

            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
