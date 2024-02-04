import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  const AccountCard(
      {super.key, required this.accountIcon, required this.accountText});
  final IconData accountIcon;
  final String accountText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(accountIcon),
              SizedBox(
                width: 15,
              ),
              Text(
                accountText,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
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
