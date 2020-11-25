// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rsvp_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RsvpFormStateTearOff {
  const _$RsvpFormStateTearOff();

// ignore: unused_element
  _RsvpFormState call(
      {@required String names,
      @required Option<Rsvp> optionRSVP,
      @required String dietryRequirements,
      @required bool canSubmit,
      @required bool isSubmitting}) {
    return _RsvpFormState(
      names: names,
      optionRSVP: optionRSVP,
      dietryRequirements: dietryRequirements,
      canSubmit: canSubmit,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RsvpFormState = _$RsvpFormStateTearOff();

/// @nodoc
mixin _$RsvpFormState {
  String get names;
  Option<Rsvp> get optionRSVP;
  String get dietryRequirements;
  bool get canSubmit;
  bool get isSubmitting;

  $RsvpFormStateCopyWith<RsvpFormState> get copyWith;
}

/// @nodoc
abstract class $RsvpFormStateCopyWith<$Res> {
  factory $RsvpFormStateCopyWith(
          RsvpFormState value, $Res Function(RsvpFormState) then) =
      _$RsvpFormStateCopyWithImpl<$Res>;
  $Res call(
      {String names,
      Option<Rsvp> optionRSVP,
      String dietryRequirements,
      bool canSubmit,
      bool isSubmitting});
}

/// @nodoc
class _$RsvpFormStateCopyWithImpl<$Res>
    implements $RsvpFormStateCopyWith<$Res> {
  _$RsvpFormStateCopyWithImpl(this._value, this._then);

  final RsvpFormState _value;
  // ignore: unused_field
  final $Res Function(RsvpFormState) _then;

  @override
  $Res call({
    Object names = freezed,
    Object optionRSVP = freezed,
    Object dietryRequirements = freezed,
    Object canSubmit = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      names: names == freezed ? _value.names : names as String,
      optionRSVP: optionRSVP == freezed
          ? _value.optionRSVP
          : optionRSVP as Option<Rsvp>,
      dietryRequirements: dietryRequirements == freezed
          ? _value.dietryRequirements
          : dietryRequirements as String,
      canSubmit: canSubmit == freezed ? _value.canSubmit : canSubmit as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
abstract class _$RsvpFormStateCopyWith<$Res>
    implements $RsvpFormStateCopyWith<$Res> {
  factory _$RsvpFormStateCopyWith(
          _RsvpFormState value, $Res Function(_RsvpFormState) then) =
      __$RsvpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String names,
      Option<Rsvp> optionRSVP,
      String dietryRequirements,
      bool canSubmit,
      bool isSubmitting});
}

/// @nodoc
class __$RsvpFormStateCopyWithImpl<$Res>
    extends _$RsvpFormStateCopyWithImpl<$Res>
    implements _$RsvpFormStateCopyWith<$Res> {
  __$RsvpFormStateCopyWithImpl(
      _RsvpFormState _value, $Res Function(_RsvpFormState) _then)
      : super(_value, (v) => _then(v as _RsvpFormState));

  @override
  _RsvpFormState get _value => super._value as _RsvpFormState;

  @override
  $Res call({
    Object names = freezed,
    Object optionRSVP = freezed,
    Object dietryRequirements = freezed,
    Object canSubmit = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_RsvpFormState(
      names: names == freezed ? _value.names : names as String,
      optionRSVP: optionRSVP == freezed
          ? _value.optionRSVP
          : optionRSVP as Option<Rsvp>,
      dietryRequirements: dietryRequirements == freezed
          ? _value.dietryRequirements
          : dietryRequirements as String,
      canSubmit: canSubmit == freezed ? _value.canSubmit : canSubmit as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

/// @nodoc
class _$_RsvpFormState implements _RsvpFormState {
  const _$_RsvpFormState(
      {@required this.names,
      @required this.optionRSVP,
      @required this.dietryRequirements,
      @required this.canSubmit,
      @required this.isSubmitting})
      : assert(names != null),
        assert(optionRSVP != null),
        assert(dietryRequirements != null),
        assert(canSubmit != null),
        assert(isSubmitting != null);

  @override
  final String names;
  @override
  final Option<Rsvp> optionRSVP;
  @override
  final String dietryRequirements;
  @override
  final bool canSubmit;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'RsvpFormState(names: $names, optionRSVP: $optionRSVP, dietryRequirements: $dietryRequirements, canSubmit: $canSubmit, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RsvpFormState &&
            (identical(other.names, names) ||
                const DeepCollectionEquality().equals(other.names, names)) &&
            (identical(other.optionRSVP, optionRSVP) ||
                const DeepCollectionEquality()
                    .equals(other.optionRSVP, optionRSVP)) &&
            (identical(other.dietryRequirements, dietryRequirements) ||
                const DeepCollectionEquality()
                    .equals(other.dietryRequirements, dietryRequirements)) &&
            (identical(other.canSubmit, canSubmit) ||
                const DeepCollectionEquality()
                    .equals(other.canSubmit, canSubmit)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(names) ^
      const DeepCollectionEquality().hash(optionRSVP) ^
      const DeepCollectionEquality().hash(dietryRequirements) ^
      const DeepCollectionEquality().hash(canSubmit) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$RsvpFormStateCopyWith<_RsvpFormState> get copyWith =>
      __$RsvpFormStateCopyWithImpl<_RsvpFormState>(this, _$identity);
}

abstract class _RsvpFormState implements RsvpFormState {
  const factory _RsvpFormState(
      {@required String names,
      @required Option<Rsvp> optionRSVP,
      @required String dietryRequirements,
      @required bool canSubmit,
      @required bool isSubmitting}) = _$_RsvpFormState;

  @override
  String get names;
  @override
  Option<Rsvp> get optionRSVP;
  @override
  String get dietryRequirements;
  @override
  bool get canSubmit;
  @override
  bool get isSubmitting;
  @override
  _$RsvpFormStateCopyWith<_RsvpFormState> get copyWith;
}
