import 'package:equatable/equatable.dart';

abstract class UserEntity extends Equatable {
  final String uid;
  final String email;
  final String firstName;
  final String lastName;
  final String userName;
  final bool isEmailConfirmed;

  const UserEntity({
    required this.uid,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.isEmailConfirmed,
  });

  @override
  List<Object?> get props => [
    uid,
    email,
    firstName,
    lastName,
    userName,
    isEmailConfirmed,
  ];

  @override
  bool get stringify => true;
}
