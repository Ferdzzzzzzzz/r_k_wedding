import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'errors.dart';
import 'failures/value_failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  /// Use when there is only one logical state for the implimintation,
  /// This function will either return the object value or crash the app
  T getOrCrash() {
    return value.fold(
      (f) => throw UnexpectedValueError(f),
      id,
    );
  }

  @override
  List<Object> get props => [value];

  @override
  String toString() => 'Value($value)';
}
