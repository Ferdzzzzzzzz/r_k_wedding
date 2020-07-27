import 'package:client_app/domain/auth/entities/user.dart';
import 'package:client_app/domain/auth/failures/auth_failure.dart';
import 'package:client_app/domain/auth/facades/i_auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:client_app/domain/auth/value_objects/password.dart';
import 'package:client_app/domain/auth/value_objects/email_address.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import './firebase_user_mapper_extension.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(
    this._firebaseAuth,
  );

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_USER_NOT_FOUND' ||
          e.code == 'ERROR_WRONG_PASSWORD') {
        return left(const AuthFailure.invalidEmailPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignedInUser() => _firebaseAuth
      .currentUser()
      .then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
