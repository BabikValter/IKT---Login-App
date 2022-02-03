import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ikt_loginapp_final/models/vizsgalat.dart';

class DatabaseService {

  final String? uid;
  DatabaseService({ this.uid });

  final CollectionReference orvosCollection = FirebaseFirestore.instance.collection('orvos');

  Future updateUserData(String name, DateTime idopont, String orvos) async {
    return await orvosCollection.doc(uid).set({
      'name': name,
      'idopont': idopont,
      'orvos': orvos
    });
  }

  List<Vizsgalat> _vizsgalatListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Vizsgalat(
        name: doc.get('name') ?? '',
        idopont: doc.get('idopont') ?? '',
        orvos: doc.get('orvos') ?? ''
      );
    }).toList();
  }
  
  Stream<List<Vizsgalat>> get vizsgalatok {
    return orvosCollection.snapshots()
      .map(_vizsgalatListFromSnapshot);
  }
}