import 'package:flutter/material.dart';

/// Checkbox with title
class AppCheckbox extends StatelessWidget {
  /// Checkbox value
  final bool value;

  /// Checkbox title
  final String title;
  
  /// Checkbox onChanged callback
  final ValueChanged<bool> onChanged;

  /// Checkbox constructor
  const AppCheckbox({
    required this.value,
    required this.title,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (value) {
            if (value != null) {
              onChanged(value);
            }
          },
        ),
        Text(title),
      ],
    );
  }
}
