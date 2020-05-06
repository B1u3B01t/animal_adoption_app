import 'package:animal_adoption_app/services/api.dart';
import 'package:flutter/material.dart';
import 'package:animal_adoption_app/models/cat.dart';
import 'dart:async';

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
    // for(Cat cat in CatApi.allCatsFromJson(fileData)){
    //   _cats.add(cat);
    // }

    setState(() {
      _cats = CatApi.allCatsFromJson(fileData);
    });


  }

  Widget _getAppTitleWidget()
  {
    return new Text(
      'Cats',
      style: new TextStyle(
        color: Colors.white,
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
      );
  }

  Widget _buildCatItem(BuildContext context, int index)
  {
    Cat cat = _cats[index];

    return new Container(
      margin: const EdgeInsets.only(top:5.0),
      child: new Card(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ListTile(
              leading: new Hero(
                tag: index, 
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(cat.avatarUrl),
                )
                ),
              title: new Text(
                cat.name,
                style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
              ),
              subtitle: new Text(cat.description),
              isThreeLine: true,
              dense: false,
            )
          ],

        ),
      ),
    );
  }

  Widget _getListViewWidget(){
    return new Flexible(
      child: new RefreshIndicator(
        child: new ListView.builder(
          itemBuilder: _buildCatItem,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: _cats.length,), 
        onRefresh: refresh));
  }

  Future<Null> refresh()
  {
    _loadCats();
    return new Future<Null>.value();
  }

  Widget _buildBody(){
      return new Container(
        margin: const EdgeInsets.fromLTRB(8.0, 56.0, 8.0, 0.0),
        child: new Column(
          children: <Widget>[
            _getAppTitleWidget(),
            _getListViewWidget()
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body: _buildBody(),
    );
  }
}