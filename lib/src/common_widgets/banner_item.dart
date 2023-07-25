import "package:flutter/material.dart";

class BannerItem extends StatelessWidget {
  final int id;
  final String productTitle;
  final String productSubtitle;
  final String productImage;

  const BannerItem({super.key,
    required this.id,
    required this.productTitle,
    required this.productSubtitle,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
