import 'package:qvapay/globals.dart';
import 'package:qvapay/src/models/transactions_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TransactionsProvider {
  String _url = "/api/application/transactions";
  String _apiKey = "sdveqrbqerb";
  String _amount = "20";
  String _page = "1";

  // Get all recent transactions
  Future<List<Transaction>> getLatestTransactions() async {
    final url = Uri.https(QvapayGlobals.apiUrl, _url,
        {'token': _apiKey, 'amount': _amount, 'page': _page});

    //print(_url);
    //print(url);

    final response = await http.get(url);
    final decodedData = json.decode(response.body);

    print(decodedData);

    final transactions = new Transactions.fromJsonList(decodedData);

    return transactions.items;
  }
}
