class PaymentIntentInputModel {
  final String amount;
  final String currency;
  final String cusomerId;

  PaymentIntentInputModel(
      {required this.cusomerId, required this.amount, required this.currency});

  toJson() {
    final formattedAmount = (double.parse(amount)).toStringAsFixed(2);
    final intAmount = (double.parse(formattedAmount) * 100).toInt();
    return {
      'amount': intAmount.toString(),
      'currency': currency,
      'customer': cusomerId
    };
  }
}
