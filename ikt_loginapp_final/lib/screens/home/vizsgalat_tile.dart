import 'package:flutter/material.dart';
import 'package:ikt_loginapp_final/models/vizsgalat.dart';
import 'package:intl/intl.dart';

class VizsgalatTile extends StatelessWidget {
  final Vizsgalat viszgalat;
  const VizsgalatTile({ Key? key, required this.viszgalat }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: const EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[100],
          ),
          title: Text(viszgalat.name),
          subtitle: Text(viszgalat.orvos + " - " + DateFormat("yyyy-MM-dd, HH:mm").format(viszgalat.idopont.toDate())),
        ),
      ),
    );
  }
}