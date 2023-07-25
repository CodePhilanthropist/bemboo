import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F3F8),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
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
                                    icon: SvgPicture.asset(
                                        "assets/svg/arrow_back.svg"),
                                  ),
                                ),
                              ),
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
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                        "assets/svg/cart_icon.svg"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Text(
                            'Wireless Noise Cancelling Headset',
                            style: TextStyle(
                              color: Color(0xFF252836),
                              fontSize: 28,
                              fontFamily: 'Satoshi Variable',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                        Container(
                          width: 227,
                          height: 235,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/wireless_headset.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(30),
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF3F3F8),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: const Color(0xFFB548C6),
                                ),
                                child: Image.asset("assets/images/viewbox.png"),
                              ),
                              const Text(
                                'AR Checkout',
                                style: TextStyle(
                                  color: Color(0xFF252836),
                                  fontSize: 20,
                                  fontFamily: 'Satoshi Variable',
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.30,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/svg/star.svg"),
                              const SizedBox(width: 4),
                              SvgPicture.asset("assets/svg/star.svg"),
                              const SizedBox(width: 4),
                              SvgPicture.asset("assets/svg/star.svg"),
                              const SizedBox(width: 4),
                              SvgPicture.asset("assets/svg/star.svg"),
                              const SizedBox(width: 4),
                              SvgPicture.asset("assets/svg/star2.svg"),
                              const SizedBox(width: 4),
                              const Opacity(
                                opacity: 0.50,
                                child: Text(
                                  '(4.0/5.0)',
                                  style: TextStyle(
                                    color: Color(0xFF273240),
                                    fontSize: 12,
                                    fontFamily: 'Satoshi Variable',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  width: 321,
                  child: const Text(
                    'Balance Sound SIgnature\nIdeal for the Worksplace\nWireless Range of 10m\nVolume control\nIdeal for commuting',
                    style: TextStyle(
                      color: Color(0xFF273240),
                      fontSize: 14,
                      fontFamily: 'Satoshi Light',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 85,
          decoration: const BoxDecoration(
            color: Color(0xFF230B34),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Price:',
                    style: TextStyle(
                      color: Color(0xFF22B07D),
                      fontSize: 12,
                      fontFamily: 'Satoshi Variable',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.30,
                    ),
                  ),
                  Text(
                    '\$219.7',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Satoshi Variable',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.30,
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button press here
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  backgroundColor: const Color(0xFF22B07D),
                ),
                child: Row(
                  children: [
                    const Text(
                      'Add to cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Satoshi Light',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.30,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      width: 24,
                      height: 24,
                      child:
                          SvgPicture.asset("assets/svg/add_shopping_cart.svg"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
