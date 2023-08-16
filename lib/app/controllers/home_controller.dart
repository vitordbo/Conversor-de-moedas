import 'package:conversor_de_moedas/app/models/conversion_history_item.dart';
import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  // instanciando para parar de reclamar no construtor
  late List<CurrencyModel> currencies;
  late CurrencyModel toCurrency;
  late CurrencyModel fromCurrency;

  final TextEditingController toText;
  final TextEditingController fromText;

  List<ConversionHistoryItem> conversionHistory = [];

  HomeController(this.toText, this.fromText) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    } else if (fromCurrency.name == 'Libra') {
      returnValue = value * toCurrency.libra;
    } else if (fromCurrency.name == 'Peso Argentino') {
      returnValue = value * toCurrency.peso;
    }

    conversionHistory.add(ConversionHistoryItem(
      fromCurrency: fromCurrency.name,
      toCurrency: toCurrency.name,
      amount: value,
      convertedAmount: returnValue,
    ));

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
