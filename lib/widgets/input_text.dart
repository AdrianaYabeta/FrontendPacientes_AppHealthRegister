import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnabled;
  final void Function(String? text)? onChanged;
  final String? Function(String? text)? validator;

  const InputText({
    Key? key,
    this.label = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.borderEnabled = true,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ignore: unnecessary_this
      keyboardType: this.keyboardType,
      // ignore: unnecessary_this
      obscureText: this.obscureText,
      onChanged: onChanged,
      validator: this.validator,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        // ignore: unnecessary_this
        labelText: this.label,
        contentPadding: const EdgeInsets.symmetric(vertical: 10),
        enabledBorder: borderEnabled
            ? const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              )
            : InputBorder.none,
        // ignore: prefer_const_constructors
        labelStyle: TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
