class Paciente {
  final String id;
  final String name;
  final String lastName;
  final String gender;
  final String birthday;
  final int countryCode;
  final int phoneNumber;
  final String email;
  final String photo;
  Paciente(this.id, this.name, this.lastName, this.gender, this.birthday,
      this.countryCode, this.phoneNumber, this.email, this.photo);
  Paciente.fromJson(
      Map<String, dynamic> json,
      this.id,
      this.name,
      this.lastName,
      this.gender,
      this.birthday,
      this.countryCode,
      this.phoneNumber,
      this.email,
      this.photo);
  // BaseModel.fromJson(Map<String,dynamic> json);

}
