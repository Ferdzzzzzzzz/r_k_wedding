// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'restaurant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RestaurantDto _$RestaurantDtoFromJson(Map<String, dynamic> json) {
  return _RestaurantDto.fromJson(json);
}

class _$RestaurantDtoTearOff {
  const _$RestaurantDtoTearOff();

// ignore: unused_element
  _RestaurantDto call(
      {@required String id,
      @required String name,
      @required String description,
      @required String bookingUrl}) {
    return _RestaurantDto(
      id: id,
      name: name,
      description: description,
      bookingUrl: bookingUrl,
    );
  }
}

// ignore: unused_element
const $RestaurantDto = _$RestaurantDtoTearOff();

mixin _$RestaurantDto {
  String get id;
  String get name;
  String get description;
  String get bookingUrl;

  Map<String, dynamic> toJson();
  $RestaurantDtoCopyWith<RestaurantDto> get copyWith;
}

abstract class $RestaurantDtoCopyWith<$Res> {
  factory $RestaurantDtoCopyWith(
          RestaurantDto value, $Res Function(RestaurantDto) then) =
      _$RestaurantDtoCopyWithImpl<$Res>;
  $Res call({String id, String name, String description, String bookingUrl});
}

class _$RestaurantDtoCopyWithImpl<$Res>
    implements $RestaurantDtoCopyWith<$Res> {
  _$RestaurantDtoCopyWithImpl(this._value, this._then);

  final RestaurantDto _value;
  // ignore: unused_field
  final $Res Function(RestaurantDto) _then;

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

abstract class _$RestaurantDtoCopyWith<$Res>
    implements $RestaurantDtoCopyWith<$Res> {
  factory _$RestaurantDtoCopyWith(
          _RestaurantDto value, $Res Function(_RestaurantDto) then) =
      __$RestaurantDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String description, String bookingUrl});
}

class __$RestaurantDtoCopyWithImpl<$Res>
    extends _$RestaurantDtoCopyWithImpl<$Res>
    implements _$RestaurantDtoCopyWith<$Res> {
  __$RestaurantDtoCopyWithImpl(
      _RestaurantDto _value, $Res Function(_RestaurantDto) _then)
      : super(_value, (v) => _then(v as _RestaurantDto));

  @override
  _RestaurantDto get _value => super._value as _RestaurantDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object description = freezed,
    Object bookingUrl = freezed,
  }) {
    return _then(_RestaurantDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      description:
          description == freezed ? _value.description : description as String,
      bookingUrl:
          bookingUrl == freezed ? _value.bookingUrl : bookingUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_RestaurantDto extends _RestaurantDto {
  const _$_RestaurantDto(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.bookingUrl})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(bookingUrl != null),
        super._();

  factory _$_RestaurantDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RestaurantDtoFromJson(json);

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
    return 'RestaurantDto(id: $id, name: $name, description: $description, bookingUrl: $bookingUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RestaurantDto &&
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
  _$RestaurantDtoCopyWith<_RestaurantDto> get copyWith =>
      __$RestaurantDtoCopyWithImpl<_RestaurantDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RestaurantDtoToJson(this);
  }
}

abstract class _RestaurantDto extends RestaurantDto {
  const _RestaurantDto._() : super._();
  const factory _RestaurantDto(
      {@required String id,
      @required String name,
      @required String description,
      @required String bookingUrl}) = _$_RestaurantDto;

  factory _RestaurantDto.fromJson(Map<String, dynamic> json) =
      _$_RestaurantDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get bookingUrl;
  @override
  _$RestaurantDtoCopyWith<_RestaurantDto> get copyWith;
}
