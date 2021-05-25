import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/services/network/network_manager.dart';
import 'package:monotone_flutter/services/network/network_service.dart';
import 'package:monotone_flutter/services/network/requests/photo/list_photo_request.dart';
import 'package:monotone_flutter/services/network/responses/photo/list_photo_response.dart';

class PhotoService extends NetworkService{

  Future<List<Photo>> listPhotos({int page = 1, int perPage = 10, String orderBy = 'latest'}){

    ListPhotoRequest request = ListPhotoRequest();
    request.page = page;
    request.perPage = perPage;
    request.orderBy = orderBy;

    return NetworkManager.shared.request(request, 'GET').then((json){
        ListPhotoResponse response = ListPhotoResponse.fromJson(json);
        List<Photo> photos = response.results;

        return photos;
    });
  }
}