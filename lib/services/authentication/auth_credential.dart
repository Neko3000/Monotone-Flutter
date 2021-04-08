import 'dart:ffi';
import 'package:shared_preferences/shared_preferences.dart';

const String SHARED_PREFERENCES_ACCESS_TOKEN_KEY = 'SHARED_PREFERENCES_ACCESS_KEY';
const String SHARED_PREFERENCES_TOKEN_TYPE_KEY = 'SHARED_PREFERENCES_TOKEN_TYPE_KEY';
const String SHARED_PREFERENCES_SCOPE_KEY = 'SHARED_PREFERENCES_SCOPE_KEY';
const String SHARED_PREFERENCES_CREATED_AT_KEY = 'SHARED_PREFERENCES_CREATED_AT_KEY';

class AuthCredential{
  AuthCredential(this._accessToken, this._tokenType, this._scope, this._createdAt);

  String _accessToken;
  String _tokenType;
  String _scope;
  double _createdAt;

  String get accessToken => _accessToken ;
  String get tokenType => _tokenType;
  String get scope => _scope;
  double get createdAt => _createdAt;

  static Future<AuthCredential> loadCredential () async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    String storedAccessToken = sharedPreferences.getString(SHARED_PREFERENCES_ACCESS_TOKEN_KEY);
    String storedTokenType = sharedPreferences.getString(SHARED_PREFERENCES_TOKEN_TYPE_KEY);
    String storedScope = sharedPreferences.getString(SHARED_PREFERENCES_SCOPE_KEY);
    double storedCreatedAt = sharedPreferences.getDouble(SHARED_PREFERENCES_CREATED_AT_KEY);

    if(storedAccessToken == null || storedTokenType == null || storedScope == null || storedCreatedAt == null){
      return null;
    }

    return AuthCredential(storedAccessToken, storedTokenType, storedScope, storedCreatedAt);
  }

  static void storeCredential(AuthCredential credential) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    await sharedPreferences.setString(SHARED_PREFERENCES_ACCESS_TOKEN_KEY, credential.accessToken);
    await sharedPreferences.setString(SHARED_PREFERENCES_TOKEN_TYPE_KEY, credential.tokenType);
    await sharedPreferences.setString(SHARED_PREFERENCES_SCOPE_KEY, credential.scope);
    await sharedPreferences.setDouble(SHARED_PREFERENCES_CREATED_AT_KEY, credential.createdAt);
  }
}