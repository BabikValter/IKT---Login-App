import 'package:flutter/material.dart';
import 'package:ikt_loginapp_final/models/vizsgalat.dart';
import 'package:provider/provider.dart';
import 'vizsgalat_tile.dart';

class VizsgalatList extends StatefulWidget {
  const VizsgalatList({Key? key}) : super(key: key);

  @override
  _VizsgalatListState createState() => _VizsgalatListState();
}

class _VizsgalatListState extends State<VizsgalatList> {
  @override
  Widget build(BuildContext context) {
    final vizsgalatok = Provider.of<List<Vizsgalat>>(context);

    return ListView.builder(
      itemCount: vizsgalatok.length,
      itemBuilder: (context, index) {
        return VizsgalatTile(viszgalat: vizsgalatok[index]);
      },
    );
  }
}
