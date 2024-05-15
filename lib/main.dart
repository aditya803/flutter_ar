import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/product.dart';
import 'screens/augmented_reality_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        '/products': (context) =>  ProductWithAugmentedRealityScreen(
          product: ModalRoute.of(context)!.settings.arguments as Product,
        ),
      },
    );
  }
}

