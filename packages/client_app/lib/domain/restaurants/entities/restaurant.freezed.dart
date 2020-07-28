// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RestaurantTearOff {
  const _$RestaurantTearOff();

// ignore: unused_element
  _Restaurant call(
      {@required String id,
      @required String name,
      @required String description,
      @required String bookingUrl}) {
    return _Restaurant(
      id: id,
      name: name,
      description: description,
      bookingUrl: bookingUrl,
    );
  }
}

// ignore: unused_element
const $Restaurant = _$RestaurantTearOff();

mixin _$Restaurant {
  String get id;
  String get name;
  String get description;
  String get bookingUrl;

  $RestaurantCopyWith<Restaurant> get copyWith;
}

abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res>;
  $Res call({String id, String name, String description, String bookingUrl});
}

class _$RestaurantCopyWithImpl<$Res> implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  final Restaurant _value;
  // ignore: unused_field
  final $Res Function(Restaurant) _then;

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

abstract class _$RestaurantCopyWith<$Res> implements $RestaurantCopyWith<$Res> {
  factory _$RestaurantCopyWith(
          _Restaurant value, $Res Function(_Restaurant) then) =
      __$RestaurantCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String description, String bookingUrl});
}

class __$RestaurantCopyWithImpl<$Res> extends _$RestaurantCopyWithImpl<$Res>
    implements _$RestaurantCopyWith<$Res> {
  __$RestaurantCopyWithImpl(
      _Restaurant _value, $Res Function(_Restaurant) _then)
      : super(_value, (v) => _then(v as _Restaurant));

  @override
  _Restaurant get _value => super._value as _Restaurant;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object bookingUrl = freezed,
  }) {
    return _then(_Restaurant(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      bookingUrl:
          bookingUrl == freezed ? _value.bookingUrl : bookingUrl as String,
    ));
  }
}

class _$_Restaurant implements _Restaurant {
  const _$_Restaurant(
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
    return 'Restaurant(id: $id, name: $name, description: $description, bookingUrl: $bookingUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Restaurant &&
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
  _$RestaurantCopyWith<_Restaurant> get copyWith =>
      __$RestaurantCopyWithImpl<_Restaurant>(this, _$identity);
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant(
      {@required String id,
      @required String name,
      @required String description,
      @required String bookingUrl}) = _$_Restaurant;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get bookingUrl;
  @override
  _$RestaurantCopyWith<_Restaurant> get copyWith;
}
