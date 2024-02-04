import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shellslicing/components/rewards.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Shell Go+ card",
              style: GoogleFonts.raleway(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.red[700]),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "View your member benefits",
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.yellow,
                  border: Border.all(color: Colors.grey.shade300)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black87),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Display QR",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w800, fontSize: 15),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.qr_code_2)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.symmetric(
                    horizontal: BorderSide(color: Colors.grey),
                  )),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Selected rewards:",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "0",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Rewards",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                  Icon(Icons.refresh)
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                RewardsCard(
                  rewardTitle: "Monday is Coffee Day",
                  rewardValid: "Valid Until 10/101/01",
                ),
                Divider(
                  color: Colors.grey,
                  height: 10,
                ),
                RewardsCard(
                  rewardTitle: "Wednesday Premium Bonus Point",
                  rewardValid: "Valid Until 10/101/01",
                ),
                Divider(
                  color: Colors.grey,
                  height: 10,
                ),
                RewardsCard(
                  rewardTitle: "Extra Bonus Point",
                  rewardValid: "Valid Until 10/101/01",
                ),
                Divider(
                  color: Colors.grey,
                  height: 10,
                ),
                RewardsCard(
                  rewardTitle: "Shell Go+ Points!",
                  rewardValid: "Valid Until 10/101/01",
                ),
                Divider(
                  color: Colors.grey,
                  height: 10,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
