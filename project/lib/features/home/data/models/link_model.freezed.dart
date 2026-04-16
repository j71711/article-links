// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LinkModel {

 int get id; String get title; String get url;
/// Create a copy of LinkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinkModelCopyWith<LinkModel> get copyWith => _$LinkModelCopyWithImpl<LinkModel>(this as LinkModel, _$identity);

  /// Serializes this LinkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LinkModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,url);

@override
String toString() {
  return 'LinkModel(id: $id, title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class $LinkModelCopyWith<$Res>  {
  factory $LinkModelCopyWith(LinkModel value, $Res Function(LinkModel) _then) = _$LinkModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String url
});




}
/// @nodoc
class _$LinkModelCopyWithImpl<$Res>
    implements $LinkModelCopyWith<$Res> {
  _$LinkModelCopyWithImpl(this._self, this._then);

  final LinkModel _self;
  final $Res Function(LinkModel) _then;

/// Create a copy of LinkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? url = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LinkModel].
extension LinkModelPatterns on LinkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LinkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LinkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LinkModel value)  $default,){
final _that = this;
switch (_that) {
case _LinkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LinkModel value)?  $default,){
final _that = this;
switch (_that) {
case _LinkModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LinkModel() when $default != null:
return $default(_that.id,_that.title,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String url)  $default,) {final _that = this;
switch (_that) {
case _LinkModel():
return $default(_that.id,_that.title,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String url)?  $default,) {final _that = this;
switch (_that) {
case _LinkModel() when $default != null:
return $default(_that.id,_that.title,_that.url);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: .snake)
class _LinkModel implements LinkModel {
  const _LinkModel({required this.id, required this.title, required this.url});
  factory _LinkModel.fromJson(Map<String, dynamic> json) => _$LinkModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  String url;

/// Create a copy of LinkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinkModelCopyWith<_LinkModel> get copyWith => __$LinkModelCopyWithImpl<_LinkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LinkModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,url);

@override
String toString() {
  return 'LinkModel(id: $id, title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class _$LinkModelCopyWith<$Res> implements $LinkModelCopyWith<$Res> {
  factory _$LinkModelCopyWith(_LinkModel value, $Res Function(_LinkModel) _then) = __$LinkModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String url
});




}
/// @nodoc
class __$LinkModelCopyWithImpl<$Res>
    implements _$LinkModelCopyWith<$Res> {
  __$LinkModelCopyWithImpl(this._self, this._then);

  final _LinkModel _self;
  final $Res Function(_LinkModel) _then;

/// Create a copy of LinkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? url = null,}) {
  return _then(_LinkModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
