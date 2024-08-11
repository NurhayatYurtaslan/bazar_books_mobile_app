import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request_model.freezed.dart';
part 'signup_request_model.g.dart';

SignUpRequestModel signUpRequestModelFromJson(String str) =>
    SignUpRequestModel.fromJson(json.decode(str));

String signUpRequestModelToJson(SignUpRequestModel data) =>
    json.encode(data.toJson());

@freezed
class SignUpRequestModel with _$SignUpRequestModel {
  const factory SignUpRequestModel({
    required bool userType,
    required String userName,
    String? photoUrl,
    required String name,
    required String surname,
    required String address,
    required String phoneNumber,
    required String email,
    required String password,
    required String birth,   //Timestamp error
  }) = _SignUpRequestModel;

  factory SignUpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestModelFromJson(json);
}
