import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String imageURL;
  final bool show;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.imageURL,
    required this.show,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFF344E41)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            imageURL,
            height: 26,
            width: 26,
          ),
          SizedBox(
            width: 18,
          ),
          Expanded(
            child: TextFormField(
              obscureText: show,
              decoration: InputDecoration.collapsed(
                hintText: hintText,
                hintStyle: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Color(0xFF344E41),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
