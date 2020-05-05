import 'package:meta/meta.dart';

class Cat{
  final int externalId;
  final String name;
  final String avatarUrl;
  final String location;
  final int likeCounter;
  final bool isAdopted;
  final List<String> pictures;
  final List<String> cattributes;
  final String description;


  Cat({
    @required this.externalId,
    @required this.name,
    @required this.avatarUrl,
    @required this.location,
    @required this.likeCounter,
    @required this.isAdopted,
    @required this.pictures,
    @required this.cattributes,
    @required this.description
  });

  @override
  String toString(){
    return "Cat $externalId is name $name";
  }



}