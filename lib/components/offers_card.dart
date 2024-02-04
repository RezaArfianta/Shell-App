import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OffersCard extends StatelessWidget {
  OffersCard(
      {super.key,
      required this.offersImage,
      required this.offersTitle,
      required this.offersValid});

  final String offersImage;
  final String offersTitle;
  final String offersValid;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5))),
      height: 360,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: ClipRRect(
              child: Image.asset(
                offersImage,
                height: 250,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              offersTitle,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.raleway(
                  fontSize: 15, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              offersValid,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                  fontSize: 15, color: Colors.red, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "Redeem Now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
