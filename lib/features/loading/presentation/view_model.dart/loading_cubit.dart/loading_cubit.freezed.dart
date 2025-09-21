// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadingState()';
}


}

/// @nodoc
class $LoadingStateCopyWith<$Res>  {
$LoadingStateCopyWith(LoadingState _, $Res Function(LoadingState) __);
}


/// Adds pattern-matching-related methods to [LoadingState].
extension LoadingStatePatterns on LoadingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _OnboardingStarted value)?  onboardingStarted,TResult Function( _UserNotAuthenticated value)?  userNotAuthenticated,TResult Function( _UserAuthenticatedButNotVerified value)?  userAuthenticatedButNotVerified,TResult Function( _UserAuthenticatedAndVerified value)?  userAuthenticatedAndVerified,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _OnboardingStarted() when onboardingStarted != null:
return onboardingStarted(_that);case _UserNotAuthenticated() when userNotAuthenticated != null:
return userNotAuthenticated(_that);case _UserAuthenticatedButNotVerified() when userAuthenticatedButNotVerified != null:
return userAuthenticatedButNotVerified(_that);case _UserAuthenticatedAndVerified() when userAuthenticatedAndVerified != null:
return userAuthenticatedAndVerified(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _OnboardingStarted value)  onboardingStarted,required TResult Function( _UserNotAuthenticated value)  userNotAuthenticated,required TResult Function( _UserAuthenticatedButNotVerified value)  userAuthenticatedButNotVerified,required TResult Function( _UserAuthenticatedAndVerified value)  userAuthenticatedAndVerified,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _OnboardingStarted():
return onboardingStarted(_that);case _UserNotAuthenticated():
return userNotAuthenticated(_that);case _UserAuthenticatedButNotVerified():
return userAuthenticatedButNotVerified(_that);case _UserAuthenticatedAndVerified():
return userAuthenticatedAndVerified(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _OnboardingStarted value)?  onboardingStarted,TResult? Function( _UserNotAuthenticated value)?  userNotAuthenticated,TResult? Function( _UserAuthenticatedButNotVerified value)?  userAuthenticatedButNotVerified,TResult? Function( _UserAuthenticatedAndVerified value)?  userAuthenticatedAndVerified,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _OnboardingStarted() when onboardingStarted != null:
return onboardingStarted(_that);case _UserNotAuthenticated() when userNotAuthenticated != null:
return userNotAuthenticated(_that);case _UserAuthenticatedButNotVerified() when userAuthenticatedButNotVerified != null:
return userAuthenticatedButNotVerified(_that);case _UserAuthenticatedAndVerified() when userAuthenticatedAndVerified != null:
return userAuthenticatedAndVerified(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  onboardingStarted,TResult Function( String message)?  userNotAuthenticated,TResult Function( String currentEmail)?  userAuthenticatedButNotVerified,TResult Function()?  userAuthenticatedAndVerified,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _OnboardingStarted() when onboardingStarted != null:
return onboardingStarted();case _UserNotAuthenticated() when userNotAuthenticated != null:
return userNotAuthenticated(_that.message);case _UserAuthenticatedButNotVerified() when userAuthenticatedButNotVerified != null:
return userAuthenticatedButNotVerified(_that.currentEmail);case _UserAuthenticatedAndVerified() when userAuthenticatedAndVerified != null:
return userAuthenticatedAndVerified();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  onboardingStarted,required TResult Function( String message)  userNotAuthenticated,required TResult Function( String currentEmail)  userAuthenticatedButNotVerified,required TResult Function()  userAuthenticatedAndVerified,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _OnboardingStarted():
return onboardingStarted();case _UserNotAuthenticated():
return userNotAuthenticated(_that.message);case _UserAuthenticatedButNotVerified():
return userAuthenticatedButNotVerified(_that.currentEmail);case _UserAuthenticatedAndVerified():
return userAuthenticatedAndVerified();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  onboardingStarted,TResult? Function( String message)?  userNotAuthenticated,TResult? Function( String currentEmail)?  userAuthenticatedButNotVerified,TResult? Function()?  userAuthenticatedAndVerified,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _OnboardingStarted() when onboardingStarted != null:
return onboardingStarted();case _UserNotAuthenticated() when userNotAuthenticated != null:
return userNotAuthenticated(_that.message);case _UserAuthenticatedButNotVerified() when userAuthenticatedButNotVerified != null:
return userAuthenticatedButNotVerified(_that.currentEmail);case _UserAuthenticatedAndVerified() when userAuthenticatedAndVerified != null:
return userAuthenticatedAndVerified();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements LoadingState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadingState.initial()';
}


}




