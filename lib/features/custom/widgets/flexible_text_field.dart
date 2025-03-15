import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../foundation/i18n/translations.g.dart';

class FlexibleTextField extends StatefulWidget {
  const FlexibleTextField({
    super.key,
    required this.label,
    required this.onChanged,
    required this.controller,
    this.validate = true,
    this.minValue,
    this.maxValue,
    this.errorText,
    this.autofocus = false,
    this.action = TextInputAction.next,
  });

  final String label;
  final ValueChanged<int> onChanged;
  final TextEditingController controller;
  final String? errorText;
  final int? minValue;
  final int? maxValue;
  final bool validate;
  final bool autofocus;
  final TextInputAction action;

  @override
  State createState() {
    return _FlexibleTextFieldState();
  }
}

class _FlexibleTextFieldState extends State<FlexibleTextField> {
  String? _errorText;

  int? validateValue(String value) {
    final maxValue = widget.maxValue;
    final minValue = widget.minValue;
    final intValue = int.tryParse(value);
    int? result;

    if (intValue == null || value.isEmpty) {
      setState(() {
        _errorText = t.empty;
      });
      result = 0;
    } else if (minValue != null && intValue < minValue) {
      setState(() {
        _errorText = t.value_limit_min.replaceAll(
          '%d',
          widget.minValue.toString(),
        );
      });
      result = intValue;
    } else if (maxValue != null && intValue > maxValue) {
      setState(() {
        _errorText = t.value_limit_max.replaceAll(
          '%d',
          widget.maxValue.toString(),
        );
      });
      result = intValue;
    } else {
      result = intValue;
    }

    return result;
  }

  @override
  void dispose() {
    super.dispose();
    _errorText = null;
  }

  @override
  void didUpdateWidget(FlexibleTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.validate) {
      validateValue(widget.controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: widget.controller,
        enableSuggestions: false,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        autofocus: widget.autofocus,
        keyboardType: TextInputType.number,
        textInputAction: widget.action,
        onChanged: (value) {
          final intValue = validateValue(value);
          if (widget.validate) {
            if (intValue != null) {
              setState(() {
                _errorText = null;
              });
              widget.onChanged(intValue);
            }
          } else if (intValue != null) {
            widget.onChanged(intValue);
          }
        },
        decoration: InputDecoration(
          isDense: true,
          errorText: _errorText,
          border: const OutlineInputBorder(),
          labelText: widget.label,
        ),
      ),
    );
  }
}
