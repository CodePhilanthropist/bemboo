import 'package:bemboo/src/common_widgets/banner_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widgets/search_bar.dart';
import "../../common_widgets/category_button.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                GestureDetector(
                  child: BannerItem(),
                  onTap: () => Navigator.pushNamed(context, '/product_details'),
                ),
                const SizedBox(height: 36),
                const SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          color: Color(0xFF252836),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.30,
                        ),
                      ),
                      Text(
                        'See All',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF082431),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryButton(
                          categoryTitle: "Computer",
                          categoryIcon: "assets/svg/computer.svg",
                        ),
                        SizedBox(width: 20),
                        CategoryButton(
                          categoryTitle: "Phone",
                          categoryIcon: "assets/svg/phone2.svg",
                        ),
                        SizedBox(width: 20),
                        CategoryButton(
                          categoryTitle: "Headset",
                          categoryIcon: "assets/svg/headset2.svg",
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Text(
                          'Popular',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF252836),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.30,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Opacity(
                          opacity: 0.50,
                          child: Text(
                            'Discount',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF082431),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Opacity(
                          opacity: 0.50,
                          child: Text(
                            'Exclusive',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF082431),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 148,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF3F3F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/laptop.png"),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Container(
                          height: 148,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF3F3F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/phone.png"),
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
        ),
        bottomNavigationBar: Container(
          height: 85,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(38, 142, 142, 142),
                blurRadius: 40,
                offset: Offset(16, -40),
              ),
            ],
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/svg/nav/Home.svg"),
              SvgPicture.asset("assets/svg/nav/Cart.svg"),
              SvgPicture.asset("assets/svg/nav/Heart.svg"),
              SvgPicture.asset("assets/svg/nav/Profile.svg"),
            ],
          ),
        ),
      ),
    );
  }
}

// BottomNavigationBar(
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//           ],
//         ),