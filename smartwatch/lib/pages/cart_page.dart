import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smartwatch/controller/cart_controller.dart';
import 'package:smartwatch/widgets/cart_item.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
  CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 37),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Icon(
                Icons.chevron_left,
              ),
            ),
          ),
          title: Center(
            child: Text(
              'My Cart',
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              CartItem(
                imageURL: 'assets/images/miband.png',
                title: 'Mi Band 8 Pro - Brand New',
                price: r'$54.00',
                quantity: cartController.quantity.value,
                onIncrement: cartController.quantityIncrement,
                onDecrement: cartController.quantityDecrement,
              ),
              CartItem(
                imageURL: 'assets/images/baju.png',
                title: 'Lycra Men’s shirt',
                price: r'$12.00',
                quantity: cartController.quantity1.value,
                onIncrement: cartController.quantityIncrement1,
                onDecrement: cartController.quantityDecrement1,
              ),
            ],
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/invoice');
          },
          child: Padding(
            padding: EdgeInsets.all(23),
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff00623B),
              ),
              child: Center(
                child: Text(
                  'Buy Now',
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
      ),
    );
  }
}
