import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class EmailAddress extends Equatable {
  final String value;

  const EmailAddress(this.value) : assert(value != null);

  @override
  String toString() => 'EmailAddress($value)';

  @override
  List<Object> get props => [value];
}
