import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common_widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/svg/category_icon.svg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/svg/cart_icon.svg"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const SizedBox(
                child: Text(
                  "Let’s find\nYour Gadgets!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF252836),
                    fontSize: 28,
                    fontFamily: 'Satoshi Variable',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 400,
                child: Row(
                  children: [
                    TextFieldExample(),
                    const SizedBox(width: 16),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF8700),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/svg/settings.svg"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 36),
              Container(
                padding: const EdgeInsets.all(20),
                height: 140,
                width: MediaQuery.sizeOf(context).width,
                decoration: ShapeDecoration(
                  color: const Color(0xFF22B07D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      child: Text(
                        'Best Selling\nDevice',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Satoshi Variable',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 70,
                      child: Text(
                        'Noice Cancelling\nWireless Headphone',
                        style: TextStyle(
                          color: Color(0xFFF3F3F8),
                          fontSize: 12,
                          fontFamily: 'Satoshi Light',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -40,
                      right: 4,
                      child: SizedBox(
                        width: 151,
                        height: 156,
                        child: Image.asset(
                          "assets/images/headset.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
