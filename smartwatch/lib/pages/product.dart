import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smartwatch/controller/cart_controller.dart';
import 'package:smartwatch/models/product_model.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text('Product'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: product.isFavorite ? Colors.red : Colors.grey,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                product.image,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              product.name,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 12),
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: const Color.fromARGB(255, 0, 154, 92),
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              product.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          final cartController = Get.find<CartController>();
          cartController.incrementQuantity(product.id);
          Navigator.pushNamed(context, '/cart');
        },
        child: Padding(
          padding: const EdgeInsets.all(23),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff00623B),
            ),
            child: const Center(
              child: Text(
                'Add To Cart',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
