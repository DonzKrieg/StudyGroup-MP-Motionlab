import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 23,
          ),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 31,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Icon(
                          Icons.chevron_left,
                          size: 33,
                        ),
                      ),
                      Text(
                        'Product Detail',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        size: 33,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Image.asset(
                    'assets/images/miband.png',
                    width: double.infinity,
                    height: 401,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mi Band 8 Pro',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    r'$54.00',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff00623B),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff6D6D6D),
                    ),
                  ),
                  SizedBox(
                    height: 81,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(23),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff00623B),
          ),
          child: Center(
            child: Text(
              'Add To Bag',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
