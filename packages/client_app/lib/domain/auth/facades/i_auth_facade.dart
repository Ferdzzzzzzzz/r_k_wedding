import 'package:client_app/domain/auth/entities/user.dart';
import 'package:client_app/domain/auth/failures/auth_failure.dart';
import 'package:client_app/domain/auth/value_objects/email_address.dart';
import 'package:client_app/domain/auth/value_objects/password.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
