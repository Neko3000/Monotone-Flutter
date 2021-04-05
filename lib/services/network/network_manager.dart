import 'dart:async';

import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:monotone_flutter/services/network/requests/base_request.dart';

class NetworkManager{

  //region Singleton
  static final NetworkManager _shared =  NetworkManager._internal();
  static NetworkManager get shared => _shared;
//endregion

  //region Constructors
  NetworkManager._internal();
//endregion

  final String domain = 'https://api.unsplash.com/';

  // TODO: Need be reformat to async.
  Future<Map<String,dynamic>> request(BaseRequest request, String method) async{
    String endPoint = request.api;
    String url = this.domain + endPoint;

    BaseOptions options = BaseOptions();
    options.baseUrl = this.domain;
    options.method = method;

    options.headers = {
      'Client-ID':''
    };

    Dio dio = Dio();
    return dio.request(request.api,data: request.toJson()).then((response){

     dynamic json = response.data;

      if(response.statusCode == 200 || response.statusCode == 201){
        if(json is List){
            json = {'results':json};
        }

        return json as Map<String,dynamic>;
      }
      else{
        // error
      }

      return {};
    },onError: (error){
      return {};
    });
  }
}