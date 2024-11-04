import 'controllers/bank_controller.dart';
import 'models/account.dart';

// void main() {
//   // Criando o banco
//   BankController bankController = BankController();

//   // Adicionando contas
//   bankController.addAccount(
//       id: "Ricarth",
//       account:
//           Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

//   bankController.addAccount(
//       id: "Kako",
//       account:
//           Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

//   // Fazendo transferência
//   bool result = bankController.makeTransfer(
//       idSender: "Kako", idReceiver: "Ricarth", amount: 700);

//   // Observando resultado
//   print(result);
// }

void main() {
  print("Started main");
  functionOne();
}

functionOne() {
  print("Function One started!");
  try {
    functionTwo();
  } on FormatException {
    print("Erro capturado na functionOne");
  }
  print("Function One is over");
}

functionTwo() {
  print("Function Two started...");
  for (int count = 0; count < 6; count++) {
    print(count);
    double amount = double.parse("vixx");
  }
  print("Finshed function two");
}
