class AryyUser {
  final int id;
  final String name;
  final String lastName;
  final String gender;
  final String birthday;
  final int countryCode;
  final int phoneNumber;
  final String email;
  final String photo;
  AryyUser(
      {required this.id,
      required this.name,
      required this.lastName,
      required this.gender,
      required this.birthday,
      required this.countryCode,
      required this.phoneNumber,
      required this.email,
      required this.photo});
  factory AryyUser.fromJson({required Map<String, dynamic> json}) {
    return AryyUser(
      id: json['id'],
      name: json['name'],
      lastName: json['lastName'],
      gender: json['gender'],
      birthday: json['birthday'],
      countryCode: json['countryCode'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      photo: json['photo'],
    );
  }
}
