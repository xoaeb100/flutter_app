import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:the_basics/models/item.dart';
import 'package:the_basics/widgets/drawer.dart';
import 'package:the_basics/widgets/item_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var days = 30;

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, ((index) => CatalogModel.items[0]));

    return Scaffold(
      appBar: AppBar(
        title: Text('FlopKart'),
      ),
      body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          }),
      drawer: MyDrawer(),
    );
  }
}
