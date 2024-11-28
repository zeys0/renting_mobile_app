import 'package:flutter/material.dart';

class DotsIndicator extends StatefulWidget {
  final int dotCount;
  final Function(int) onDotTapped;
  final int selectedIndex;

  const DotsIndicator({
    super.key,
    required this.dotCount,
    required this.onDotTapped,
    required this.selectedIndex,
  });

  @override
  _DotsIndicatorState createState() => _DotsIndicatorState();
}

class _DotsIndicatorState extends State<DotsIndicator> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // This will center the Row containing the dots
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Ensure dots are centered
        children: List.generate(widget.dotCount, (index) {
          return GestureDetector(
            onTap: () {
              widget
                  .onDotTapped(index); // Notify the parent when a dot is tapped
            },
            child: Container(
              width: 12,
              height: 12,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: widget.selectedIndex == index
                    ? Theme.of(context).primaryColor
                    : Colors.grey, // Change color when selected
                shape: BoxShape.circle,
              ),
            ),
          );
        }),
      ),
    );
  }
}
