import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";

class ProduceScanScreen extends StatelessWidget {
  const ProduceScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F8),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/girl.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                          height: 48,
                          width: 48,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon:
                                  SvgPicture.asset("assets/svg/arrow_back.svg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 500),
                  Stack(
                    children: [
                      Positioned(
                        child: Container(
                          width: 315,
                          height: 128,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF230B34),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/headset.png",
                                width: 151,
                                height: 156,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lorem ipsum',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Satoshi Variable',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 143,
                                    child: Text(
                                      'Noice Cancelling Wireless Headphone',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'Satoshi Variable',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.30,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '\$219.7',
                                    style: TextStyle(
                                      color: Color(0xFF22B07D),
                                      fontSize: 12,
                                      fontFamily: 'Satoshi Variable',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
