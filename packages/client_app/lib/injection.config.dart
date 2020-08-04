// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import 'application/auth/auth_state/auth_cubit.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/facades/i_auth_facade.dart';
import 'domain/restaurants/repositories/i_restaurant_repository.dart';
import 'application/restaurants/restaurant_watcher/restaurant_watcher_cubit.dart';
import 'application/auth/sign_in_form/sign_in_form_cubit.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(g<FirebaseAuth>()));
  gh.factory<RestaurantWatcherCubit>(
      () => RestaurantWatcherCubit(g<IRestaurantRepository>()));
  gh.factory<SignInFormCubit>(() => SignInFormCubit(g<IAuthFacade>()));
  gh.factory<AuthCubit>(() => AuthCubit(g<IAuthFacade>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
