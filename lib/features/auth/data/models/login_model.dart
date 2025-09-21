import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  final String email;
  final String password;

  const LoginModel({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];

  @override
  bool get stringify => true;
}
