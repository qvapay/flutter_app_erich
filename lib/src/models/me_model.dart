class Me {
  String uuid;
  String username;
  String name;
  String lastname;
  String bio;
  String logo;
  String balance;
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
    kyc = json['kyc'];
    latestTransactions = json['latestTransactions'];
  }
}

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
  PaidBy paidBy;
  AppOwner appOwner;
  Me owner;
  Wallet wallet;

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
    this.paidBy,
    this.appOwner,
    this.owner,
    this.wallet,
  });

  LatestTransaction.fromJsonMap(Map<String, dynamic> json) {
    uuid = json['uuid'];
    userId = json['userId'];
    appId = json['appId'];
    amount = json['amount'];
    description = json['description'];
    remoteId = json['remoteId'];
    status = json['status'];
    paidByUserId = json['paidByUserId'];
    signed = json['signed'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    paidBy = json['paidBy'];
    appOwner = json['appOwner'];
    owner = json['owner'];
    wallet = json['wallet'];
  }
}

class AppOwner {
  String logo;
  String url;
  String name;

  AppOwner({
    this.logo,
    this.url,
    this.name,
  });
}

class PaidBy {
  String username;
  String name;
  String logo;

  PaidBy({
    this.username,
    this.name,
    this.logo,
  });
}

class Wallet {
  int id;
  int transactionId;
  String invoiceId;
  String walletType;
  String wallet;
  String value;
  String received;
  String txid;
  String status;
  String createdAt;
  String updatedAt;

  Wallet({
    this.id,
    this.transactionId,
    this.invoiceId,
    this.walletType,
    this.wallet,
    this.value,
    this.received,
    this.txid,
    this.status,
    this.createdAt,
    this.updatedAt,
  });
}
