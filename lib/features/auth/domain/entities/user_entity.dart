import 'package:equatable/equatable.dart';

abstract class UserEntity extends Equatable {
  final String uid;
  final String email;
  final String firstName;
  final String lastName;
  final String userName;

  const UserEntity({
    required this.uid,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.userName,
  });

  @override
  List<Object?> get props => [uid, email, firstName, lastName, userName];

  @override
  bool get stringify => true;
}
