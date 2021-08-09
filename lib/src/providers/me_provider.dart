import 'dart:async';
import 'dart:convert';

import 'package:qvapay/globals.dart';
import 'package:qvapay/src/models/me_model.dart';
import 'package:http/http.dart' as http;

class MeProvider {
  // Make the Http call
  // Transform it into Me Model
  // Return Me Model

  String _me = "/api/app/me";
  String _transactions = "/api/app/transactions";
  String _apiKey = "sdveqrbqerb";

  // -- Begin Stream example
  final _meData = StreamController<Me>.broadcast();
  Function(Me) get meSink => _meData.sink.add;
  Stream<Me> get meStream => _meData.stream;
  void disposeStreams() {
    _meData?.close();
  }
  // -- End Stream example

  // Get a Future with the Me class
  Future<Me> me() async {
    final url = Uri.https(QvapayGlobals.apiUrl, _me, {'token': _apiKey});
    final response = await http.get(url);
    final decodedData = json.decode(response.body);
    final Me me = new Me.fromJsonMap(decodedData);

    // Send to the Stream
    meSink(me);

    return me;
  }

  // Get a Future with the latest trasnactions
  Future<LatestTransactions> getLatestTransactions() async {
    final url =
        Uri.https(QvapayGlobals.apiUrl, _transactions, {'token': _apiKey});
    final response = await http.get(url);
    final decodedData = json.decode(response.body);
    final LatestTransactions latestTransactions =
        new LatestTransactions.fromJsonList(decodedData);
    return latestTransactions;
  }
}
