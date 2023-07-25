import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class CategoryButton extends StatelessWidget {
  final String categoryTitle;
  final String categoryIcon;

  const CategoryButton({
    super.key,
    required this.categoryTitle,
    required this.categoryIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 48,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F3F8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(categoryIcon),
          const SizedBox(width: 8),
          Text(
            categoryTitle,
            style: const TextStyle(
              color: Color(0xFF082431),
              fontSize: 14,
              fontFamily: 'Satoshi Light',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.30,
            ),
          ),
        ],
      ),
    );
  }
}
