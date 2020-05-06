import 'package:animal_adoption_app/models/cat.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class CatDetailsHeader extends StatefulWidget {

  final Cat cat;
  final Object avatarTag;

  CatDetailsHeader(this.cat, {@required this.avatarTag});


  @override
  _CatDetailsHeaderState createState() => _CatDetailsHeaderState();
}

class _CatDetailsHeaderState extends State<CatDetailsHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}