// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'accommodation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AccommodationTearOff {
  const _$AccommodationTearOff();

// ignore: unused_element
  _Accommodation call(
      {@required String id,
      @required String name,
      @required String description,
      @required String bookingUrl}) {
    return _Accommodation(
      id: id,
      name: name,
      description: description,
      bookingUrl: bookingUrl,
    );
  }
}

// ignore: unused_element
const $Accommodation = _$AccommodationTearOff();

mixin _$Accommodation {
  String get id;
  String get name;
  String get description;
  String get bookingUrl;

  $AccommodationCopyWith<Accommodation> get copyWith;
}

abstract class $AccommodationCopyWith<$Res> {
  factory $AccommodationCopyWith(
          Accommodation value, $Res Function(Accommodation) then) =
      _$AccommodationCopyWithImpl<$Res>;
  $Res call({String id, String name, String description, String bookingUrl});
}

class _$AccommodationCopyWithImpl<$Res>
    implements $AccommodationCopyWith<$Res> {
  _$AccommodationCopyWithImpl(this._value, this._then);

  final Accommodation _value;
  // ignore: unused_field
  final $Res Function(Accommodation) _then;

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

abstract class _$AccommodationCopyWith<$Res>
    implements $AccommodationCopyWith<$Res> {
  factory _$AccommodationCopyWith(
          _Accommodation value, $Res Function(_Accommodation) then) =
      __$AccommodationCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String description, String bookingUrl});
}

class __$AccommodationCopyWithImpl<$Res>
    extends _$AccommodationCopyWithImpl<$Res>
    implements _$AccommodationCopyWith<$Res> {
  __$AccommodationCopyWithImpl(
      _Accommodation _value, $Res Function(_Accommodation) _then)
      : super(_value, (v) => _then(v as _Accommodation));

  @override
  _Accommodation get _value => super._value as _Accommodation;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object bookingUrl = freezed,
  }) {
    return _then(_Accommodation(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      bookingUrl:
          bookingUrl == freezed ? _value.bookingUrl : bookingUrl as String,
    ));
  }
}

class _$_Accommodation implements _Accommodation {
  const _$_Accommodation(
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
    return 'Accommodation(id: $id, name: $name, description: $description, bookingUrl: $bookingUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Accommodation &&
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
  _$AccommodationCopyWith<_Accommodation> get copyWith =>
      __$AccommodationCopyWithImpl<_Accommodation>(this, _$identity);
}

abstract class _Accommodation implements Accommodation {
  const factory _Accommodation(
      {@required String id,
      @required String name,
      @required String description,
      @required String bookingUrl}) = _$_Accommodation;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get bookingUrl;
  @override
  _$AccommodationCopyWith<_Accommodation> get copyWith;
}
