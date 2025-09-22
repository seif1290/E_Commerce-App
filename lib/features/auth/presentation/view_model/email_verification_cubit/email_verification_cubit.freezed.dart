// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmailVerificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState()';
}


}

/// @nodoc
class $EmailVerificationStateCopyWith<$Res>  {
$EmailVerificationStateCopyWith(EmailVerificationState _, $Res Function(EmailVerificationState) __);
}


/// Adds pattern-matching-related methods to [EmailVerificationState].
extension EmailVerificationStatePatterns on EmailVerificationState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _SignOutLoading value)?  signOutLoading,TResult Function( _SignOutSuccess value)?  signOutSuccess,TResult Function( _SignOutFailure value)?  signOutFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SignOutLoading() when signOutLoading != null:
return signOutLoading(_that);case _SignOutSuccess() when signOutSuccess != null:
return signOutSuccess(_that);case _SignOutFailure() when signOutFailure != null:
return signOutFailure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _SignOutLoading value)  signOutLoading,required TResult Function( _SignOutSuccess value)  signOutSuccess,required TResult Function( _SignOutFailure value)  signOutFailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _SignOutLoading():
return signOutLoading(_that);case _SignOutSuccess():
return signOutSuccess(_that);case _SignOutFailure():
return signOutFailure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _SignOutLoading value)?  signOutLoading,TResult? Function( _SignOutSuccess value)?  signOutSuccess,TResult? Function( _SignOutFailure value)?  signOutFailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SignOutLoading() when signOutLoading != null:
return signOutLoading(_that);case _SignOutSuccess() when signOutSuccess != null:
return signOutSuccess(_that);case _SignOutFailure() when signOutFailure != null:
return signOutFailure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signOutLoading,TResult Function()?  signOutSuccess,TResult Function( String errMSg)?  signOutFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SignOutLoading() when signOutLoading != null:
return signOutLoading();case _SignOutSuccess() when signOutSuccess != null:
return signOutSuccess();case _SignOutFailure() when signOutFailure != null:
return signOutFailure(_that.errMSg);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signOutLoading,required TResult Function()  signOutSuccess,required TResult Function( String errMSg)  signOutFailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _SignOutLoading():
return signOutLoading();case _SignOutSuccess():
return signOutSuccess();case _SignOutFailure():
return signOutFailure(_that.errMSg);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signOutLoading,TResult? Function()?  signOutSuccess,TResult? Function( String errMSg)?  signOutFailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SignOutLoading() when signOutLoading != null:
return signOutLoading();case _SignOutSuccess() when signOutSuccess != null:
return signOutSuccess();case _SignOutFailure() when signOutFailure != null:
return signOutFailure(_that.errMSg);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements EmailVerificationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.initial()';
}


}




/// @nodoc


class _SignOutLoading implements EmailVerificationState {
  const _SignOutLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOutLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.signOutLoading()';
}


}




/// @nodoc


class _SignOutSuccess implements EmailVerificationState {
  const _SignOutSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOutSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.signOutSuccess()';
}


}




/// @nodoc


class _SignOutFailure implements EmailVerificationState {
  const _SignOutFailure({required this.errMSg});
  

 final  String errMSg;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignOutFailureCopyWith<_SignOutFailure> get copyWith => __$SignOutFailureCopyWithImpl<_SignOutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOutFailure&&(identical(other.errMSg, errMSg) || other.errMSg == errMSg));
}


@override
int get hashCode => Object.hash(runtimeType,errMSg);

@override
String toString() {
  return 'EmailVerificationState.signOutFailure(errMSg: $errMSg)';
}


}

/// @nodoc
abstract mixin class _$SignOutFailureCopyWith<$Res> implements $EmailVerificationStateCopyWith<$Res> {
  factory _$SignOutFailureCopyWith(_SignOutFailure value, $Res Function(_SignOutFailure) _then) = __$SignOutFailureCopyWithImpl;
@useResult
$Res call({
 String errMSg
});




}
/// @nodoc
class __$SignOutFailureCopyWithImpl<$Res>
    implements _$SignOutFailureCopyWith<$Res> {
  __$SignOutFailureCopyWithImpl(this._self, this._then);

  final _SignOutFailure _self;
  final $Res Function(_SignOutFailure) _then;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errMSg = null,}) {
  return _then(_SignOutFailure(
errMSg: null == errMSg ? _self.errMSg : errMSg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
