import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RewardsCard extends StatelessWidget {
  RewardsCard(
      {super.key, required this.rewardTitle, required this.rewardValid});
  final String rewardTitle;
  final String rewardValid;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.card_giftcard),
              SizedBox(
                width: 10,
              ),
              Text(
                rewardTitle,
                style: GoogleFonts.raleway(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 35), child: Text(rewardValid)),
              Icon(
                Icons.check_box_outline_blank,
                size: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
