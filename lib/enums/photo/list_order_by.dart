
enum ListOrderByType{
  popular,
  latest
}

class ListOrderBy{
  ListOrderBy(this.type);

  final ListOrderByType type;
  factory ListOrderBy.fromType(ListOrderByType type){

    ListOrderBy listOrderBy = ListOrderBy(type);

    switch(type){

      case ListOrderByType.popular:
        listOrderBy.title = "popular title";
        break;

      case ListOrderByType.latest:
        listOrderBy.title = "latest title";
        break;

      default:
        break;
    }

    return listOrderBy;
  }

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

  String title;
}