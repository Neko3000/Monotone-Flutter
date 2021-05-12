import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monotone_flutter/services/base_service.dart';

abstract class BlocServable{

  List<BaseService> services;

  T findServices<T>(Type type){
    return this.services.where((element) => element.runtimeType == type).first as T;
  }
}

class BaseBloc<T,V> extends Bloc<T,V> with BlocServable{
  BaseBloc(V initialState) : super(initialState);
  BaseBloc.fromServices(V initialState, {@required this.services}) : super(initialState);

  // Services.
  List<BaseService> services;

  // MapEventToState.
  @override
  Stream<V> mapEventToState(T event) async* {
    yield* this.bind(event);
  }

  Stream<V> bind(T event) async*{
    // Implemented by subclass.
  }

  void dispose() {
    // Implemented by subclass.
  }
}

