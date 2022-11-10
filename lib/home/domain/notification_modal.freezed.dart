// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModal _$NotificationModalFromJson(Map<String, dynamic> json) {
  return _NotificationModal.fromJson(json);
}

/// @nodoc
mixin _$NotificationModal {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get stateId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModalCopyWith<NotificationModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModalCopyWith<$Res> {
  factory $NotificationModalCopyWith(
          NotificationModal value, $Res Function(NotificationModal) then) =
      _$NotificationModalCopyWithImpl<$Res, NotificationModal>;
  @useResult
  $Res call({String? id, String? name, String? stateId});
}

/// @nodoc
class _$NotificationModalCopyWithImpl<$Res, $Val extends NotificationModal>
    implements $NotificationModalCopyWith<$Res> {
  _$NotificationModalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? stateId = freezed,
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
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationModalCopyWith<$Res>
    implements $NotificationModalCopyWith<$Res> {
  factory _$$_NotificationModalCopyWith(_$_NotificationModal value,
          $Res Function(_$_NotificationModal) then) =
      __$$_NotificationModalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? stateId});
}

/// @nodoc
class __$$_NotificationModalCopyWithImpl<$Res>
    extends _$NotificationModalCopyWithImpl<$Res, _$_NotificationModal>
    implements _$$_NotificationModalCopyWith<$Res> {
  __$$_NotificationModalCopyWithImpl(
      _$_NotificationModal _value, $Res Function(_$_NotificationModal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? stateId = freezed,
  }) {
    return _then(_$_NotificationModal(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stateId: freezed == stateId
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationModal implements _NotificationModal {
  const _$_NotificationModal({this.id, this.name, this.stateId});

  factory _$_NotificationModal.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationModalFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? stateId;

  @override
  String toString() {
    return 'NotificationModal(id: $id, name: $name, stateId: $stateId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationModal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stateId, stateId) || other.stateId == stateId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, stateId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationModalCopyWith<_$_NotificationModal> get copyWith =>
      __$$_NotificationModalCopyWithImpl<_$_NotificationModal>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationModalToJson(
      this,
    );
  }
}

abstract class _NotificationModal implements NotificationModal {
  const factory _NotificationModal(
      {final String? id,
      final String? name,
      final String? stateId}) = _$_NotificationModal;

  factory _NotificationModal.fromJson(Map<String, dynamic> json) =
      _$_NotificationModal.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get stateId;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationModalCopyWith<_$_NotificationModal> get copyWith =>
      throw _privateConstructorUsedError;
}
