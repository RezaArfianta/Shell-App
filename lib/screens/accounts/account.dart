import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shellslicing/components/account_card.dart';
import 'package:shellslicing/screens/accounts/transactions.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade400),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(children: [
                      Text(
                        "Reza",
                        style: GoogleFonts.raleway(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.red[700]),
                      )
                    ]),
                    Row(
                      children: [
                        Text(
                          "View and edit profile",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: AccountCard(
                  accountIcon: Icons.receipt,
                  accountText: "Transactions",
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransactionsPage()));
                },
              ),
              SizedBox(
                height: 20,
              ),
              AccountCard(
                  accountIcon: Icons.card_giftcard_outlined,
                  accountText: "Redemption"),
              SizedBox(
                height: 20,
              ),
              AccountCard(
                  accountIcon: Icons.money, accountText: "Other Activities"),
              SizedBox(
                height: 20,
              ),
              AccountCard(
                  accountIcon: Icons.looks_one_outlined,
                  accountText: "Expired Points"),
              SizedBox(
                height: 20,
              ),
              AccountCard(
                  accountIcon: Icons.signpost_outlined,
                  accountText: "App Tour"),
              SizedBox(
                height: 20,
              ),
              AccountCard(
                  accountIcon: Icons.circle_outlined, accountText: "Help"),
              SizedBox(
                height: 20,
              ),
              AccountCard(accountIcon: Icons.settings, accountText: "Settings"),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Legal",
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Software Version",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "V 1.20.4 (43)",
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
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Sign Out",
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
        ),
      )),
    );
  }
}
