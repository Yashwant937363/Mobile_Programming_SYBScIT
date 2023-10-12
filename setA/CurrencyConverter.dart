import 'package:flutter/material.dart';
import 'package:sybscit_semiii/components/styles/styles.dart';

class CurrencyConverter extends StatefulWidget {
  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  TextEditingController rup = TextEditingController();
  TextEditingController dol = TextEditingController();
  TextEditingController eur = TextEditingController();
  var inr, usd, euro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: rup,
                decoration: inputstyle1('INR'),
                onChanged: (value) {
                  inr = double.tryParse(rup.text);
                  if (inr != null) {
                    usd = inr! / 75.0;
                    euro = inr! / 82.0;
                    dol.text = usd.toStringAsFixed(2);
                    eur.text = euro.toStringAsFixed(2);
                  }
                },
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: dol,
                      decoration: inputstyle1('USD'),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: eur,
                      decoration: inputstyle1('EUR'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
