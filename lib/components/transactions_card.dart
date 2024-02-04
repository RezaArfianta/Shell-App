import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard(
      {super.key,
      required this.transactionLocation,
      required this.transactionPrice,
      required this.transactionDate,
      required this.transactionPoint});
  final String transactionLocation;
  final String transactionPrice;
  final String transactionDate;
  final String transactionPoint;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                transactionLocation,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "IDR ${transactionPrice}",
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(transactionDate),
              Text(
                "+ ${transactionPoint} Point",
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            color: Colors.grey.shade400,
          ),
        ],
      ),
    );
  }
}
