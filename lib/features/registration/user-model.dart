// Step 1: Create a Model

class UserModel {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String birthDate;
  final String gender;
  final String userID;

  const UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.birthDate,
    required this.gender,
    required this.userID,
  });

  /// Converts the UserModel instance to a JSON format.
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phoneNumber': phoneNumber,
      'birthDate': birthDate,
      'gender': gender,
      'userID': userID,
    };
  }

  /// Creates a UserModel instance from a JSON object.
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      email: json['email'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      birthDate: json['birthDate'] ?? '',
      gender: json['gender'] ?? '',
      userID: json['userID'] ?? '',
    );
  }
}
