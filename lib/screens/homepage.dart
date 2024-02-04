import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shellslicing/components/featured_card.dart';
import 'package:shellslicing/const/image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Reza",
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.red[700]),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome to the Shell Go + \nloyalty program",
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 5,
                        color: Colors.black12,
                        spreadRadius: 2,
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "63 Points",
                            style: GoogleFonts.poppins(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.red[700]),
                          ),
                          Text(
                            "Your points balance",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "View details",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.underline),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(5),
                        // boxShadow: [
                        //   BoxShadow(
                        //     offset: Offset(3, 4),
                        //     blurRadius: 5,
                        //     color: Colors.black12,
                        //     spreadRadius: 2,
                        //   ),
                        // ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Redeem Your Loyalty Points",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w800, fontSize: 17),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Icon(Icons.arrow_forward_ios),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "WHAT'S NEW",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w700, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    border: Border.all(color: Colors.black26)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/shellwinfuel.jpg"),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Power Up Your Point\nEvery Sunday!",
                        style: GoogleFonts.raleway(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Featured offers",
                style: GoogleFonts.raleway(
                    fontSize: 16, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  FeaturedCard(
                    // FEATUREDCARD extract widget
                    image: hiring,
                    text: "Upgrade Your Driving Experience",
                    valid: "Valid Until 10/10/2010",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FeaturedCard(
                      image: hiring2,
                      text: "Power Up Your Vehicle",
                      valid: "Valid until 12/12/2012")
                ]),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      )),
    );
  }
}
