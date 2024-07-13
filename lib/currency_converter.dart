import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() =>
      _CurrencyConverterMaterialStatePage();
}

class _CurrencyConverterMaterialStatePage extends State<CurrencyConverter> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(20),
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),
        title: const Text(
          "Currency Converter",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'रु ${result > 10000000 ? "😒" : result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "USD to NPR",
                  prefixIcon: const Icon(Icons.monetization_on_sharp),
                  prefixIconColor: Colors.green,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: TextButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 133.63;
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 4, 4, 4),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