/// @nodoc


class _OnboardingStarted implements LoadingState {
  const _OnboardingStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadingState.onboardingStarted()';
}


}




/// @nodoc


class _UserNotAuthenticated implements LoadingState {
  const _UserNotAuthenticated({required this.message});
  

 final  String message;

/// Create a copy of LoadingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserNotAuthenticatedCopyWith<_UserNotAuthenticated> get copyWith => __$UserNotAuthenticatedCopyWithImpl<_UserNotAuthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserNotAuthenticated&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoadingState.userNotAuthenticated(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UserNotAuthenticatedCopyWith<$Res> implements $LoadingStateCopyWith<$Res> {
  factory _$UserNotAuthenticatedCopyWith(_UserNotAuthenticated value, $Res Function(_UserNotAuthenticated) _then) = __$UserNotAuthenticatedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$UserNotAuthenticatedCopyWithImpl<$Res>
    implements _$UserNotAuthenticatedCopyWith<$Res> {
  __$UserNotAuthenticatedCopyWithImpl(this._self, this._then);

  final _UserNotAuthenticated _self;
  final $Res Function(_UserNotAuthenticated) _then;

/// Create a copy of LoadingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_UserNotAuthenticated(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UserAuthenticatedButNotVerified implements LoadingState {
  const _UserAuthenticatedButNotVerified({required this.currentEmail});
  

 final  String currentEmail;

/// Create a copy of LoadingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAuthenticatedButNotVerifiedCopyWith<_UserAuthenticatedButNotVerified> get copyWith => __$UserAuthenticatedButNotVerifiedCopyWithImpl<_UserAuthenticatedButNotVerified>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAuthenticatedButNotVerified&&(identical(other.currentEmail, currentEmail) || other.currentEmail == currentEmail));
}


@override
int get hashCode => Object.hash(runtimeType,currentEmail);

@override
String toString() {
  return 'LoadingState.userAuthenticatedButNotVerified(currentEmail: $currentEmail)';
}


}

/// @nodoc
abstract mixin class _$UserAuthenticatedButNotVerifiedCopyWith<$Res> implements $LoadingStateCopyWith<$Res> {
  factory _$UserAuthenticatedButNotVerifiedCopyWith(_UserAuthenticatedButNotVerified value, $Res Function(_UserAuthenticatedButNotVerified) _then) = __$UserAuthenticatedButNotVerifiedCopyWithImpl;
@useResult
$Res call({
 String currentEmail
});




}
/// @nodoc
class __$UserAuthenticatedButNotVerifiedCopyWithImpl<$Res>
    implements _$UserAuthenticatedButNotVerifiedCopyWith<$Res> {
  __$UserAuthenticatedButNotVerifiedCopyWithImpl(this._self, this._then);

  final _UserAuthenticatedButNotVerified _self;
  final $Res Function(_UserAuthenticatedButNotVerified) _then;

/// Create a copy of LoadingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentEmail = null,}) {
  return _then(_UserAuthenticatedButNotVerified(
currentEmail: null == currentEmail ? _self.currentEmail : currentEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UserAuthenticatedAndVerified implements LoadingState {
  const _UserAuthenticatedAndVerified();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAuthenticatedAndVerified);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoadingState.userAuthenticatedAndVerified()';
}


}




// dart format on
