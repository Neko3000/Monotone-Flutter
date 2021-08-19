import 'package:monotone_flutter/blocs/photo_list/photo_details_event.dart';
import 'package:monotone_flutter/blocs/photo_list/photo_details_state.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/blocs/base_bloc.dart';
import 'package:monotone_flutter/blocs/photo_list/photo_list_event.dart';
import 'package:monotone_flutter/blocs/photo_list/photo_list_state.dart';
import 'package:monotone_flutter/services/network/photo_service.dart';
import 'package:monotone_flutter/services/network/topic_service.dart';

class PhotoDetailsBloc extends BaseBloc<PhotoDetailsEvent, PhotoDetailsState> {
  PhotoDetailsBloc({PhotoDetailsState initialState})
      : super(initialState ?? PhotoDetailsStateInitial()) {
    // FIXME: Inject all services here(optional).
  }

  @override
  Stream<PhotoDetailsState> bind(PhotoDetailsEvent event) async* {
    // PhotoService photoService = this.findServices(PhotoService);
    PhotoService photoService = PhotoService();
    TopicService topicService = TopicService();

    // Details state mapping.
  }
}
