import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSliderWidget extends StatefulWidget {
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
  final List<TextInputFormatter>? inputFormatters;

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
    this.inputFormatters,
  });

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  bool _hasError = false;
  void _setError(bool hasError) {
    setState(() {
      _hasError = hasError;
    });
  }

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
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: 120,
                height: 50,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: _hasError ? Colors.red[50] : Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    if (widget.prefix != null)
                      Text(
                        widget.prefix!,
                        style: TextStyle(
                          color: _hasError ? Colors.red[700] : Colors.teal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    Expanded(
                      child: TextFormField(
                        controller: widget.controller,
                        inputFormatters: widget.inputFormatters,
                        textInputAction: TextInputAction.done,
                        validator: widget.validator,
                        keyboardType: TextInputType.number,
                        onChanged: (e) {
                          if (widget.validator == null) {
                            _setError(false);
                            widget.onTextChanged(e);
                          } else if (widget.validator != null &&
                              widget.validator!(e) != null &&
                              e.isNotEmpty) {
                            // If the input is invalid, we do not call onTextChanged
                            // to prevent the slider from updating with invalid input.
                            // Instead, we can show an error message or handle it accordingly.
                            _setError(true);
                            // Show a snackbar or any other error handling mechanism
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                margin: EdgeInsets.all(16),
                                behavior: SnackBarBehavior.floating,
                                duration: Duration(seconds: 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                dismissDirection: DismissDirection.horizontal,
                                content: Text(widget.validator!(e)!),
                                backgroundColor: Colors.red,
                              ),
                            );
                            return;
                          } else {
                            _setError(false);
                            widget.onTextChanged(e);
                          }
                        },
                        style: TextStyle(
                          color: _hasError ? Colors.red[700] : Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                        ),
                        errorBuilder: (context, errorText) =>
                            SizedBox.shrink(), // Hide error text if validator is provided
                        textAlign: TextAlign.center,
                      ),
                    ),
                    if (widget.suffix != null)
                      Text(
                        widget.suffix!,
                        style: TextStyle(
                          color: _hasError ? Colors.red[700] : Colors.teal,
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
              value: widget.value,
              min: widget.min,
              max: widget.max,
              divisions: widget.divisions,
              onChanged: (e) {
                _setError(false);
                widget.onSliderChanged(e);
              },
            ),
          ),
        ],
      ),
    );
  }
}
