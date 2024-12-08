import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartwatch/widgets/button.dart';
import 'package:smartwatch/widgets/custom_textfield_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Register',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Create your account for Happy Shopping',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF707070),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 54,
                  ),
                  CustomTextFormField(
                    hintText: 'Full Name',
                    imageURL: 'assets/images/profile.png',
                    show: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const CustomTextFormField(
                    hintText: 'Email',
                    imageURL: 'assets/images/circum_user.png',
                    show: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const CustomTextFormField(
                    hintText: 'Password',
                    imageURL: 'assets/images/lock.png',
                    show: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const CustomTextFormField(
                    hintText: 'Confirm Password',
                    imageURL: 'assets/images/lock.png',
                    show: true,
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Button(
                      textButton: 'Register',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              color: Color(0xFF00623B),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
