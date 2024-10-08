// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) {
  return _UserResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserResponseModel {
  bool get userType => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get birth => throw _privateConstructorUsedError;

  /// Serializes this UserResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResponseModelCopyWith<UserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseModelCopyWith<$Res> {
  factory $UserResponseModelCopyWith(
          UserResponseModel value, $Res Function(UserResponseModel) then) =
      _$UserResponseModelCopyWithImpl<$Res, UserResponseModel>;
  @useResult
  $Res call(
      {bool userType,
      String userName,
      String name,
      String surname,
      String address,
      String phoneNumber,
      String email,
      String birth});
}

/// @nodoc
class _$UserResponseModelCopyWithImpl<$Res, $Val extends UserResponseModel>
    implements $UserResponseModelCopyWith<$Res> {
  _$UserResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = null,
    Object? userName = null,
    Object? name = null,
    Object? surname = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? birth = null,
  }) {
    return _then(_value.copyWith(
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserResponseModelImplCopyWith<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  factory _$$UserResponseModelImplCopyWith(_$UserResponseModelImpl value,
          $Res Function(_$UserResponseModelImpl) then) =
      __$$UserResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool userType,
      String userName,
      String name,
      String surname,
      String address,
      String phoneNumber,
      String email,
      String birth});
}

/// @nodoc
class __$$UserResponseModelImplCopyWithImpl<$Res>
    extends _$UserResponseModelCopyWithImpl<$Res, _$UserResponseModelImpl>
    implements _$$UserResponseModelImplCopyWith<$Res> {
  __$$UserResponseModelImplCopyWithImpl(_$UserResponseModelImpl _value,
      $Res Function(_$UserResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = null,
    Object? userName = null,
    Object? name = null,
    Object? surname = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? birth = null,
  }) {
    return _then(_$UserResponseModelImpl(
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseModelImpl implements _UserResponseModel {
  const _$UserResponseModelImpl(
      {required this.userType,
      required this.userName,
      required this.name,
      required this.surname,
      required this.address,
      required this.phoneNumber,
      required this.email,
      required this.birth});

  factory _$UserResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseModelImplFromJson(json);

  @override
  final bool userType;
  @override
  final String userName;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String address;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String birth;

  @override
  String toString() {
    return 'UserResponseModel(userType: $userType, userName: $userName, name: $name, surname: $surname, address: $address, phoneNumber: $phoneNumber, email: $email, birth: $birth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseModelImpl &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birth, birth) || other.birth == birth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userType, userName, name,
      surname, address, phoneNumber, email, birth);

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseModelImplCopyWith<_$UserResponseModelImpl> get copyWith =>
      __$$UserResponseModelImplCopyWithImpl<_$UserResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserResponseModel implements UserResponseModel {
  const factory _UserResponseModel(
      {required final bool userType,
      required final String userName,
      required final String name,
      required final String surname,
      required final String address,
      required final String phoneNumber,
      required final String email,
      required final String birth}) = _$UserResponseModelImpl;

  factory _UserResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserResponseModelImpl.fromJson;

  @override
  bool get userType;
  @override
  String get userName;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get address;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get birth;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResponseModelImplCopyWith<_$UserResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
