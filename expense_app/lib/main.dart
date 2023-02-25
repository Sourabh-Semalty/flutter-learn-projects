import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Expense App'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 5,
              color: Colors.blue,
              child: Text(
                'child 1',
              ),
            ),
          ),
          UserTransaction()
        ]),
      ),
    ));
  }
}
