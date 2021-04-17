import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/redux/store.dart';
import 'package:monotone_flutter/services/network/photo_service.dart';

Future<List<Photo>> listPhotos() async{
  final photoService = PhotoService();

  final page = 1;
  final perPage = 10;
  final orderBy = 'latest';

  Redux.shared.store.state.photoListState.listOrderBy
  List<Photo> photos = await photoService.listPhotos(page: page, perPage: perPage, orderBy: orderBy);
  A
}