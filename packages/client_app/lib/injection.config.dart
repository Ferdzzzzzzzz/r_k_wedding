// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_state/auth_cubit.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/facades/i_auth_facade.dart';
import 'domain/restaurants/repositories/i_restaurant_repository.dart';
import 'infrastructure/restaurants/restaurant_repository.dart';
import 'application/restaurants/restaurant_watcher/restaurant_watcher_cubit.dart';
import 'application/auth/sign_in_form/sign_in_form_cubit.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(get<FirebaseAuth>()));
  gh.lazySingleton<IRestaurantRepository>(
      () => RestaurantRepository(get<FirebaseFirestore>()));
  gh.factory<RestaurantWatcherCubit>(
      () => RestaurantWatcherCubit(get<IRestaurantRepository>()));
  gh.factory<SignInFormCubit>(() => SignInFormCubit(get<IAuthFacade>()));
  gh.factory<AuthCubit>(() => AuthCubit(get<IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
