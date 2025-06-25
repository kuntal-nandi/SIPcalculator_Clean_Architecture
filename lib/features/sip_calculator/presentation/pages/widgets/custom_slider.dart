import 'package:flutter/material.dart';

class CustomSliderWidget extends StatelessWidget {
  final String title;
  final double value;
  final double min;
  final double max;
  final int divisions;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final Function(double) onSliderChanged;
  final Function(String) onTextChanged;
  final String? prefix;
  final String? suffix;

  const CustomSliderWidget({
    super.key,
    required this.title,
    required this.value,
    required this.min,
    required this.max,
    required this.divisions,
    required this.controller,
    required this.onSliderChanged,
    required this.onTextChanged,
    this.prefix,
    this.suffix,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 120,
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    if (prefix != null)
                      Text(
                        prefix!,
                        style: const TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    Expanded(
                      child: TextFormField(
                        controller: controller,
                        validator: validator,
                        keyboardType: TextInputType.number,
                        onChanged: onTextChanged,
                        style: const TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    if (suffix != null)
                      Text(
                        suffix!,
                        style: const TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.teal,
              inactiveTrackColor: Colors.grey[300],
              thumbColor: Colors.teal,
              overlayColor: Colors.teal.withAlpha(32),
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
            ),
            child: Slider(
              value: value,
              min: min,
              max: max,
              divisions: divisions,
              onChanged: onSliderChanged,
            ),
          ),
        ],
      ),
    );
  }
}
