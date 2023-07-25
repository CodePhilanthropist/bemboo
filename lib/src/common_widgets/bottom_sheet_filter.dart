import 'package:bemboo/src/common_widgets/category_slider.dart';
import 'package:flutter/material.dart';

class BottomSheetFilter {
  static showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 439,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Filters',
                    style: TextStyle(
                      color: Color(0xFF082431),
                      fontSize: 20,
                      fontFamily: 'Satoshi Variable',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.30,
                    ),
                  ),
                  Opacity(
                    opacity: 0.50,
                    child: Text(
                      'Reset',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF082431),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Categories',
                style: TextStyle(
                  color: Color(0xFF252836),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.30,
                ),
              ),
              const SizedBox(height: 24),
              const CategorySlider(),
              const SizedBox(height: 24),
              const Text(
                'Choose Colour',
                style: TextStyle(
                  color: Color(0xFF252836),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.30,
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 388,
                height: 48,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF3F3F8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF082431),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFF8700),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFB548C6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF22B07D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF32A7E2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 24),
              const Text(
                'Price',
                style: TextStyle(
                  color: Color(0xFF252836),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.30,
                ),
              ),
              const PriceRangeSlider(),
            ],
          ),
        );
      },
    );
  }
}

class PriceRangeSlider extends StatefulWidget {
  const PriceRangeSlider({super.key});

  @override
  State<PriceRangeSlider> createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<PriceRangeSlider> {
  RangeValues currentRangeValues = const RangeValues(50, 200);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315,
      height: 38,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 4,
              thumbShape: CustomSliderThumbShape(),
              thumbColor: const Color(0xFF22B07D),
              activeTrackColor: const Color(0xFF22B07D),
            ),
            child: RangeSlider(
              values: currentRangeValues,
              min: 0,
              max: 250,
              onChanged: (RangeValues values) {
                setState(() {
                  currentRangeValues = values;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.50,
                child: Text(
                  '\$${currentRangeValues.start.toInt()}',
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xFF082431),
                    fontSize: 9,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
              Opacity(
                opacity: 0.50,
                child: Text(
                  '\$${currentRangeValues.end.toInt()}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF082431),
                    fontSize: 9,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomSliderThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(8); // Customize the radius of the circle adjusters
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool? isDiscrete,
    bool? isEnabled,
    required TextPainter? labelPainter,
    required RenderBox? parentBox,
    required SliderThemeData? sliderTheme,
    required TextDirection? textDirection,
    required double? value,
    required double? textScaleFactor,
    required Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;
    final Paint thumbPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        center, getPreferredSize(isEnabled!, isDiscrete!).width, thumbPaint);

    // Add custom border for the circle adjuster
    final Paint borderPaint = Paint()
      ..color = Color(0xFF22B07D)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
        center, getPreferredSize(isEnabled, isDiscrete).width - 2, borderPaint);
  }
}
