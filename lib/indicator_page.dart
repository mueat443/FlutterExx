
import 'package:flutter/material.dart';
import 'base_color.dart';

Widget buildIndicatorPage({required int itemCount, required int currentIndex}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 33.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        itemCount,
        (index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Container(
                height: 6,
                width: 45,
                decoration: BoxDecoration(
                  color: currentIndex - 1 >= index ? BaseColors.allPrimaryPrimary50 : BaseColors.tempDivider,
                  borderRadius: BorderRadius.horizontal(
                    left: index == 0 ? const Radius.circular(20) : Radius.zero,
                    right: index == itemCount - 1 ? const Radius.circular(20) : Radius.zero,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ),
  );
}

class DotsIndicator extends AnimatedWidget {
  const DotsIndicator({
    super.key,
    required this.controller,
    required this.itemCount,
    required this.onPageSelected,
    required this.currentIndex,
  }) : super(listenable: controller);

  final PageController controller;
  final int currentIndex;
  final int itemCount;

  final ValueChanged<int> onPageSelected;

  static const double _kDotSize = 10.0;

  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    return SizedBox(
      width: _kDotSpacing,
      child: Center(
        child: Material(
          type: index == currentIndex - 1 ? MaterialType.canvas : MaterialType.circle,
          color: index == currentIndex - 1 ? BaseColors.allPrimaryPrimary50 : BaseColors.tempDivider,
          borderRadius: index == currentIndex - 1 ? BorderRadius.circular(10) : null,
          child: SizedBox(
            width: index == currentIndex - 1 ? 20 : _kDotSize,
            height: _kDotSize,
            child: InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, _buildDot),
    );
  }
}
