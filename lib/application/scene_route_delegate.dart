import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SceneRouteDelegate extends RouterDelegate<String> with PopNavigatorRouterDelegateMixin<String>, ChangeNotifier{

  static SceneRouteDelegate of(BuildContext context){
    final delegate = Router.of(context).routerDelegate;
    assert(delegate is SceneRouteDelegate, 'Delegate type must be matched');
    return delegate as SceneRouteDelegate;
  }

  SceneRouteDelegate({@required this.onGenerateRoute});

  final RouteFactory onGenerateRoute;
  final _stack = <String>[];

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: _onPopPage,
      key: this.navigatorKey,
      pages: [
        for(final name in _stack)
          CupertinoPage(key: Key(name), name: name)
      ],
    );
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(String configuration) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }

  bool _onPopPage(Route<dynamic> route, dynamic result){
    if(_stack.isNotEmpty){
      if(_stack.last == route.settings.name){
        _stack.remove(route.settings.name);
        notifyListeners();
      }
    }

    return route.didPop(result);
  }
}