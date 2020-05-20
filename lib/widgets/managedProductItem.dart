import 'package:flutter/material.dart';

import '../config/titlesIconsMessages/widgets/managedProductItem.dart';

class ManagedProductItems extends StatelessWidget {
  String _id;
  String _title;
  String _imageUrl;

  ManagedProductItems(this._id, this._title, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(_imageUrl)),
        title: Text(_title),
        trailing: Container(
            width: 100,
            child: Row(children: <Widget>[
          IconButton(icon: MAN_TILE_EDIT_ICO, onPressed: null),
          IconButton(icon: MAN_TILE_DELETE_ICO, onPressed: null),
        ])));
  }
}