import 'package:e_commerce/core/utils/constants/data_constants/app_keys.dart';
import 'package:equatable/equatable.dart';

class RegisterModel extends Equatable {
  final String firstName;
  final String lastName;
  final String userName;
  final String email;
  final String password;

  const RegisterModel({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      AppKeys.firstName: firstName,
      AppKeys.lastName: lastName,
      AppKeys.userName: userName,
    };
  }

  @override
  List<Object?> get props => [firstName, lastName, userName, email, password];

  @override
  bool get stringify => true;
}
