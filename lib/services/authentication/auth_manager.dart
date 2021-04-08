import 'package:monotone_flutter/services/authentication/auth_credential.dart';

class AuthManager{

  //region Description
  static final AuthManager _shared = AuthManager._internal();
  static AuthManager get shared => _shared;
  //endregion

  //region Constructor
  AuthManager._internal(): super(){
    this.loadCredential();
  }
  //endregion


  //region Credential
  AuthCredential _credential;

  AuthCredential get credential => _credential;
  set credential(AuthCredential credential){
    _credential = credential;
    this.storeCredential(credential);
  }

  void loadCredential() async {
    _credential = await AuthCredential.loadCredential();
  }

  void storeCredential(AuthCredential credential) async{
    AuthCredential.storeCredential(credential);
  }
  //endregion

}