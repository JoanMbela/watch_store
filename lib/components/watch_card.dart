import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class WatchCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final double price;
  const WatchCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          // image
          Container(
            margin: const EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
                color: AppColor.bgPastelBlue,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/$image"))),
          ),
          // title
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            width: double.infinity,
            child: Text(
              title,
              style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: AppColor.textPrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      height: 1.4)),
            ),
          ),
          // subtitle
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: double.infinity,
            child: Text(
              subtitle,
              style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: AppColor.textSecondary,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      height: 1.4)),
            ),
          ),
          // Price tag
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: double.infinity,
            child: Text(
              "\$$price",
              style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      height: 1.4)),
            ),
          ),
        ],
      ),
    );
  }
}
