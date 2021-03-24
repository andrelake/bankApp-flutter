import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final String errorText;
  final bool isObscureText;
  final TextInputType inputType;

  InputText({this.controller,
    this.label,
    this.hint,
    this.errorText,
    this.isObscureText = false,
    this.inputType = TextInputType.number
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: TextField(
        style: TextStyle(
            fontSize: 20,
        ),
        controller: controller,
        decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            errorText: errorText,
        ),
        keyboardType: inputType,
        obscureText: isObscureText,
      ),
    );
  }
}
