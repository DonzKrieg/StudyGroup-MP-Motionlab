import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatelessWidget {
  final String imageURL;
  final String title;
  final String price;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int quantity;

  const CartItem({
    super.key,
    required this.imageURL,
    required this.title,
    required this.price,
    required this.onIncrement,
    required this.onDecrement,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  imageURL,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 17),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      price,
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
                        onPressed: onDecrement,
                        icon: Icon(Icons.remove),
                        color: Color(0xFF00623B),
                      ),
                      Text("$quantity"),
                      IconButton(
                        onPressed: onIncrement,
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
    );
  }
}
