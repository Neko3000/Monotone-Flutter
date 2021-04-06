class AuthManager{

  //region Description
  static final AuthManager _shared = AuthManager._internal();
  static AuthManager get shared => _shared;
  //endregion

  //region Constructor
  AuthManager._internal();
  //endregion


}