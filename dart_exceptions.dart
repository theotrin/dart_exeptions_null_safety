import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  BankController bankController = BankController();

  bankController.addAccount(
      id: "Theo",
      account:
          Account(name: "Theo Trindade", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Kako Nakamura", balance: 600, isAuthenticated: true));

  try {
    bool result = bankController.makeTransfer(
        idSender: "Theo", idReceiver: "Kako", amount: 2500);

    if (result) {
      print("Transação realizada com sucesso!");
    }
  } on SenderIdInvalidException catch (exception) {
    print("O ID '${exception.idSender}' não é um id válido");
  } on ReciveIdInvalidException catch (exception) {
    print("O id ${exception.idRecive} não é um usuario com id válido");
  } on SenderNotAuthenticated catch (exception) {
    print("O usuario '${exception.idSender}' não esta utenticado");
  } on SenderBalanceLowerThanAmountException catch (exception) {
    print(
        "O usuario '${exception.idSender}' possui saldo insuficiente valor em conta: ${exception.senderBalance}, valor solicitado: ${exception.amount}");
  } on Exception {
    print("Desculpe algo deu errado :/");
  }
}
