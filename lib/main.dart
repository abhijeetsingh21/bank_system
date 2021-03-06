import 'package:bank_system/data.dart';
import 'package:bank_system/widgets/expenses.dart';
import 'package:bank_system/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:bank_system/widgets/cardSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: PrimaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Container(
              height: 120,
              child: const WalletHeader(),
            ),
            Expanded(child: CardSection()),
            Expanded(child: ExpensesSection()),
          ],
        ),
      ),

    );
  }
}