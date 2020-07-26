import 'package:client_app/domain/auth/entities/user.dart';
import 'package:client_app/domain/auth/value_objects/user_id.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainExtension on FirebaseUser {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
