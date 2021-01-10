import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:wedding/presentation/views/activities/activities_view.dart';
import 'package:wedding/presentation/views/bed/bed_view.dart';
import 'package:wedding/presentation/views/home/home_view.dart';
import 'package:wedding/presentation/views/lions/lions_view.dart';
import 'package:wedding/presentation/views/restaurants/restaurants_view.dart';
import 'package:wedding/presentation/views/rsvp/rsvp_view.dart';
import 'package:wedding/presentation/views/schedule/schedule_view.dart';
import 'package:wedding/presentation/views/venue/venue_view.dart';
import 'package:wedding/presentation/views/wine_farms/wine_view.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.zoomIn,
  routes: <AutoRoute>[
    CustomRoute<Widget>(page: HomeView, initial: true),
    CustomRoute<Widget>(page: VenueView),
    CustomRoute<Widget>(page: LionsView),
    CustomRoute<Widget>(page: ActivitiesView),
    CustomRoute<Widget>(page: ScheduleView),
    CustomRoute<Widget>(page: BedView),
    CustomRoute<Widget>(page: RsvpView),
    CustomRoute<Widget>(page: RestaurantView),
    CustomRoute<Widget>(page: WineView),
  ],
)
class $AppRouter {}
