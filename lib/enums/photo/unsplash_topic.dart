enum UnsplashTopicType{
 nature,
 people,
 streetPhotography,
 artsCulture,
 architecture,
 travel,
 technology,
 animals,
 foodDrink,
 sustainability
}

class UnsplashTopic{
  UnsplashTopic(this.type);

  UnsplashTopicType type;
  factory UnsplashTopic.fromType(UnsplashTopicType type){

    UnsplashTopic unsplashTopic = UnsplashTopic(type);

    switch(type){
      case UnsplashTopicType.nature:
        unsplashTopic.title = 'nature title';
        break;

      case UnsplashTopicType.people:
        unsplashTopic.title = 'nature title';
        break;

      case UnsplashTopicType.streetPhotography:
        unsplashTopic.title = 'nature title';
        break;

      case UnsplashTopicType.artsCulture:
        unsplashTopic.title = 'nature title';
        break;

      case UnsplashTopicType.architecture:
        unsplashTopic.title = 'nature title';
        break;

      case UnsplashTopicType.travel:
        unsplashTopic.title = 'nature title';
        break;

      case UnsplashTopicType.technology:
        unsplashTopic.title = 'nature title';
        break;

      case UnsplashTopicType.animals:
        unsplashTopic.title = 'nature title';
        break;

      case UnsplashTopicType.foodDrink:
        unsplashTopic.title = 'nature title';
        break;

      case UnsplashTopicType.sustainability:
        unsplashTopic.title = 'nature title';
        break;

      default:
        break;
    }

    return unsplashTopic;
  }

  String key;
  factory UnsplashTopic.fromKey(String key){
    switch(key){

    case "nature":
      return UnsplashTopic.fromType(UnsplashTopicType.nature);

    case "people":
      return UnsplashTopic.fromType(UnsplashTopicType.people);

    case "street-photography":
      return UnsplashTopic.fromType(UnsplashTopicType.streetPhotography);

    case "arts-culture":
      return UnsplashTopic.fromType(UnsplashTopicType.artsCulture);

    case "architecture":
      return UnsplashTopic.fromType(UnsplashTopicType.architecture);

    case "travel":
      return UnsplashTopic.fromType(UnsplashTopicType.travel);

    case "technology":
      return UnsplashTopic.fromType(UnsplashTopicType.technology);

    case "animals":
      return UnsplashTopic.fromType(UnsplashTopicType.animals);

    case "food-drink":
      return UnsplashTopic.fromType(UnsplashTopicType.foodDrink);

    case "sustainability":
      return UnsplashTopic.fromType(UnsplashTopicType.sustainability);

    default:
      return null;
    }
  }

  String title;
}