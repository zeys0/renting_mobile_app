import 'package:flutter/material.dart';

class PriceOptionsSection extends StatefulWidget {
  const PriceOptionsSection({super.key});

  @override
  State<PriceOptionsSection> createState() => _PriceOptionsSectionState();
}

class _PriceOptionsSectionState extends State<PriceOptionsSection> {
  String _selectedOption = 'Daily'; // Default option selected

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row for horizontal price options
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPriceOption('Hourly', '\$5.00', '/ hour'),
              _buildPriceOption('Daily', '\$15.00', '/ day'),
              _buildPriceOption('Monthly', '\$40.00', '/ mth'),
            ],
          ),
          const SizedBox(
              height: 10.0), // Spacing between price options and "Set Dates"
        ],
      ),
    );
  }

  Widget _buildPriceOption(String label, String value, String duration) {
    final bool isSelected = _selectedOption == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedOption = label; // Update the selected option
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        margin: const EdgeInsets.only(
            right: 5.0), // Increased spacing between options
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12.0),
        ),
        // Set a fixed width and height for the containers
        width: 100, // Fixed width
        height: 110, // Fixed height
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // The price label (Hourly, Daily, Monthly)
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            // The price value (\$5.00, \$15.00, etc.)
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            // The duration part (/hour, /day, /mth)
            Text(
              duration,
              style: TextStyle(
                fontSize: 15,
                color: isSelected ? Colors.white70 : Colors.black38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
