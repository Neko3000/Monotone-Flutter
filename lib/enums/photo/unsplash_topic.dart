enum UnsplashTopic{
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

extension UnsplashTopicExtension on UnsplashTopic{

  String get title {
    switch(this){
      case UnsplashTopic.nature:
        return 'Nature';

      case UnsplashTopic.people:
        return 'People';

      case UnsplashTopic.streetPhotography:
        return 'Street Photography';

      case UnsplashTopic.artsCulture:
        return 'Arts & Culture';

      case UnsplashTopic.architecture:
        return 'Architecture';

      case UnsplashTopic.travel:
        return 'Travel';

      case UnsplashTopic.technology:
        return 'Technology';

      case UnsplashTopic.animals:
        return 'Animals';

      case UnsplashTopic.foodDrink:
        return 'Food & Drink';

      case UnsplashTopic.sustainability:
        return 'Sustainability';

      default:
        return '';
    }
  }

  String get key {
    switch(this){
      case UnsplashTopic.nature:
        return 'nature';

      case UnsplashTopic.people:
        return 'people';

      case UnsplashTopic.streetPhotography:
        return 'street-photography';

      case UnsplashTopic.artsCulture:
        return 'arts-culture';

      case UnsplashTopic.architecture:
        return 'architecture';

      case UnsplashTopic.travel:
        return 'travel';

      case UnsplashTopic.technology:
        return 'technology';

      case UnsplashTopic.animals:
        return 'animals';

      case UnsplashTopic.foodDrink:
        return 'food-drink';

      case UnsplashTopic.sustainability:
        return 'sustainability';

      default:
        return '';
    }
  }

  static UnsplashTopic rawValue(String key){
    switch(key){
      case 'nature':
        return UnsplashTopic.nature;
      case 'people':
        return UnsplashTopic.people;
      case 'streetPhotography':
        return UnsplashTopic.streetPhotography;
      case 'artsCulture':
        return UnsplashTopic.artsCulture;
      case 'architecture':
        return UnsplashTopic.architecture;
      case 'travel':
        return UnsplashTopic.travel;
      case 'technology':
        return UnsplashTopic.technology;
      case 'animals':
        return UnsplashTopic.animals;
      case 'foodDrink':
        return UnsplashTopic.foodDrink;
      case 'sustainability':
        return UnsplashTopic.sustainability;
      default:
        return null;
    }
  }
}

/*
class UnsplashTopic{
  UnsplashTopic(this.type);

  //region FromType
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
  //endregion

  //region FromKey
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
  //endregion

  String title;
}
*/