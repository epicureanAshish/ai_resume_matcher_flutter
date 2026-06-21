// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardState {

 bool get isLoading; String get userName; int get totalAnalyses; double get avgScore; int get resumesCount; int get jobsCount; int get selectedTab;
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStateCopyWith<DashboardState> get copyWith => _$DashboardStateCopyWithImpl<DashboardState>(this as DashboardState, _$identity);

  /// Serializes this DashboardState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.totalAnalyses, totalAnalyses) || other.totalAnalyses == totalAnalyses)&&(identical(other.avgScore, avgScore) || other.avgScore == avgScore)&&(identical(other.resumesCount, resumesCount) || other.resumesCount == resumesCount)&&(identical(other.jobsCount, jobsCount) || other.jobsCount == jobsCount)&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading,userName,totalAnalyses,avgScore,resumesCount,jobsCount,selectedTab);

@override
String toString() {
  return 'DashboardState(isLoading: $isLoading, userName: $userName, totalAnalyses: $totalAnalyses, avgScore: $avgScore, resumesCount: $resumesCount, jobsCount: $jobsCount, selectedTab: $selectedTab)';
}


}

/// @nodoc
abstract mixin class $DashboardStateCopyWith<$Res>  {
  factory $DashboardStateCopyWith(DashboardState value, $Res Function(DashboardState) _then) = _$DashboardStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String userName, int totalAnalyses, double avgScore, int resumesCount, int jobsCount, int selectedTab
});




}
/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._self, this._then);

  final DashboardState _self;
  final $Res Function(DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? userName = null,Object? totalAnalyses = null,Object? avgScore = null,Object? resumesCount = null,Object? jobsCount = null,Object? selectedTab = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,totalAnalyses: null == totalAnalyses ? _self.totalAnalyses : totalAnalyses // ignore: cast_nullable_to_non_nullable
as int,avgScore: null == avgScore ? _self.avgScore : avgScore // ignore: cast_nullable_to_non_nullable
as double,resumesCount: null == resumesCount ? _self.resumesCount : resumesCount // ignore: cast_nullable_to_non_nullable
as int,jobsCount: null == jobsCount ? _self.jobsCount : jobsCount // ignore: cast_nullable_to_non_nullable
as int,selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardState].
extension DashboardStatePatterns on DashboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardState value)  $default,){
final _that = this;
switch (_that) {
case _DashboardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardState value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String userName,  int totalAnalyses,  double avgScore,  int resumesCount,  int jobsCount,  int selectedTab)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
return $default(_that.isLoading,_that.userName,_that.totalAnalyses,_that.avgScore,_that.resumesCount,_that.jobsCount,_that.selectedTab);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String userName,  int totalAnalyses,  double avgScore,  int resumesCount,  int jobsCount,  int selectedTab)  $default,) {final _that = this;
switch (_that) {
case _DashboardState():
return $default(_that.isLoading,_that.userName,_that.totalAnalyses,_that.avgScore,_that.resumesCount,_that.jobsCount,_that.selectedTab);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String userName,  int totalAnalyses,  double avgScore,  int resumesCount,  int jobsCount,  int selectedTab)?  $default,) {final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
return $default(_that.isLoading,_that.userName,_that.totalAnalyses,_that.avgScore,_that.resumesCount,_that.jobsCount,_that.selectedTab);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardState implements DashboardState {
  const _DashboardState({this.isLoading = false, this.userName = '', this.totalAnalyses = 0, this.avgScore = 0.0, this.resumesCount = 0, this.jobsCount = 0, this.selectedTab = 0});
  factory _DashboardState.fromJson(Map<String, dynamic> json) => _$DashboardStateFromJson(json);

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String userName;
@override@JsonKey() final  int totalAnalyses;
@override@JsonKey() final  double avgScore;
@override@JsonKey() final  int resumesCount;
@override@JsonKey() final  int jobsCount;
@override@JsonKey() final  int selectedTab;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStateCopyWith<_DashboardState> get copyWith => __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.totalAnalyses, totalAnalyses) || other.totalAnalyses == totalAnalyses)&&(identical(other.avgScore, avgScore) || other.avgScore == avgScore)&&(identical(other.resumesCount, resumesCount) || other.resumesCount == resumesCount)&&(identical(other.jobsCount, jobsCount) || other.jobsCount == jobsCount)&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoading,userName,totalAnalyses,avgScore,resumesCount,jobsCount,selectedTab);

@override
String toString() {
  return 'DashboardState(isLoading: $isLoading, userName: $userName, totalAnalyses: $totalAnalyses, avgScore: $avgScore, resumesCount: $resumesCount, jobsCount: $jobsCount, selectedTab: $selectedTab)';
}


}

/// @nodoc
abstract mixin class _$DashboardStateCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(_DashboardState value, $Res Function(_DashboardState) _then) = __$DashboardStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String userName, int totalAnalyses, double avgScore, int resumesCount, int jobsCount, int selectedTab
});




}
/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(this._self, this._then);

  final _DashboardState _self;
  final $Res Function(_DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? userName = null,Object? totalAnalyses = null,Object? avgScore = null,Object? resumesCount = null,Object? jobsCount = null,Object? selectedTab = null,}) {
  return _then(_DashboardState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,totalAnalyses: null == totalAnalyses ? _self.totalAnalyses : totalAnalyses // ignore: cast_nullable_to_non_nullable
as int,avgScore: null == avgScore ? _self.avgScore : avgScore // ignore: cast_nullable_to_non_nullable
as double,resumesCount: null == resumesCount ? _self.resumesCount : resumesCount // ignore: cast_nullable_to_non_nullable
as int,jobsCount: null == jobsCount ? _self.jobsCount : jobsCount // ignore: cast_nullable_to_non_nullable
as int,selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
