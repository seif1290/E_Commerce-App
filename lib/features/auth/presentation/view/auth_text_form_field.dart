import 'package:e_commerce/core/utils/constants/ui_constants/app_validators.dart';
import 'package:flutter/material.dart';

class AuthTextFormField extends StatefulWidget {
  const AuthTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.isPassword = false,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.validator = AppValidators.defaultValidate,
    this.onFieldSubmitted,
    this.labelStyle,
    this.onChanged,
  });
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextStyle? labelStyle;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;
  final Function(String)? onChanged;
  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  bool _obsecureText = false;
  @override
  void initState() {
    super.initState();
    if (widget.isPassword) _obsecureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      validator: widget.validator,
      style: Theme.of(context).textTheme.titleSmall,
      obscureText: _obsecureText,
      onFieldSubmitted: widget.onFieldSubmitted,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        labelStyle: widget.labelStyle,
        prefixIcon: Icon(widget.prefixIcon),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obsecureText = !_obsecureText;
                  });
                },
                icon: _obsecureText
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : Icon(widget.suffixIcon),
      ),
    );
  }
}
