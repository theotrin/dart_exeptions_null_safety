class SenderIdInvalidException implements Exception {
  String idSender;
  SenderIdInvalidException({required this.idSender});
}

class ReciveIdInvalidException implements Exception {
  String idRecive;
  ReciveIdInvalidException({required this.idRecive});
}

class SenderNotAuthenticated implements Exception {
  String idSender;
  SenderNotAuthenticated({required this.idSender});
}

class SenderBalanceLowerThanAmountException implements Exception {
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});
}
