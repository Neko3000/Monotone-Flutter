import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/services/network/network_manager.dart';
import 'package:monotone_flutter/services/network/network_service.dart';
import 'package:monotone_flutter/services/network/requests/photo/list_photo_request.dart';
import 'package:monotone_flutter/services/network/requests/photo/search_photo_request.dart';
import 'package:monotone_flutter/services/network/responses/photo/list_photo_response.dart';
import 'package:monotone_flutter/services/network/responses/photo/search_photo_response.dart';

class PhotoService extends NetworkService {

  Future<List<Photo>> listPhotos(
      {int page = 1, int perPage = 10, String orderBy = 'latest'}) {
    ListPhotoRequest request = ListPhotoRequest();
    request.page = page;
    request.perPage = perPage;
    request.orderBy = orderBy;

    return NetworkManager.shared.request(request, 'GET').then((json) {
      ListPhotoResponse response = ListPhotoResponse.fromJson(json);
      List<Photo> photos = response.results;

      return photos;
    });
  }

  Future<List<Photo>> searchPhotos(String query,
      {int page = 1, int perPage = 10, String orderBy = 'relevant', List<
          String> collections, String contentFilter = 'low', String color = '', String orientation = '',}){
    SearchPhotoRequest request = SearchPhotoRequest();
    request.query = query;
    request.page = page;
    request.perPage = perPage;

    return NetworkManager.shared.request(request, 'GET').then((json) {
      SearchPhotoResponse response = SearchPhotoResponse.fromJson(json);
      List<Photo> photos = response.results;

      return photos;
    });
  }
}