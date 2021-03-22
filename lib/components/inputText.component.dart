import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController _controller;
  final String _label;
  final String _hint;

  InputText(this._controller, this._label, this._hint);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: TextField(
        style: TextStyle(fontSize: 20),
        controller: _controller,
        decoration: InputDecoration(
            labelText: _label,
            hintText: _hint,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
