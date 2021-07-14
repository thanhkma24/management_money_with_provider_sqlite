import 'package:flutter/cupertino.dart';
import 'package:manager_money_provider_sqlite/model/transactionModel.dart';
import 'package:manager_money_provider_sqlite/service/databaseHelper.dart';

class ReportController with ChangeNotifier {
  DatabaseHelper? databaseHelper = DatabaseHelper.instance;

  ReportController() {
    if (databaseHelper != null) fetchTransaction();
  }
}

  String reportMethod = "Income";

  List<TransactionModel?> transactionList = [];
  List<TransactionModel?> transactionIncomeList = [];
  List<TransactionModel?> transactionExpenseList = [];

  double total = 0.0;
  double totalIncome = 0.0;
  double totalExpense = 0.0;
  double healthIncomeAmount = 0.0;
  double healthExpenseAmount = 0.0;
  double familyIncomeAmount = 0.0;
  double familyExpenseAmount = 0.0;
  double shoppingIncomeAmount = 0.0;
  double shoppingExpenseAmount = 0.0;
  double foodIncomeAmount = 0.0;
  double foodExpenseAmount = 0.0;
  double vehicleIncomeAmount = 0.0;
  double vehicleExpenseAmount = 0.0;
  double salonIncomeAmount = 0.0;
  double salonExpenseAmount = 0.0;
  double deviceIncomeAmount = 0.0;
  double deviceExpenseAmount = 0.0;
  double officeIncomeAmount = 0.0;
  double officeExpenseAmount = 0.0;
  double othersIncomeAmount = 0.0;
  double othersExpenseAmount = 0.0;

  void cartButton(String value){
    reportMethod = value;


  }

    void fetchTransaction() {

  }
