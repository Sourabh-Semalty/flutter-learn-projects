import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              // onChanged: (value) {
              //   titleInput = value;
              // }, // replcaed by controller because controller saves input and doese work on stateless wiget
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              // onChanged: (value) {
              //   amountInput = value;
              // },
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
              child: const Text(
                'Add transaction',
                style: TextStyle(color: Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
