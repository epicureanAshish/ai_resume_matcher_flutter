import 'package:flutter/material.dart';

class FilterChipWidget extends StatelessWidget {
  final String label;

  const FilterChipWidget({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.white,
      ),
    );
  }
}