import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_model.freezed.dart';

@freezed
abstract class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    required String email,
    required String password,
    required String name,
  }) = _RegisterModel;
}
