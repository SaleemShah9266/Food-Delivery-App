

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/Auth/login_or_register.dart';
import 'package:fooddeliveryapp/models/restaurant.dart';

import 'package:fooddeliveryapp/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        // resturant provoder
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginorRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
