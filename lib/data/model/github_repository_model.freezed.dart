// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubRepositoryModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubRepositoryModelCopyWith<GithubRepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepositoryModelCopyWith<$Res> {
  factory $GithubRepositoryModelCopyWith(GithubRepositoryModel value,
          $Res Function(GithubRepositoryModel) then) =
      _$GithubRepositoryModelCopyWithImpl<$Res, GithubRepositoryModel>;
  @useResult
  $Res call({int id, String name, String owner, String avatarUrl});
}

/// @nodoc
class _$GithubRepositoryModelCopyWithImpl<$Res,
        $Val extends GithubRepositoryModel>
    implements $GithubRepositoryModelCopyWith<$Res> {
  _$GithubRepositoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? owner = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GithubRepositoryModelCopyWith<$Res>
    implements $GithubRepositoryModelCopyWith<$Res> {
  factory _$$_GithubRepositoryModelCopyWith(_$_GithubRepositoryModel value,
          $Res Function(_$_GithubRepositoryModel) then) =
      __$$_GithubRepositoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String owner, String avatarUrl});
}

/// @nodoc
class __$$_GithubRepositoryModelCopyWithImpl<$Res>
    extends _$GithubRepositoryModelCopyWithImpl<$Res, _$_GithubRepositoryModel>
    implements _$$_GithubRepositoryModelCopyWith<$Res> {
  __$$_GithubRepositoryModelCopyWithImpl(_$_GithubRepositoryModel _value,
      $Res Function(_$_GithubRepositoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? owner = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$_GithubRepositoryModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GithubRepositoryModel implements _GithubRepositoryModel {
  const _$_GithubRepositoryModel(
      {required this.id,
      required this.name,
      required this.owner,
      required this.avatarUrl});

  @override
  final int id;
  @override
  final String name;
  @override
  final String owner;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'GithubRepositoryModel(id: $id, name: $name, owner: $owner, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubRepositoryModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, owner, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubRepositoryModelCopyWith<_$_GithubRepositoryModel> get copyWith =>
      __$$_GithubRepositoryModelCopyWithImpl<_$_GithubRepositoryModel>(
          this, _$identity);
}

abstract class _GithubRepositoryModel implements GithubRepositoryModel {
  const factory _GithubRepositoryModel(
      {required final int id,
      required final String name,
      required final String owner,
      required final String avatarUrl}) = _$_GithubRepositoryModel;

  @override
  int get id;
  @override
  String get name;
  @override
  String get owner;
  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$_GithubRepositoryModelCopyWith<_$_GithubRepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
