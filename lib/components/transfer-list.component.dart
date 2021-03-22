import 'package:flutter/material.dart';
import 'package:lakebank_flutter/model/transfer.dart';

import 'transfer-item.component.dart';

class TransferList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer List'),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          TransferItem(Transfer(150.0, 12345)),
          TransferItem(Transfer(100.0, 12345)),
          TransferItem(Transfer(50.0, 12345)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}

