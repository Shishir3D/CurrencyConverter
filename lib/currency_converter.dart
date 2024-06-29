import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "0",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: "NPR to USD",
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
