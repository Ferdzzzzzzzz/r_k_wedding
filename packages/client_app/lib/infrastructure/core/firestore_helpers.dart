import 'package:client_app/core/errors.dart';
import 'package:client_app/domain/auth/facades/i_auth_facade.dart';
import 'package:client_app/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(
      () => throw NotAuthenticatedError(),
    );

    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get restaurantCollection => collection('restaurants');
}
