import 'package:monotone_flutter/application/app_credential.dart';

class AppManager{

  //region Singleton
  static final AppManager _shared = AppManager._internal();
  static AppManager get shared => _shared;
  //endregion

  //region Constructors
  AppManager._internal();
  //endregion

  AppCredential _credential;
  AppCredential get credential => _credential;

  Future loadCredential() async{
    this._credential = await AppCredential.loadCredential();
  }
}