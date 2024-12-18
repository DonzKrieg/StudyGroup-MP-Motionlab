import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartwatch/controller/cart_controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());

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
              Container(
                margin: EdgeInsets.only(top: 15),
                width: MediaQuery.of(context).size.width * 0.94,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.28,
                            maxHeight: MediaQuery.of(context).size.width * 0.28,
                          ),
                          child: Image.asset(
                            'assets/images/miband.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 17),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Mi Band 8 Pro - Brand New',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                r'$54.00',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF00623B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 40),
                          child: Card(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: cartController.quantityDecrement,
                                  icon: Icon(Icons.remove),
                                  color: Color(0xFF00623B),
                                ),
                                Text("${cartController.quantity.value}"),
                                IconButton(
                                  onPressed: cartController.quantityIncrement,
                                  icon: Icon(Icons.add),
                                  color: Color(0xFF00623B),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: MediaQuery.of(context).size.width * 0.94,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.28,
                            maxHeight: MediaQuery.of(context).size.width * 0.28,
                          ),
                          child: Image.asset(
                            'assets/images/baju.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 17),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Lycra Men’s shirt',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                r'$12.00',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF00623B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 40),
                          child: Card(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: cartController.quantityDecrement1,
                                  icon: Icon(Icons.remove),
                                  color: Color(0xFF00623B),
                                ),
                                Text("${cartController.quantity1.value}"),
                                IconButton(
                                  onPressed: cartController.quantityIncrement1,
                                  icon: Icon(Icons.add),
                                  color: Color(0xFF00623B),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
