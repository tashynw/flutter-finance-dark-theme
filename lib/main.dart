// ignore_for_file: prefer_const_constructors

import 'package:finance_dark_theme/components/accountDetailsCard.dart';
import 'package:finance_dark_theme/components/shoppingItem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Dark Theme',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.white,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_thresholding_outlined,color: Colors.white,),
            label: "Analytics",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined,color: Colors.white,),
            label: "Wallet",
          ),
        ],
      ),
      backgroundColor: Colors.grey[850],
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              //Heading
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu,size: 40, color: Colors.grey[600],),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 40,
                    width: 40,
                    child: Icon(Icons.person, color: Colors.grey[600]),
                  )
                ],
              ),
              SizedBox(height: 30),
              //horizontal scroll
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //single card that swipes horizontally
                    AccountDetails(
                      cardNumber: "3829 4820", 
                      holderName: "Amego", 
                      backgroundColor: Colors.blueGrey,
                    ),
                    SizedBox(width:20),
                    AccountDetails(
                      cardNumber: "5932 5834", 
                      holderName: "Tashyn", 
                      backgroundColor: Colors.lightBlueAccent
                    ),
                    SizedBox(width:20),
                    AccountDetails(
                      cardNumber: "4353 6857", 
                      holderName: "Wallace", 
                      backgroundColor: Colors.lightGreenAccent
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              //shopping lists
              ShoppingItem(
                itemDate: "May 20",
                itemIcon: Icon(Icons.sports_football_outlined),
                itemName: "Spotify",
                itemPrice: "15.00",
              ),
              SizedBox(height:50),
              ShoppingItem(
                itemDate: "May 22",
                itemIcon: Icon(Icons.local_grocery_store_outlined),
                itemName: "Grocery",
                itemPrice: "43.00",
              ),
              SizedBox(height:50),
              ShoppingItem(
                itemDate: "June 2",
                itemIcon: Icon(Icons.food_bank_outlined),
                itemName: "Food",
                itemPrice: "12.00",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
