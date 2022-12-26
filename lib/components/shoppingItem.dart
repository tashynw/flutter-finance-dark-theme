// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class ShoppingItem extends StatefulWidget {
  final Icon itemIcon;
  final String itemName;
  final String itemDate;
  final String itemPrice;
  const ShoppingItem({super.key, required this.itemIcon, required this.itemName, required this.itemDate, required this.itemPrice});

  @override
  State<ShoppingItem> createState() => _ShoppingItemState();
}

class _ShoppingItemState extends State<ShoppingItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(widget.itemIcon.icon, color: Colors.white, size: 30),
                  SizedBox(width: 40),
                  //name and date
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.itemName,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(widget.itemDate,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w400,
                          fontSize: 17
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //Price
            Text(
              "-\$${widget.itemPrice}",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            )
          ],
        ),
      ),
    );
  }
}