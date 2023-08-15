class ConversionHistoryItem {
  final String fromCurrency;
  final String toCurrency;
  final double amount;
  final double convertedAmount;

  ConversionHistoryItem({
    required this.fromCurrency,
    required this.toCurrency,
    required this.amount,
    required this.convertedAmount,
  });
}
