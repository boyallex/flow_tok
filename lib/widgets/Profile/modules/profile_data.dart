class ProfileData {
  double? walletBalance;
  String? name;
  String? account;
  // ProfileData(this.walletBalance);
  ProfileData({this.name, this.walletBalance, this.account});
  factory ProfileData.fromJson(Map<String, dynamic> json){
    return ProfileData(
      name: json["name"],
      walletBalance: json["balance"],
      account: json["account"],
    );
  }
  // List<Map> data;
  // ProfileData(this.data);
}
