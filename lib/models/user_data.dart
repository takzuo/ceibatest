class UserData{
  final String name;
  final String email;
  final String phone;

  UserData.fromJson(Map<String, dynamic> json)
    : name = json['name'],
        email = json['email'],
        phone = json['phone'];
}