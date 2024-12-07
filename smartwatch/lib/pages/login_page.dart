import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:smartwatch/widgets/button.dart';
import 'package:smartwatch/widgets/custom_textfield_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset('assets/animation/shopping.json'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Welcome!',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              'Happy Shopping All',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF707070),
                ),
              ),
            ),
            SizedBox(
              height: 18,
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
              height: 42,
            ),
            Button(
              textButton: 'Login',
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
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
                Text(
                  'Register',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      color: Color(0xFF00623B),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
