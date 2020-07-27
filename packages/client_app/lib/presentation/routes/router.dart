import 'package:auto_route/auto_route_annotations.dart';
import 'package:client_app/presentation/views/home/home_view.dart';
import 'package:client_app/presentation/views/restaurants/restaurants_view.dart';
import 'package:client_app/presentation/views/rsvp/rsvp_view.dart';
import 'package:client_app/presentation/views/wine_farms/wine_farm_view.dart';
import 'package:flutter/material.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute<Widget>(page: HomeView, initial: true),
  MaterialRoute<Widget>(page: RsvpView, name: 'rsvp'),
  MaterialRoute<Widget>(page: RestaurantView, name: 'restaurant'),
  MaterialRoute<Widget>(page: WineFarmView, name: 'wineFarm'),
])
class $Router {}
