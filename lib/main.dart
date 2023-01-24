import 'package:flutter/material.dart';
import 'package:flutter_guide/models/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<Transaction> listTransaction = [
    Transaction(
      id: "t1",
      title: "Goppay",
      amount: 200000,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Goppay-2",
      amount: 200000,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Goppay-3",
      amount: 200000,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Goppay-4",
      amount: 200000,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Goppay-5",
      amount: 200000,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Plan"),
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text("Chart"),
            ),
          ),
          Column(
            children: listTransaction
                .map((e) => Card(
                      child: Row(
                        children: [
                          Container(child: Text(e.amount.toString())),
                          Container(child: Text(e.title)),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
