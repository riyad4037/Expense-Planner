import 'package:flutter/material.dart';

class NewTransection extends StatelessWidget {
  final Function addtranseciton;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransection(this.addtranseciton);

  void SubmitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    addtranseciton(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              onSubmitted: (_) => SubmitData,
              controller: titleController,
              // onChanged: (value) => titleInput = value,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              // onChanged: (value) => amountInput = value,
              decoration: InputDecoration(labelText: 'Amount'),
              onSubmitted: (_) => SubmitData,
            ),
            TextButton(
                onPressed: SubmitData,
                child: Text(
                  'Add Transection',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
