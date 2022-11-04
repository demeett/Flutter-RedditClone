// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePic')
  String? get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner')
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid')
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'isAuthenticated')
  bool? get isAuthenticated => throw _privateConstructorUsedError;
  @JsonKey(name: 'karma')
  int? get karma => throw _privateConstructorUsedError;
  @JsonKey(name: 'awards')
  List<String>? get awards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profilePic') String? profilePic,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'uid') String? uid,
      @JsonKey(name: 'isAuthenticated') bool? isAuthenticated,
      @JsonKey(name: 'karma') int? karma,
      @JsonKey(name: 'awards') List<String>? awards});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profilePic = freezed,
    Object? banner = freezed,
    Object? uid = freezed,
    Object? isAuthenticated = freezed,
    Object? karma = freezed,
    Object? awards = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      isAuthenticated: freezed == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
      karma: freezed == karma
          ? _value.karma
          : karma // ignore: cast_nullable_to_non_nullable
              as int?,
      awards: freezed == awards
          ? _value.awards
          : awards // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profilePic') String? profilePic,
      @JsonKey(name: 'banner') String? banner,
      @JsonKey(name: 'uid') String? uid,
      @JsonKey(name: 'isAuthenticated') bool? isAuthenticated,
      @JsonKey(name: 'karma') int? karma,
      @JsonKey(name: 'awards') List<String>? awards});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profilePic = freezed,
    Object? banner = freezed,
    Object? uid = freezed,
    Object? isAuthenticated = freezed,
    Object? karma = freezed,
    Object? awards = freezed,
  }) {
    return _then(_$_UserModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      isAuthenticated: freezed == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
      karma: freezed == karma
          ? _value.karma
          : karma // ignore: cast_nullable_to_non_nullable
              as int?,
      awards: freezed == awards
          ? _value._awards
          : awards // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel extends _UserModel with DiagnosticableTreeMixin {
  const _$_UserModel(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'profilePic') this.profilePic,
      @JsonKey(name: 'banner') this.banner,
      @JsonKey(name: 'uid') this.uid,
      @JsonKey(name: 'isAuthenticated') this.isAuthenticated,
      @JsonKey(name: 'karma') this.karma,
      @JsonKey(name: 'awards') final List<String>? awards})
      : _awards = awards,
        super._();

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'profilePic')
  final String? profilePic;
  @override
  @JsonKey(name: 'banner')
  final String? banner;
  @override
  @JsonKey(name: 'uid')
  final String? uid;
  @override
  @JsonKey(name: 'isAuthenticated')
  final bool? isAuthenticated;
  @override
  @JsonKey(name: 'karma')
  final int? karma;
  final List<String>? _awards;
  @override
  @JsonKey(name: 'awards')
  List<String>? get awards {
    final value = _awards;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModel(name: $name, profilePic: $profilePic, banner: $banner, uid: $uid, isAuthenticated: $isAuthenticated, karma: $karma, awards: $awards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('profilePic', profilePic))
      ..add(DiagnosticsProperty('banner', banner))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('isAuthenticated', isAuthenticated))
      ..add(DiagnosticsProperty('karma', karma))
      ..add(DiagnosticsProperty('awards', awards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.karma, karma) || other.karma == karma) &&
            const DeepCollectionEquality().equals(other._awards, _awards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, profilePic, banner, uid,
      isAuthenticated, karma, const DeepCollectionEquality().hash(_awards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'profilePic') final String? profilePic,
      @JsonKey(name: 'banner') final String? banner,
      @JsonKey(name: 'uid') final String? uid,
      @JsonKey(name: 'isAuthenticated') final bool? isAuthenticated,
      @JsonKey(name: 'karma') final int? karma,
      @JsonKey(name: 'awards') final List<String>? awards}) = _$_UserModel;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'profilePic')
  String? get profilePic;
  @override
  @JsonKey(name: 'banner')
  String? get banner;
  @override
  @JsonKey(name: 'uid')
  String? get uid;
  @override
  @JsonKey(name: 'isAuthenticated')
  bool? get isAuthenticated;
  @override
  @JsonKey(name: 'karma')
  int? get karma;
  @override
  @JsonKey(name: 'awards')
  List<String>? get awards;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
