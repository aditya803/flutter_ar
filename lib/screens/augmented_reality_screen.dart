import 'package:flutter/material.dart';
import 'package:flutter_ar/model/product.dart';

class ProductWithAugmentedRealityScreen extends StatefulWidget {
  const ProductWithAugmentedRealityScreen({
    super.key,
    required this.product
  });
  final Product product;
  @override
  State<ProductWithAugmentedRealityScreen> createState() => _ProductWithAugmentedRealityScreenState();
}

class _ProductWithAugmentedRealityScreenState extends State<ProductWithAugmentedRealityScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
