import 'package:flutter/material.dart';
import 'package:lakebank_flutter/screens/transfer-list.component.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransferList()
    );
  }
}




