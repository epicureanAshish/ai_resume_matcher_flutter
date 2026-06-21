// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardModel {

@JsonKey(name: 'analyses') int get analyses;@JsonKey(name: 'avg_score') double get avgScore;@JsonKey(name: 'resumes') int get resumes;@JsonKey(name: 'jobs') int get jobs;
/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardModelCopyWith<DashboardModel> get copyWith => _$DashboardModelCopyWithImpl<DashboardModel>(this as DashboardModel, _$identity);

  /// Serializes this DashboardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardModel&&(identical(other.analyses, analyses) || other.analyses == analyses)&&(identical(other.avgScore, avgScore) || other.avgScore == avgScore)&&(identical(other.resumes, resumes) || other.resumes == resumes)&&(identical(other.jobs, jobs) || other.jobs == jobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,analyses,avgScore,resumes,jobs);

@override
String toString() {
  return 'DashboardModel(analyses: $analyses, avgScore: $avgScore, resumes: $resumes, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class $DashboardModelCopyWith<$Res>  {
  factory $DashboardModelCopyWith(DashboardModel value, $Res Function(DashboardModel) _then) = _$DashboardModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'analyses') int analyses,@JsonKey(name: 'avg_score') double avgScore,@JsonKey(name: 'resumes') int resumes,@JsonKey(name: 'jobs') int jobs
});




}
/// @nodoc
class _$DashboardModelCopyWithImpl<$Res>
    implements $DashboardModelCopyWith<$Res> {
  _$DashboardModelCopyWithImpl(this._self, this._then);

  final DashboardModel _self;
  final $Res Function(DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? analyses = null,Object? avgScore = null,Object? resumes = null,Object? jobs = null,}) {
  return _then(_self.copyWith(
analyses: null == analyses ? _self.analyses : analyses // ignore: cast_nullable_to_non_nullable
as int,avgScore: null == avgScore ? _self.avgScore : avgScore // ignore: cast_nullable_to_non_nullable
as double,resumes: null == resumes ? _self.resumes : resumes // ignore: cast_nullable_to_non_nullable
as int,jobs: null == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardModel].
extension DashboardModelPatterns on DashboardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'analyses')  int analyses, @JsonKey(name: 'avg_score')  double avgScore, @JsonKey(name: 'resumes')  int resumes, @JsonKey(name: 'jobs')  int jobs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.analyses,_that.avgScore,_that.resumes,_that.jobs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'analyses')  int analyses, @JsonKey(name: 'avg_score')  double avgScore, @JsonKey(name: 'resumes')  int resumes, @JsonKey(name: 'jobs')  int jobs)  $default,) {final _that = this;
switch (_that) {
case _DashboardModel():
return $default(_that.analyses,_that.avgScore,_that.resumes,_that.jobs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'analyses')  int analyses, @JsonKey(name: 'avg_score')  double avgScore, @JsonKey(name: 'resumes')  int resumes, @JsonKey(name: 'jobs')  int jobs)?  $default,) {final _that = this;
switch (_that) {
case _DashboardModel() when $default != null:
return $default(_that.analyses,_that.avgScore,_that.resumes,_that.jobs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardModel implements DashboardModel {
  const _DashboardModel({@JsonKey(name: 'analyses') required this.analyses, @JsonKey(name: 'avg_score') required this.avgScore, @JsonKey(name: 'resumes') required this.resumes, @JsonKey(name: 'jobs') required this.jobs});
  factory _DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);

@override@JsonKey(name: 'analyses') final  int analyses;
@override@JsonKey(name: 'avg_score') final  double avgScore;
@override@JsonKey(name: 'resumes') final  int resumes;
@override@JsonKey(name: 'jobs') final  int jobs;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardModelCopyWith<_DashboardModel> get copyWith => __$DashboardModelCopyWithImpl<_DashboardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardModel&&(identical(other.analyses, analyses) || other.analyses == analyses)&&(identical(other.avgScore, avgScore) || other.avgScore == avgScore)&&(identical(other.resumes, resumes) || other.resumes == resumes)&&(identical(other.jobs, jobs) || other.jobs == jobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,analyses,avgScore,resumes,jobs);

@override
String toString() {
  return 'DashboardModel(analyses: $analyses, avgScore: $avgScore, resumes: $resumes, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class _$DashboardModelCopyWith<$Res> implements $DashboardModelCopyWith<$Res> {
  factory _$DashboardModelCopyWith(_DashboardModel value, $Res Function(_DashboardModel) _then) = __$DashboardModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'analyses') int analyses,@JsonKey(name: 'avg_score') double avgScore,@JsonKey(name: 'resumes') int resumes,@JsonKey(name: 'jobs') int jobs
});




}
/// @nodoc
class __$DashboardModelCopyWithImpl<$Res>
    implements _$DashboardModelCopyWith<$Res> {
  __$DashboardModelCopyWithImpl(this._self, this._then);

  final _DashboardModel _self;
  final $Res Function(_DashboardModel) _then;

/// Create a copy of DashboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? analyses = null,Object? avgScore = null,Object? resumes = null,Object? jobs = null,}) {
  return _then(_DashboardModel(
analyses: null == analyses ? _self.analyses : analyses // ignore: cast_nullable_to_non_nullable
as int,avgScore: null == avgScore ? _self.avgScore : avgScore // ignore: cast_nullable_to_non_nullable
as double,resumes: null == resumes ? _self.resumes : resumes // ignore: cast_nullable_to_non_nullable
as int,jobs: null == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
