import 'package:wedding_app/core/failures/value_failures.dart';
import 'package:wedding_app/core/value_objects.dart';
import 'package:wedding_app/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);

  @override
  List<Object> get props => [value];
}
