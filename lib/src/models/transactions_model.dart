class Transactions {

  List<Transaction> items = [];

  Transactions();

  Transactions.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final transaction = new Transaction.fromJsonMap(item);
      items.add(transaction);
    }
  }
}

class Transaction {
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
  //App app;
  //Owner owner;
  //App appOwner;
  //Owner paidBy;
  //dynamic wallet;

  Transaction({
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
    //this.app,
    //this.owner,
    //this.appOwner,
    //this.paidBy,
    //this.wallet,
  });

  Transaction.fromJsonMap(Map<String, dynamic> json) {
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
    //app = json['app'];
    //owner = json['owner'];
    //appOwner = json['app_owner'];
    //paidBy = json['paid_by'];
    //wallet = json['wallet'];
  }
}

class App {
  String logo;
  String url;
  String name;

  App({
    this.logo,
    this.url,
    this.name,
  });
}

class Owner {
  String uuid;
  String username;
  String name;
  String lastname;
  String bio;
  String logo;
  int kyc;

  Owner({
    this.uuid,
    this.username,
    this.name,
    this.lastname,
    this.bio,
    this.logo,
    this.kyc,
  });
}
