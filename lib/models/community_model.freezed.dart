// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Community _$CommunityFromJson(Map<String, dynamic> json) {
  return _Community.fromJson(json);
}

/// @nodoc
mixin _$Community {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  List<String>? get members => throw _privateConstructorUsedError;
  List<String>? get mods => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityCopyWith<Community> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityCopyWith<$Res> {
  factory $CommunityCopyWith(Community value, $Res Function(Community) then) =
      _$CommunityCopyWithImpl<$Res, Community>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? banner,
      String? avatar,
      List<String>? members,
      List<String>? mods});
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res, $Val extends Community>
    implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? banner = freezed,
    Object? avatar = freezed,
    Object? members = freezed,
    Object? mods = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mods: freezed == mods
          ? _value.mods
          : mods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommunityCopyWith<$Res> implements $CommunityCopyWith<$Res> {
  factory _$$_CommunityCopyWith(
          _$_Community value, $Res Function(_$_Community) then) =
      __$$_CommunityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? banner,
      String? avatar,
      List<String>? members,
      List<String>? mods});
}

/// @nodoc
class __$$_CommunityCopyWithImpl<$Res>
    extends _$CommunityCopyWithImpl<$Res, _$_Community>
    implements _$$_CommunityCopyWith<$Res> {
  __$$_CommunityCopyWithImpl(
      _$_Community _value, $Res Function(_$_Community) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? banner = freezed,
    Object? avatar = freezed,
    Object? members = freezed,
    Object? mods = freezed,
  }) {
    return _then(_$_Community(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mods: freezed == mods
          ? _value._mods
          : mods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Community extends _Community {
  const _$_Community(
      {required this.id,
      required this.name,
      required this.banner,
      required this.avatar,
      required final List<String>? members,
      required final List<String>? mods})
      : _members = members,
        _mods = mods,
        super._();

  factory _$_Community.fromJson(Map<String, dynamic> json) =>
      _$$_CommunityFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? banner;
  @override
  final String? avatar;
  final List<String>? _members;
  @override
  List<String>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _mods;
  @override
  List<String>? get mods {
    final value = _mods;
    if (value == null) return null;
    if (_mods is EqualUnmodifiableListView) return _mods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Community(id: $id, name: $name, banner: $banner, avatar: $avatar, members: $members, mods: $mods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Community &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other._mods, _mods));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      banner,
      avatar,
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(_mods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommunityCopyWith<_$_Community> get copyWith =>
      __$$_CommunityCopyWithImpl<_$_Community>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunityToJson(
      this,
    );
  }
}

abstract class _Community extends Community {
  const factory _Community(
      {required final String? id,
      required final String? name,
      required final String? banner,
      required final String? avatar,
      required final List<String>? members,
      required final List<String>? mods}) = _$_Community;
  const _Community._() : super._();

  factory _Community.fromJson(Map<String, dynamic> json) =
      _$_Community.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get banner;
  @override
  String? get avatar;
  @override
  List<String>? get members;
  @override
  List<String>? get mods;
  @override
  @JsonKey(ignore: true)
  _$$_CommunityCopyWith<_$_Community> get copyWith =>
      throw _privateConstructorUsedError;
}
