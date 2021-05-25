import 'package:monotone_flutter/services/authentication/auth_credential.dart';

class AuthManager{

  //region Singleton
  static final AuthManager _shared = AuthManager._internal();
  static AuthManager get shared => _shared;
  //endregion

  //region Constructor
  AuthManager._internal();
  //endregion

  //region Credential
  AuthCredential _credential;

  AuthCredential get credential => _credential;
  set credential(AuthCredential credential){
    _credential = credential;
    this.storeCredential(credential);
  }

  Future loadCredential() async {
    _credential = await AuthCredential.loadCredential();
  }

  void storeCredential(AuthCredential credential) async{
    AuthCredential.storeCredential(credential);
  }



  //endregion

}