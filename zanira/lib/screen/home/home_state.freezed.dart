// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  User get user => throw _privateConstructorUsedError;
  List<Pendistribusian> get pendistribusianPlanList =>
      throw _privateConstructorUsedError;
  List<Announcement> get announcementList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {User user,
      List<Pendistribusian> pendistribusianPlanList,
      List<Announcement> announcementList});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? pendistribusianPlanList = null,
    Object? announcementList = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      pendistribusianPlanList: null == pendistribusianPlanList
          ? _value.pendistribusianPlanList
          : pendistribusianPlanList // ignore: cast_nullable_to_non_nullable
              as List<Pendistribusian>,
      announcementList: null == announcementList
          ? _value.announcementList
          : announcementList // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      List<Pendistribusian> pendistribusianPlanList,
      List<Announcement> announcementList});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? pendistribusianPlanList = null,
    Object? announcementList = null,
  }) {
    return _then(_$_HomeState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      pendistribusianPlanList: null == pendistribusianPlanList
          ? _value._pendistribusianPlanList
          : pendistribusianPlanList // ignore: cast_nullable_to_non_nullable
              as List<Pendistribusian>,
      announcementList: null == announcementList
          ? _value._announcementList
          : announcementList // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.user = const User(0, '', '', '', '', '', 0, ''),
      final List<Pendistribusian> pendistribusianPlanList = const [],
      final List<Announcement> announcementList = const []})
      : _pendistribusianPlanList = pendistribusianPlanList,
        _announcementList = announcementList;

  factory _$_HomeState.fromJson(Map<String, dynamic> json) =>
      _$$_HomeStateFromJson(json);

  @override
  @JsonKey()
  final User user;
  final List<Pendistribusian> _pendistribusianPlanList;
  @override
  @JsonKey()
  List<Pendistribusian> get pendistribusianPlanList {
    if (_pendistribusianPlanList is EqualUnmodifiableListView)
      return _pendistribusianPlanList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendistribusianPlanList);
  }

  final List<Announcement> _announcementList;
  @override
  @JsonKey()
  List<Announcement> get announcementList {
    if (_announcementList is EqualUnmodifiableListView)
      return _announcementList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_announcementList);
  }

  @override
  String toString() {
    return 'HomeState(user: $user, pendistribusianPlanList: $pendistribusianPlanList, announcementList: $announcementList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(
                other._pendistribusianPlanList, _pendistribusianPlanList) &&
            const DeepCollectionEquality()
                .equals(other._announcementList, _announcementList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_pendistribusianPlanList),
      const DeepCollectionEquality().hash(_announcementList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeStateToJson(
      this,
    );
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final User user,
      final List<Pendistribusian> pendistribusianPlanList,
      final List<Announcement> announcementList}) = _$_HomeState;

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$_HomeState.fromJson;

  @override
  User get user;
  @override
  List<Pendistribusian> get pendistribusianPlanList;
  @override
  List<Announcement> get announcementList;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
