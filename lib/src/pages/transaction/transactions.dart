import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qvapay/src/models/transactions_model.dart';
import 'package:qvapay/src/providers/transactions_provider.dart';
import 'package:qvapay/src/snippets/topbar.dart';
import 'package:qvapay/src/snippets/transaction.dart';
import 'package:qvapay/theme.dart';

class TransactionsPage extends StatefulWidget {
  @override
  _TransactionsPageState createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  
  // Transactions...
  final transactionsProvider = new TransactionsProvider();

  // Controlador del scroll de la lista
  ScrollController _scrollController = new ScrollController();

  // Date from latest transaction
  int _latestTransaction = 0;

  // Retrieved transactions
  List<Transaction> _transactions = [];
  
  // Loading data
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    //_retrieveMoreTransactions();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        //_retrieveMoreTransactions();        // In case of direct loading

        // Future Method
        //fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Whole APP Background Color
      backgroundColor: ThemeColors.dark1,

      // Bottom Buttons
      //bottomNavigationBar: bottomNav(context),

      body: Stack(children: [
        Column(
          children: [
            // Top Bar
            topbar(context,
                name: "Erich",
                avatar:
                    "https://qvapay.com/storage/profiles/xGnoyrlZMy10Ta5hCQGvEtj6aqJK3Fa1rueU1lPv.jpg"),

            Expanded(
              child: RefreshIndicator(
                onRefresh: getLatestTransactions,
                child: ListView(
                  // Link Scroll COntroller to this
                  controller: _scrollController,
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  children: [
                    // Transaction Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transacciones Completadas:",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    _latestTransactions(),
                  ],
                ),
              ),
            ),
          ],
        ),
        _loadingIndicator(),
      ]),
    );
  }

  Widget _latestTransactions() {

    return FutureBuilder(
      future: transactionsProvider.getLatestTransactions(),
      //initialData: InitialData,       // Loadded from local DB
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // snapshot.data
        if (snapshot.hasData) {
          _transactions = snapshot.data;
          return ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: _transactions.length,
            itemBuilder: (BuildContext context, int index) {
              return transactionItem(
                  context: context,
                  icon: Icons.fastfood,                   //TODO: Change this for the logo
                  concept: _transactions[index].description,
                  subconcept: _transactions[index].remoteId,
                  amount: double.parse(_transactions[index].amount),
                  status: _transactions[index].status,
                  description: _transactions[index].description,
                  uuid: _transactions[index].uuid);
            },
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  // Get more transactions from user data
  /*
  _retrieveMoreTransactions() {
    // retrieve here the transactions from this user
    for (var i = 1; i < 20; i++) {
      _latestTransaction++;
      _transactions.add(_latestTransaction);

      //Update Papi
      setState(() {});
    }
  }
  */

  Future<Null> fetchData() async {
    final duration = Duration(seconds: 2);

    // We are loading
    _isLoading = true;
    setState(() {});

    return new Timer(duration, () {
      _isLoading = false;
      //_retrieveMoreTransactions();
      _scrollController.animateTo(_scrollController.position.pixels + 10,
          duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
    });
  }

  // On Refresh Indicartor
  Future<Null> getLatestTransactions() async {
    final duration = Duration(seconds: 2);

    new Timer(duration, () {
      // Retrieve latest transactions here
      _transactions.clear();
      _latestTransaction++;
      //_retrieveMoreTransactions();
    });

    return Future.delayed(duration);
  }

  Widget _loadingIndicator() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    }

    return Container();
  }
}
