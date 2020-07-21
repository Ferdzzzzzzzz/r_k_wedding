import 'package:dartz/dartz.dart';

import 'failures/value_failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  }
  return Left(ValueFailure.invalidEmail(failedValue: input));
}

/// Check that the pin is between
Either<ValueFailure<String>, String> validatePassword(String input) {
  try {
    int.parse(input);

    if (input.length != 4) {
      return Left(ValueFailure.shortPassword(failedValue: input));
    }
    return Right(input);
  } on FormatException {
    return Left(ValueFailure.invalidPassword(failedValue: input));
  }
}
