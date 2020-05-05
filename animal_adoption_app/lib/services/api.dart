import 'dart:convert';
import 'package:animal_adoption_app/models/cat.dart';

class CatApi {
  static List<Cat> allCatsFromJson(String jsonData){
    List<Cat> cats = [];
    json.decode(jsonData)['cats'].forEach((cat) => cats.add(_forMap(cat)));
    return cats;

  }

  static Cat _forMap(Map<String, dynamic> map){
    return new Cat(
      externalId: map['id'],
      name: map['name'],
      avatarUrl: map['image_url'], 
      location: map['location'], 
      likeCounter: map['like_counter'], 
      isAdopted: map['adopted'], 
      pictures: List<String>.from(map['pictures']), 
      cattributes: List<String>.from(map['cattributes']),
      description: map['description']);
  }
}