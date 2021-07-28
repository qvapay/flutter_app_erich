class Me {
  String uuid;
  String username;
  String name;
  String lastname;
  String bio;
  String logo;
  String balance;
  double totalOut;
  double totalIn;
  int kyc;
  List<LatestTransaction> latestTransactions = [];

  Me({
    this.uuid,
    this.username,
    this.name,
    this.lastname,
    this.bio,
    this.logo,
    this.balance,
    this.totalOut,
    this.totalIn,
    this.kyc,
    this.latestTransactions,
  });

  Me.fromJsonMap(Map<String, dynamic> json) {
    uuid = json['uuid'];
    username = json['username'];
    name = json['name'];
    lastname = json['lastname'];
    bio = json['bio'];
    logo = json['logo'];
    balance = json['balance'];
    totalOut = double.parse(json['total_out']);
    totalIn = double.parse(json['total_in']);
    kyc = json['kyc'];

    // Iterate over Latest Transactions
    LatestTransactions latest = LatestTransactions.fromJsonList(json['latestTransactions']);
    latestTransactions = latest.latestTransactions;
  }
}

// latestTransactions List
class LatestTransactions {
  List<LatestTransaction> latestTransactions = [];

  LatestTransactions();

  LatestTransactions.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final transaction = new LatestTransaction.fromJsonMap(item);
      latestTransactions.add(transaction);
    }
  }
}

// LatestTransaction Object
class LatestTransaction {
  String uuid;
  int userId;
  int appId;
  String amount;
  String description;
  String remoteId;
  String status;
  int paidByUserId;
  int signed;
  String createdAt;
  String updatedAt;
  //String paidBy;
  //int appOwner;
  //Me owner;
  //String wallet;

  LatestTransaction({
    this.uuid,
    this.userId,
    this.appId,
    this.amount,
    this.description,
    this.remoteId,
    this.status,
    this.paidByUserId,
    this.signed,
    this.createdAt,
    this.updatedAt,
    //this.paidBy,
    //this.appOwner,
    //this.owner,
    //this.wallet,
  });

  LatestTransaction.fromJsonMap(Map<String, dynamic> json) {
    uuid = json['uuid'];
    userId = json['user_id'];
    appId = json['app_id'];
    amount = json['amount'];
    description = json['description'];
    remoteId = json['remote_id'];
    status = json['status'];
    paidByUserId = json['paid_by_user_id'];
    signed = json['signed'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    //paidBy = json['paid_by'];
    //appOwner = json['app_owner'];
    //owner = json['owner'];
    //wallet = json['wallet'];
  }
}
