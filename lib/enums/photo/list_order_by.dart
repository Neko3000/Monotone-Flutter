
enum ListOrderBy{
  popular,
  latest
}

extension ListOrderByTypeExtension on ListOrderBy{

  String get title {
    switch(this){
      case ListOrderBy.popular:
        return 'popular title';
      case ListOrderBy.latest:
        return 'latest title';
      default:
        return '';
    }
  }

  String get key {
    switch(this){
      case ListOrderBy.popular:
        return 'popular';
      case ListOrderBy.latest:
        return 'latest';
      default:
        return '';
    }
  }

  static ListOrderBy rawValue(String key){
    switch(key){
      case 'popular':
        return ListOrderBy.popular;
      case'latest':
        return ListOrderBy.latest;
      default:
        return null;
    }
  }
}

/*
class ListOrderBy{
  ListOrderBy(this.type);

  //region FromType
  final ListOrderByType type;
  factory ListOrderBy.fromType(ListOrderByType type){

    ListOrderBy listOrderBy = ListOrderBy(type);

    switch(type){

      case ListOrderByType.popular:
        listOrderBy.title = "popular title";
        listOrderBy.key = "popular";
        break;

      case ListOrderByType.latest:
        listOrderBy.title = "latest title";
        listOrderBy.key = "latest";
        break;

      default:
        break;
    }

    return listOrderBy;
  }
  //endregion

  //region FromKey
  String key;
  factory ListOrderBy.fromKey(String key){

    switch(key){

      case 'popular':
        return ListOrderBy.fromType(ListOrderByType.popular);

      case 'latest':
        return ListOrderBy.fromType(ListOrderByType.latest);

      default:
        return null;
    }

  }
  //endregion

  String title;
}
*/