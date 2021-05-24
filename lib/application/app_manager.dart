import 'package:monotone_flutter/application/app_credential.dart';

class AppManager{

  //region Singleton
  static final AppManager _shared = AppManager.internal();
  static AppManager get shared => _shared;
  //endregion

  //region Constructors
  AppManager.internal():super(){
    //
  }
  //endregion

  final AppCredential credential = AppCredential();
}