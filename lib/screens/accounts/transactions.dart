import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shellslicing/components/transactions_card.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Transactions",
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TransactionCard(
                  transactionLocation: "SHELL BSD4 TANGERANG",
                  transactionPrice: "20.000",
                  transactionDate: "20/01/2024, 23:36",
                  transactionPoint: "1"),
              SizedBox(
                height: 20,
              ),
              TransactionCard(
                  transactionLocation: "Shell Buah Batu BDG",
                  transactionPrice: "70.000",
                  transactionDate: "10/11/2023, 15:32",
                  transactionPoint: "5"),
              SizedBox(
                height: 20,
              ),
              TransactionCard(
                  transactionLocation: "Shell Buah Batu BDG",
                  transactionPrice: "70.000",
                  transactionDate: "20/09/2023, 09:06",
                  transactionPoint: "5"),
            ],
          ),
        ),
      )),
    );
  }
}
