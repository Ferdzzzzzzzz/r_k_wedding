// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../views/home/home_view.dart';
import '../views/restaurants/restaurants_view.dart';
import '../views/rsvp/rsvp_view.dart';
import '../views/wine_farms/wine_farm_view.dart';

class Routes {
  static const String homeView = '/';
  static const String rsvp = '/rsvp-view';
  static const String restaurant = '/restaurant-view';
  static const String wineFarm = '/wine-farm-view';
  static const all = <String>{
    homeView,
    rsvp,
    restaurant,
    wineFarm,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.rsvp, page: RsvpView),
    RouteDef(Routes.restaurant, page: RestaurantView),
    RouteDef(Routes.wineFarm, page: WineFarmView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<Widget>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    RsvpView: (data) {
      return MaterialPageRoute<Widget>(
        builder: (context) => RsvpView(),
        settings: data,
      );
    },
    RestaurantView: (data) {
      return MaterialPageRoute<Widget>(
        builder: (context) => RestaurantView(),
        settings: data,
      );
    },
    WineFarmView: (data) {
      return MaterialPageRoute<Widget>(
        builder: (context) => WineFarmView(),
        settings: data,
      );
    },
  };
}
