import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatelessWidget {
  final String bankName;
  final String ownerName;
  final String cardNumber;
  final String cardType;
  final int expireMonth;
  final int expireYear;

  const Card1(
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
        borderRadius: BorderRadius.circular(14),
        image: const DecorationImage(
          image: AssetImage("assets/images/card_1_background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            bankName,
            style: GoogleFonts.arvo(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),

          Text(
            cardType,
            style: GoogleFonts.arvo(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/sim.png",
                width: 34,
                height: 26,
                fit: BoxFit.fitHeight,
              ),
              Transform.rotate(
                angle: 33,
                child: const Icon(
                  CupertinoIcons.wifi,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$cardNumber\n$ownerName",
                style: GoogleFonts.arvo(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  letterSpacing: 2,
                ),
              ),
              Text(
                "$expireMonth / $expireYear",
                style: GoogleFonts.arvo(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          // Text("",style: TextStyle(color: Colors.white,fontSize: 16),),
        ],
      ),
    );
  }
}
