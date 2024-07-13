import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({super.key});

  @override
  State<CurrencyConverterCupertino> createState() =>
      _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState
    extends State<CurrencyConverterCupertino> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        middle: Text(
          "Currency Converter",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: CupertinoColors.white,
          ),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'रु ${result > 10000000 ? "😒" : result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                color: CupertinoColors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  fontSize: 30,
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
                placeholder: "USD to NPR",
                prefix: const Icon(CupertinoIcons.money_dollar_circle_fill),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: CupertinoButton(
                color: CupertinoColors.black,
                onPressed: () {
                  result = double.parse(textEditingController.text) * 133.63;
                  setState(() {});
                },
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
