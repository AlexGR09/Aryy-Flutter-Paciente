class AryyUser {
  final int id;
  final String fullName;
  final String gender;
  final String birthday;
  final int countryCode;
  final String phoneNumber;
  final String email;
  final String profilePicture;
  AryyUser(
      {required this.id,
      required this.fullName,
      required this.gender,
      required this.birthday,
      required this.countryCode,
      required this.phoneNumber,
      required this.email,
      required this.profilePicture});
  factory AryyUser.fromJson({required Map<String, dynamic> json}) {
    return AryyUser(
      id: json['user_id'],
      fullName: json['full_name'],
      gender: json['gender'],
      birthday: json['birthday'],
      countryCode: json['country_code'],
      phoneNumber: json['phone_number'],
      email: json['email'],
      profilePicture: json['profile_photo'],
    );
  }
}
