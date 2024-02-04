import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shellslicing/components/offers_card.dart';
import 'package:shellslicing/const/image.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
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
            Row(
              children: [
                Text(
                  "Offers",
                  style: GoogleFonts.raleway(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.red[700]),
                ),
                Spacer(),
                Icon(Icons.refresh),
                Icon(Icons.format_list_bulleted_rounded)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MY AVAILABLE SHELL OFFERS",
                  style: GoogleFonts.raleway(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "See All",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OffersCard(
                    offersImage: hiring,
                    offersTitle: "Wednesday Premium Bonus",
                    offersValid: "Valid Until 10/10/1010",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  OffersCard(
                    offersImage: hiring,
                    offersTitle: "Wednesday Premium Bonus",
                    offersValid: "Valid Until 10/10/1010",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  OffersCard(
                    offersImage: hiring,
                    offersTitle: "Wednesday Premium Bonus",
                    offersValid: "Valid Until 10/10/1010",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  OffersCard(
                    offersImage: hiring,
                    offersTitle: "Wednesday Premium Bonus",
                    offersValid: "Valid Until 10/10/1010",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
