// ignore_for_file: prefer_const_constructors, must_be_immutable, file_names

import 'package:flutter/material.dart';

class AccountDetails extends StatefulWidget {
  String cardNumber;
  String holderName;
  Color backgroundColor;
  AccountDetails({super.key, required this.cardNumber, required this.holderName, required this.backgroundColor});

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35), 
        color: widget.backgroundColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.switch_left_sharp, size: 40),
          SizedBox(height: 15),
          Text("Card Number".toUpperCase(),
              style: TextStyle(fontSize: 11, color: Colors.grey[850], fontWeight: FontWeight.w500),),
          SizedBox(height: 8),
          Text(widget.cardNumber,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4.0)),
          SizedBox(height: 30),
          Text(widget.holderName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400))
        ],
      ),
    );
  }
}
