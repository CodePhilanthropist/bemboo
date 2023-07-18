import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Expanded(
          flex: 2,
          child: SizedBox(
            child: Stack(
              children: [
                Positioned(
                  child: Image(
                    image: AssetImage("assets/images/person.png"),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 320,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF230B34),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 214,
                child: Text(
                  'Let’s Enjoy with Best Product',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'Satoshi Variable',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const SizedBox(
                width: 237,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do euismod tempor incididunt ut.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Satoshi Light',
                      fontWeight: FontWeight.w400,
                      // height: 21,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 292,
                height: 49,
                decoration: ShapeDecoration(
                  color: const Color(0xFF22B07D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Text(
                  'Let’s Go',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 2.4,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
