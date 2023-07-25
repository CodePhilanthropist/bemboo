import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Positioned(
                      top: 50,
                      bottom: 180,
                      left: 50,
                      right: 60,
                      child: Container(
                        width: 273,
                        height: 273,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF22B07D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(96),
                          ),
                        ),
                      )),
                  Positioned(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/person.png"),
                            fit: BoxFit.cover),
                      ),
                      child: const Stack(
                        children: [],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 41,
                    top: 67,
                    child: SvgPicture.asset("assets/svg/phone.svg"),
                  ),
                  Positioned(
                    left: 320,
                    top: 277,
                    child: SvgPicture.asset("assets/svg/laptop.svg"),
                  ),
                  Positioned(
                    left: 71,
                    top: 376,
                    child: SvgPicture.asset("assets/svg/headphone.svg"),
                  ),
                ],
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
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/home'),
                    child: Container(
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
                            fontWeight: FontWeight.w300,
                            height: 3,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                    ),
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
