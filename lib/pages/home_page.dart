import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import '../models/catalog.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalog App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: CatalogModel.items[index]);
              }
          ),
        ),
        drawer: const MyDrawer()
    );
  }
}
