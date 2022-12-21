class AryyUserSignedin {
  final int id;
  final String email;
  final String countryCode;
  final String phoneNumber;
  AryyUserSignedin({
    required this.id,
    required this.countryCode,
    required this.phoneNumber,
    required this.email,
  });
  factory AryyUserSignedin.fromJson({required Map<String, dynamic> json}) {
    return AryyUserSignedin(
      id: json['user_id'],
      email: json['email'],
      countryCode: json['country_code'],
      phoneNumber: json['phone_number'],
    );
  }
}
