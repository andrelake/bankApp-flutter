import 'package:flutter/material.dart';
import 'package:lakebank_flutter/components/inputText.component.dart';
import 'package:lakebank_flutter/model/transfer.dart';

class TransferForm extends StatelessWidget{
  final TextEditingController _accNumberInputController = TextEditingController();
  final TextEditingController _valueInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create new transfer'),
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputText(
                _accNumberInputController,
              "Account number:",
              "00000"
            ),
            InputText(
              _valueInputController,
              "Value:",
              "00.0"
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo)),
                  child: Text("Confirm"),
                  onPressed: ()=> _createTransfer()),
            )
          ],
        )
    );
  }

  void _createTransfer() {
    final int accNum = int.tryParse(_accNumberInputController.text);
    final double value = double.tryParse(_valueInputController.text);
    if(accNum!=null && value!=null) {
      final newTransfer = Transfer(value, accNum);
    }
  }
}