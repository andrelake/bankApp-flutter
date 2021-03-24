import 'package:flutter/material.dart';
import 'package:lakebank_flutter/components/inputText.component.dart';
import 'package:lakebank_flutter/models/transfer.dart';

const _appBarTitle = 'Create new transfer';
const _accNumberLabel = "Account number:";
const _valueLabel = "Value:";
const _accNumberHint = "00000";
const _valueHint = "00.00";
const _buttonText = "Confirm";

class TransferForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TransferFormState();
  }
}

class TransferFormState extends State<TransferForm> {
  final TextEditingController _accNumberInputController = TextEditingController();
  final TextEditingController _valueInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_appBarTitle),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InputText(
                    controller: _accNumberInputController,
                    label: _accNumberLabel,
                    hint: _accNumberHint,
                ),
                InputText(
                    controller: _valueInputController,
                    label: _valueLabel,
                    hint: _valueHint,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo)),
                      child: Text(_buttonText),
                      onPressed: ()=> _createTransfer(context)),
                )
              ],
            ),
          ),
        )
    );
  }
  void _createTransfer(BuildContext context) {
    final int accNum = int.tryParse(_accNumberInputController.text);
    final double value = double.tryParse(_valueInputController.text);
    if(accNum!=null && value!=null) {
      final newTransfer = Transfer(value, accNum);
      Navigator.pop(context, newTransfer);
    }
  }
}