import 'package:qvapay/globals.dart';
import 'package:qvapay/src/models/transactions_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TransactionsProvider {
  String _url = "/api/application/transactions";
  String _apiKey = "sdveqrbqerb";
  String _amount = "30";
  String _page = "1";

  // Get all recent transactions (20)
  Future<List<Transaction>> getLatestTransactions() async {
    final url = Uri.https(QvapayGlobals.apiUrl, _url,
        {'token': _apiKey, 'amount': _amount, 'page': _page});

    final response = await http.get(url);
    final decodedData = json.decode(response.body);

    final transactions = new Transactions.fromJsonList(decodedData);

    return transactions.items;
  }

  // Get all recent transactions (3)
  Future<List<Transaction>> getLatestTransactionsHome() async {

    // same here bu ony 3
    String _url = "/api/application/transactions";
    String _apiKey = "sdveqrbqerb";
    String _amount = "5";

    final url = Uri.https(
        QvapayGlobals.apiUrl, _url, {'token': _apiKey, 'amount': _amount});

    final response = await http.get(url);
    final decodedData = json.decode(response.body);

    final transactions = new Transactions.fromJsonList(decodedData);

    return transactions.items;
  }
}