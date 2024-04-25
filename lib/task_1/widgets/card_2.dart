import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card2 extends StatelessWidget {
  final String bankName;
  final String ownerName;
  final String cardNumber;
  final String cardType;
  final int expireMonth;
  final int expireYear;

  const Card2(
      {super.key,
      required this.bankName,
      required this.ownerName,
      required this.cardNumber,
      required this.cardType,
      required this.expireMonth,
      required this.expireYear});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(14),
      image: const DecorationImage(
        image: AssetImage("assets/images/card_2_background.jpg"),
        fit: BoxFit.cover
      )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardType,
                style: GoogleFonts.robotoSlab(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
              Text(
                bankName,
                style: GoogleFonts.robotoSlab(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset(
            "assets/images/sim.png",
            width: 34,
            height: 26,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(height: 10),
          Text(
            cardNumber,
            style: GoogleFonts.robotoSlab(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 2),
          ),
          Text(
            "LOREM IPSUM",
            style: GoogleFonts.robotoSlab(
              fontSize: 8,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "$expireMonth / $expireYear",
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          // SizedBox(height: 10),
          Text(
            ownerName,
            style: GoogleFonts.robotoSlab(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 2),
          ),
        ],
      ),
    );
  }
}
