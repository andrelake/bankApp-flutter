import 'package:flutter/material.dart';

import 'pages/transfer-form.page.dart';

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransferForm()
    );
  }
}




