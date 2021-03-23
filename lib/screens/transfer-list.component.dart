import 'package:flutter/material.dart';
import 'package:lakebank_flutter/models/transfer.dart'  ;
import 'package:lakebank_flutter/screens/transfer-form.screen.dart';

import '../components/transfer-item.component.dart';

const _appBarTitle = 'Transfer List';

class TransferList extends StatefulWidget {
  final List<Transfer> _transferList = [];

  @override
  State<StatefulWidget> createState() {
    return TransferListState();
  }
}

class TransferListState extends State<TransferList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_appBarTitle),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: widget._transferList.length,
        itemBuilder: (context, index) {
          return TransferItem(widget._transferList[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(
              builder: (context) { return TransferForm(); }
              )).then((receivedTransfer) {
                  if(receivedTransfer!=null) {
                    setState(() {
                    widget._transferList.add(receivedTransfer);
                });
              }
          });
        },
      ),
    );
  }
}