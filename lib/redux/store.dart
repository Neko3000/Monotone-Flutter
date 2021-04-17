import 'package:flutter/cupertino.dart';
import 'package:monotone_flutter/redux/states/photo_list_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:monotone_flutter/screens/photo_list_screen.dart';

AppState appReducer(AppState state, dynamic action){
  if(action is PhotoListReloadAction){
    PhotoListState photoListState = photoListReducer(state.photoListState, action);

    return state.copyWith(
        photoListState: photoListState
    );
  }

  return state;
}

class AppState{
  PhotoListState photoListState;

  AppState({
    @required this.photoListState
  });

  AppState copyWith({
    PhotoListState photoListState
  }){
    return AppState(
        photoListState: photoListState ?? this.photoListState
    );
  }
}

class Redux{

  //region Singleton
  static final Redux _shared = Redux._internal();
  static Redux get shared => _shared;
  //endregion

  //region Constructors
  Redux._internal();
  //endregion

  static Store<AppState> _store;

  Store<AppState> get store{
    if(_store == null){
      throw Exception('store is not be initalized');
    }
    else{
      return _store;
    }
  }

  Future<void> init() async{
    final photoListStateInitial = PhotoListState.initial();

    _store = Store(
        appReducer,
        middleware: [thunkMiddleware],
        initialState: AppState(photoListState: photoListStateInitial)
    );
  }
}