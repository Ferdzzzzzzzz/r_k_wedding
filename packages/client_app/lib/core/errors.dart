import 'package:client_app/core/failures/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        "Encountered a value failure at an unrecoverable point. Terminating.";
    return Error.safeToString("$explanation Failure was: $valueFailure");
  }
}
