import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:monotone_flutter/screens/photo_list/photo_details_screen.dart';
import 'package:monotone_flutter/screens/photo_list/photo_list_screen.dart';

class SceneRouteDelegate extends RouterDelegate<String> with PopNavigatorRouterDelegateMixin<String>, ChangeNotifier{

  static SceneRouteDelegate get shared => _shared;
  static SceneRouteDelegate _shared = SceneRouteDelegate._internal();
  SceneRouteDelegate._internal();

  static SceneRouteDelegate of(BuildContext context){
    final delegate = Router.of(context).routerDelegate;
    assert(delegate is SceneRouteDelegate, 'Delegate type must be matched');
    return delegate as SceneRouteDelegate;
  }


  final _stack = <String>[];
  List<String> get stack => List.unmodifiable(_stack);

  List<Page> pages = [
    CupertinoPage(child: PhotoListScreen())
  ];

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: _onPopPage,
      key: this.navigatorKey,
      pages: this.pages,
    );
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @override
  String get currentConfiguration => this._stack.isNotEmpty ? this._stack.last : null;

  // @override
  // Future<void> setInitialRoutePath(String configuration) {
  //   return this.setNewRoutePath(configuration);
  // }

  @override
  Future<void> setNewRoutePath(String configuration) {
    // _stack..clear()..add(configuration);
    return SynchronousFuture<void>(null);
  }

  bool _onPopPage(Route<dynamic> route, dynamic result){
    if(this.pages.isNotEmpty){
      this.pages.removeLast();
      notifyListeners();
    }

    return route.didPop(result);
  }

  void push(String newRoute){
    _stack.add(newRoute);
    notifyListeners();
  }

  void remove(String routeName){
    _stack.remove(routeName);
    notifyListeners();
  }

  void pop(){
    if(_stack.isNotEmpty){
      _stack.remove(_stack.last);
    }
    notifyListeners();
  }

  void pushPage(Page page){
    this.pages.add(page);
    notifyListeners();
  }

  void popPage(){
    this.pages.removeLast();
    notifyListeners();
  }
}