import "package:bemboo/src/common_widgets/category_button.dart";
import "package:flutter/material.dart";

class CategorySlider extends StatelessWidget {
  const CategorySlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
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
    );
  }
}
