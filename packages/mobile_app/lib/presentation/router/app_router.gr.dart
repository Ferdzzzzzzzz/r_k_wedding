// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../views/activities/activities_view.dart';
import '../views/bed/bed_view.dart';
import '../views/home/home_view.dart';
import '../views/lions/lions_view.dart';
import '../views/restaurants/restaurants_view.dart';
import '../views/rsvp/rsvp_view.dart';
import '../views/schedule/schedule_view.dart';
import '../views/venue/venue_view.dart';
import '../views/wine_farms/wine_view.dart';

class Routes {
  static const String homeView = '/';
  static const String venueView = '/venue-view';
  static const String lionsView = '/lions-view';
  static const String activitiesView = '/activities-view';
  static const String scheduleView = '/schedule-view';
  static const String bedView = '/bed-view';
  static const String rsvpView = '/rsvp-view';
  static const String restaurantView = '/restaurant-view';
  static const String wineView = '/wine-view';
  static const all = <String>{
    homeView,
    venueView,
    lionsView,
    activitiesView,
    scheduleView,
    bedView,
    rsvpView,
    restaurantView,
    wineView,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.venueView, page: VenueView),
    RouteDef(Routes.lionsView, page: LionsView),
    RouteDef(Routes.activitiesView, page: ActivitiesView),
    RouteDef(Routes.scheduleView, page: ScheduleView),
    RouteDef(Routes.bedView, page: BedView),
    RouteDef(Routes.rsvpView, page: RsvpView),
    RouteDef(Routes.restaurantView, page: RestaurantView),
    RouteDef(Routes.wineView, page: WineView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (data) {
      return PageRouteBuilder<Widget>(
        pageBuilder: (context, animation, secondaryAnimation) => HomeView(),
        settings: data,
      );
    },
    VenueView: (data) {
      return PageRouteBuilder<Widget>(
        pageBuilder: (context, animation, secondaryAnimation) => VenueView(),
        settings: data,
      );
    },
    LionsView: (data) {
      return PageRouteBuilder<Widget>(
        pageBuilder: (context, animation, secondaryAnimation) => LionsView(),
        settings: data,
      );
    },
    ActivitiesView: (data) {
      return PageRouteBuilder<Widget>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ActivitiesView(),
        settings: data,
      );
    },
    ScheduleView: (data) {
      return PageRouteBuilder<Widget>(
        pageBuilder: (context, animation, secondaryAnimation) => ScheduleView(),
        settings: data,
      );
    },
    BedView: (data) {
      return PageRouteBuilder<Widget>(
        pageBuilder: (context, animation, secondaryAnimation) => BedView(),
        settings: data,
      );
    },
    RsvpView: (data) {
      return PageRouteBuilder<Widget>(
        pageBuilder: (context, animation, secondaryAnimation) => RsvpView(),
        settings: data,
      );
    },
    RestaurantView: (data) {
      return PageRouteBuilder<Widget>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            RestaurantView(),
        settings: data,
      );
    },
    WineView: (data) {
      return PageRouteBuilder<Widget>(
        pageBuilder: (context, animation, secondaryAnimation) => WineView(),
        settings: data,
      );
    },
  };
}
