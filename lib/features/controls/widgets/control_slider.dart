import 'package:flutter/material.dart';

class ControlSlider extends StatefulWidget {
  const ControlSlider({
    super.key,
    required this.initialValue,
    required this.maxValue,
    required this.minValue,
    this.onChanged,
  }) : assert(initialValue >= minValue),
       assert(initialValue <= maxValue),
       assert(maxValue > minValue),
       assert(minValue < maxValue);

  final int initialValue;
  final int maxValue;
  final int minValue;
  final ValueChanged<int>? onChanged;

  @override
  State<StatefulWidget> createState() {
    return _ControlSliderState();
  }
}

class _ControlSliderState extends State<ControlSlider> {
  double _value = 0.0;

  @override
  void initState() {
    super.initState();
    int diff = (widget.maxValue - widget.minValue);
    _value = ((widget.initialValue - widget.minValue) / diff) * 100.0;
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value.toDouble(),
      min: 0.0,
      max: 100.0,
      label: "${_value.truncateToDouble()} %",
      onChanged: (double value) {
        setState(() {
          _value = value;
        });

        int diff = widget.maxValue - widget.minValue;
        int newValue = (widget.minValue + (diff * value / 100)).toInt();
        widget.onChanged?.call(newValue);
      },
    );
  }
}
