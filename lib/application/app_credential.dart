import 'dart:convert';
import 'package:flutter/services.dart';

final String configDebugFileName = "config_debug";
final String configFileName = "config";

class AppCredential{

  AppCredential(this._accessKey, this._secretKey);

  String _accessKey;
  String _secretKey;

  String get accessKey => this._accessKey;
  String get secretKey => this._secretKey;

  static Future<AppCredential> loadCredential() async{

    try {
      String jsonStr;
      jsonStr = await rootBundle.loadString('$configDebugFileName.json');
      jsonStr = await rootBundle.loadString('$configFileName.json');

      Map<String, dynamic> data = jsonDecode(jsonStr);

      String accessKey = data['api_keys']['access_key'];
      String secretKey = data['api_keys']['secret_key'];

      AppCredential credential = AppCredential(accessKey, secretKey);
      return credential;
    }
    catch(e){
      return null;
    }
  }
}