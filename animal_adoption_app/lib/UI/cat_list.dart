import 'package:animal_adoption_app/services/api.dart';
import 'package:flutter/material.dart';
import 'package:animal_adoption_app/models/cat.dart';

class CatList extends StatefulWidget {
  @override
  _CatListState createState() => _CatListState();
}

class _CatListState extends State<CatList> {

  List<Cat> _cats = [];

  @override
  void initState()
  {
    super.initState();
    _loadCats();
  }

  _loadCats() async{
    String fileData = await DefaultAssetBundle.of(context).loadString('assets/cats.json');
    for(Cat cat in CatApi.allCatsFromJson(fileData)){
      _cats.add(cat);
    }
  }

  Widget _getAppTitleWidget()
  {
    return new Text(
      'Cats',
      style: new TextStyle(
        color: Colors.white,
        fontSize: 100.0,
        fontWeight: FontWeight.bold,
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body: _getAppTitleWidget(),
    );
  }
}