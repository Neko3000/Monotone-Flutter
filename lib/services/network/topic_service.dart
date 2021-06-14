import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/services/network/network_manager.dart';
import 'package:monotone_flutter/services/network/network_service.dart';
import 'package:monotone_flutter/services/network/requests/photo/get_topic_photos_request.dart';
import 'package:monotone_flutter/services/network/responses/photo/get_topic_photos_response.dart';

class TopicService extends NetworkService {

  Future<List<Photo>> getTopicPhotos(String idOrSlug,
      {int page = 1, int perPage = 10,String orientation, String orderBy = 'latest'}) {
    GetTopicPhotosRequest request = GetTopicPhotosRequest();
    request.idOrSlug = idOrSlug;
    request.page = page;
    request.perPage = perPage;
    request.orientation = orientation;
    request.orderBy = orderBy;

    return NetworkManager.shared.request(request, 'GET').then((json) {
      GetTopicPhotosResponse response = GetTopicPhotosResponse.fromJson(json);
      List<Photo> photos = response.results;

      return photos;
    });
  }

}