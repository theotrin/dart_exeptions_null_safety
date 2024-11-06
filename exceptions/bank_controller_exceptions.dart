class SenderIdInvalidException implements Exception {
  String idSender;
  SenderIdInvalidException({required this.idSender});
}

class ReciveIdInvalidException implements Exception {
  String idRecive;
  ReciveIdInvalidException({required this.idRecive});
}

class SenderNotAuthenticated implements Exception {}

class SenderBalanceLowerThanAmountException implements Exception {}
