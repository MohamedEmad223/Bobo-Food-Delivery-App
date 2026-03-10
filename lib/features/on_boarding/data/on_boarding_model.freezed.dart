// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_boarding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingModel {

 String get image; String get title; String get description;
/// Create a copy of OnboardingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingModelCopyWith<OnboardingModel> get copyWith => _$OnboardingModelCopyWithImpl<OnboardingModel>(this as OnboardingModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingModel&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,image,title,description);

@override
String toString() {
  return 'OnboardingModel(image: $image, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $OnboardingModelCopyWith<$Res>  {
  factory $OnboardingModelCopyWith(OnboardingModel value, $Res Function(OnboardingModel) _then) = _$OnboardingModelCopyWithImpl;
@useResult
$Res call({
 String image, String title, String description
});




}
/// @nodoc
class _$OnboardingModelCopyWithImpl<$Res>
    implements $OnboardingModelCopyWith<$Res> {
  _$OnboardingModelCopyWithImpl(this._self, this._then);

  final OnboardingModel _self;
  final $Res Function(OnboardingModel) _then;

/// Create a copy of OnboardingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = null,Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingModel].
extension OnboardingModelPatterns on OnboardingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingModel value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingModel value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String image,  String title,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingModel() when $default != null:
return $default(_that.image,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String image,  String title,  String description)  $default,) {final _that = this;
switch (_that) {
case _OnboardingModel():
return $default(_that.image,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String image,  String title,  String description)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingModel() when $default != null:
return $default(_that.image,_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _OnboardingModel implements OnboardingModel {
  const _OnboardingModel({required this.image, required this.title, required this.description});
  

@override final  String image;
@override final  String title;
@override final  String description;

/// Create a copy of OnboardingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingModelCopyWith<_OnboardingModel> get copyWith => __$OnboardingModelCopyWithImpl<_OnboardingModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingModel&&(identical(other.image, image) || other.image == image)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,image,title,description);

@override
String toString() {
  return 'OnboardingModel(image: $image, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$OnboardingModelCopyWith<$Res> implements $OnboardingModelCopyWith<$Res> {
  factory _$OnboardingModelCopyWith(_OnboardingModel value, $Res Function(_OnboardingModel) _then) = __$OnboardingModelCopyWithImpl;
@override @useResult
$Res call({
 String image, String title, String description
});




}
/// @nodoc
class __$OnboardingModelCopyWithImpl<$Res>
    implements _$OnboardingModelCopyWith<$Res> {
  __$OnboardingModelCopyWithImpl(this._self, this._then);

  final _OnboardingModel _self;
  final $Res Function(_OnboardingModel) _then;

/// Create a copy of OnboardingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = null,Object? title = null,Object? description = null,}) {
  return _then(_OnboardingModel(
image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
