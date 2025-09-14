import 'package:flutter/material.dart';

class AuthCheckBox extends StatefulWidget {
  const AuthCheckBox({super.key, this.isChecked = true});
  final bool isChecked;
  @override
  State<AuthCheckBox> createState() => _AuthCheckBoxState();
}

class _AuthCheckBoxState extends State<AuthCheckBox> {
  late bool _isChecked;
  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value!;
        });
      },
    );
  }
}
