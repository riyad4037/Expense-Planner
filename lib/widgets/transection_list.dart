import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transection.dart';

class TransectionList extends StatelessWidget {
  final List<Transaction> _transections;

  TransectionList(this._transections);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 3,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.pink,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$ ${_transections[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.pink,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Text(
                      _transections[index].title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[900],
                      ),
                    )),
                    Text(
                      DateFormat.yMMMd().format(_transections[index].date),
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 131, 123, 123),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: _transections.length,
      ),
    );
  }
}
