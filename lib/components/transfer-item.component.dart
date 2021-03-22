import 'package:flutter/material.dart';
import 'package:lakebank_flutter/model/transfer.dart';

class TransferItem extends StatelessWidget {
  Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on_outlined),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.accNumber.toString()),
      ),
    );
  }
}