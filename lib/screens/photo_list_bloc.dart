import 'package:monotone_flutter/enums/photo/list_order_by.dart';
import 'package:monotone_flutter/models/photo/photo.dart';
import 'package:monotone_flutter/screens/base_bloc.dart';
import 'package:monotone_flutter/screens/photo_list_event.dart';
import 'package:monotone_flutter/screens/photo_list_state.dart';
import 'package:monotone_flutter/services/network/photo_service.dart';

class PhotoListBloc extends BaseBloc<PhotoListEvent, PhotoListState>{
  PhotoListBloc(PhotoListState initialState) : super(initialState);

  @override
  Stream<PhotoListState> bind(PhotoListEvent event) async* {

    yield PhotoListStateLoadMoreInProgress();

    // PhotoService photoService = this.findServices(PhotoService);
    PhotoService photoService = PhotoService();

    if(event is PhotoListMoreLoaded){

      final int nextLoadPage = this.state.nextLoadPage;
      final int perPage = 20;

      if(this.state.searchQuery != null){
        //
      }
      else if(this.state.listOrderBy != null){
        try{

          final List<Photo> photos = await photoService.listPhotos(
              page: nextLoadPage,
              perPage: perPage,
              orderBy: this.state.listOrderBy.key);

          yield PhotoListStateLoadSuccess(searchQuery: this.state.searchQuery,
              listOrderBy: this.state.listOrderBy,
              topic: this.state.topic,
              currentPhotos: this.state.currentPhotos + photos,
              nextLoadPage: this.state.nextLoadPage + 1);

        }
        catch(e){
          yield PhotoListStateLoadFailure.fromState(this.state);
        }
      }
      else if(this.state.topic != null){
        //
      }
      else{

      }
    }
    else if(event is PhotoListListOrderByChanged){

      final ListOrderBy listOrderBy = event.listOrderBy;

      final int nextLoadPage = 1;
      final int perPage = 20;

      try{
        final List<Photo> photos = await photoService.listPhotos(
          page: nextLoadPage,
          perPage: perPage,
          orderBy: listOrderBy.key
        );

        yield PhotoListStateLoadSuccess(searchQuery: null,
        listOrderBy: listOrderBy,
        topic: null,
        currentPhotos: photos,
        nextLoadPage: nextLoadPage + 1);
      }
      catch(e){
        yield PhotoListStateLoadFailure.fromState(this.state);
      }
    }
  }

}