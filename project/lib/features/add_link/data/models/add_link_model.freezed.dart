// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_link_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddLinkModel {

 int get id;
/// Create a copy of AddLinkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddLinkModelCopyWith<AddLinkModel> get copyWith => _$AddLinkModelCopyWithImpl<AddLinkModel>(this as AddLinkModel, _$identity);

  /// Serializes this AddLinkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddLinkModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AddLinkModel(id: $id)';
}


}

/// @nodoc
abstract mixin class $AddLinkModelCopyWith<$Res>  {
  factory $AddLinkModelCopyWith(AddLinkModel value, $Res Function(AddLinkModel) _then) = _$AddLinkModelCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$AddLinkModelCopyWithImpl<$Res>
    implements $AddLinkModelCopyWith<$Res> {
  _$AddLinkModelCopyWithImpl(this._self, this._then);

  final AddLinkModel _self;
  final $Res Function(AddLinkModel) _then;

/// Create a copy of AddLinkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AddLinkModel].
extension AddLinkModelPatterns on AddLinkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddLinkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddLinkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddLinkModel value)  $default,){
final _that = this;
switch (_that) {
case _AddLinkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddLinkModel value)?  $default,){
final _that = this;
switch (_that) {
case _AddLinkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddLinkModel() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id)  $default,) {final _that = this;
switch (_that) {
case _AddLinkModel():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id)?  $default,) {final _that = this;
switch (_that) {
case _AddLinkModel() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddLinkModel implements AddLinkModel {
  const _AddLinkModel({required this.id});
  factory _AddLinkModel.fromJson(Map<String, dynamic> json) => _$AddLinkModelFromJson(json);

@override final  int id;

/// Create a copy of AddLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddLinkModelCopyWith<_AddLinkModel> get copyWith => __$AddLinkModelCopyWithImpl<_AddLinkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddLinkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddLinkModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'AddLinkModel(id: $id)';
}


}

/// @nodoc
abstract mixin class _$AddLinkModelCopyWith<$Res> implements $AddLinkModelCopyWith<$Res> {
  factory _$AddLinkModelCopyWith(_AddLinkModel value, $Res Function(_AddLinkModel) _then) = __$AddLinkModelCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$AddLinkModelCopyWithImpl<$Res>
    implements _$AddLinkModelCopyWith<$Res> {
  __$AddLinkModelCopyWithImpl(this._self, this._then);

  final _AddLinkModel _self;
  final $Res Function(_AddLinkModel) _then;

/// Create a copy of AddLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_AddLinkModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
