import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String textButton;
  const Button({
    super.key,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF00623B),
        border: Border.all(color: Color(0xFF344E41)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          textButton,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
