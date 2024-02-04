import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedCard extends StatelessWidget {
  FeaturedCard(
      {super.key,
      required this.image,
      required this.text,
      required this.valid});
  final String text;
  final String image;
  final String valid;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5))),
      height: 300,
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.raleway(
                  fontSize: 15, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Shell",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.raleway(
                  fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              valid,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                  fontSize: 15, color: Colors.red, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
