import 'package:flutter/material.dart';
import 'favorite.dart';
import 'item.dart';

class PageDetails extends StatelessWidget {
  final Item item;

  const PageDetails({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(item.name),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(item.image),
                FavoriteA(),
                Text(
                  item.details,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ],
        ));
  }
}
