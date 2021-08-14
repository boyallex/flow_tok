class SettingsData {
  String account;
  String tick_tock_account;
  String name;
  int age;
  String country;
  SettingsData({
    required this.account,
    required this.tick_tock_account,
    required this.name,
    required this.age,
    required this.country,
  });
  factory SettingsData.fromJson(Map<String, dynamic> json) {
    return SettingsData(
      account: json["account"],
      tick_tock_account: json["tick_tock_account"],
      name: json["name"],
      age: json["age"],
      country: json["country"],
    );
  }
}
