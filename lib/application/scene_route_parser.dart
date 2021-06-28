import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class SceneRouteParser extends RouteInformationParser{

  @override
  Future parseRouteInformation(RouteInformation routeInformation) {
    return SynchronousFuture(routeInformation.location);
  }

  @override
  RouteInformation restoreRouteInformation(configuration) {
    return RouteInformation(location: configuration);
  }
}