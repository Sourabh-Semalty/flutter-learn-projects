import 'package:expense_app/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  const TransactionList(this.transactions, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                      ),
                      child: Text(
                        'Rs. ${transactions[index].amount}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transactions[index].title,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          DateFormat.yMMMd().format(transactions[index].date),
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ));
          },
          itemCount: transactions.length,
        ));
  }
}
