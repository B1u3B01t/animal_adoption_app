import 'package:animal_adoption_app/models/cat.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CatDetailsPage extends StatefulWidget {
  final Cat cat;
  final Object avatarTag;

  CatDetailsPage(this.cat, {
    @required this.avatarTag
  });

  @override
  _CatDetailsPageState createState() => _CatDetailsPageState();
}

class _CatDetailsPageState extends State<CatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    // return Container(
      
    // );
  }
}