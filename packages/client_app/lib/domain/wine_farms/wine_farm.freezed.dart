// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wine_farm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WineFarmTearOff {
  const _$WineFarmTearOff();

// ignore: unused_element
  _WineFarm call(
      {@required String id,
      @required String name,
      @required String description,
      @required String bookingUrl}) {
    return _WineFarm(
      id: id,
      name: name,
      description: description,
      bookingUrl: bookingUrl,
    );
  }
}

// ignore: unused_element
const $WineFarm = _$WineFarmTearOff();

mixin _$WineFarm {
  String get id;
  String get name;
  String get description;
  String get bookingUrl;

  $WineFarmCopyWith<WineFarm> get copyWith;
}

abstract class $WineFarmCopyWith<$Res> {
  factory $WineFarmCopyWith(WineFarm value, $Res Function(WineFarm) then) =
      _$WineFarmCopyWithImpl<$Res>;
  $Res call({String id, String name, String description, String bookingUrl});
}

class _$WineFarmCopyWithImpl<$Res> implements $WineFarmCopyWith<$Res> {
  _$WineFarmCopyWithImpl(this._value, this._then);

  final WineFarm _value;
  // ignore: unused_field
  final $Res Function(WineFarm) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object bookingUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      bookingUrl:
          bookingUrl == freezed ? _value.bookingUrl : bookingUrl as String,
    ));
  }
}

abstract class _$WineFarmCopyWith<$Res> implements $WineFarmCopyWith<$Res> {
  factory _$WineFarmCopyWith(_WineFarm value, $Res Function(_WineFarm) then) =
      __$WineFarmCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String description, String bookingUrl});
}

class __$WineFarmCopyWithImpl<$Res> extends _$WineFarmCopyWithImpl<$Res>
    implements _$WineFarmCopyWith<$Res> {
  __$WineFarmCopyWithImpl(_WineFarm _value, $Res Function(_WineFarm) _then)
      : super(_value, (v) => _then(v as _WineFarm));

  @override
  _WineFarm get _value => super._value as _WineFarm;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object bookingUrl = freezed,
  }) {
    return _then(_WineFarm(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      bookingUrl:
          bookingUrl == freezed ? _value.bookingUrl : bookingUrl as String,
    ));
  }
}

class _$_WineFarm implements _WineFarm {
  const _$_WineFarm(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.bookingUrl})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(bookingUrl != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String bookingUrl;

  @override
  String toString() {
    return 'WineFarm(id: $id, name: $name, description: $description, bookingUrl: $bookingUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WineFarm &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.bookingUrl, bookingUrl) ||
                const DeepCollectionEquality()
                    .equals(other.bookingUrl, bookingUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(bookingUrl);

  @override
  _$WineFarmCopyWith<_WineFarm> get copyWith =>
      __$WineFarmCopyWithImpl<_WineFarm>(this, _$identity);
}

abstract class _WineFarm implements WineFarm {
  const factory _WineFarm(
      {@required String id,
      @required String name,
      @required String description,
      @required String bookingUrl}) = _$_WineFarm;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get bookingUrl;
  @override
  _$WineFarmCopyWith<_WineFarm> get copyWith;
}
