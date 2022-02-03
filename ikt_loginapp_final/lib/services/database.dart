import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ikt_loginapp_final/models/vizsgalat.dart';

class DatabaseService {

  final String? uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference orvosCollection = FirebaseFirestore.instance.collection('orvos');

  Future updateUserData(String name, DateTime idopont, String orvos) async {
    return await orvosCollection.doc(uid).set({
      'name': name,
      'idopont': idopont,
      'orvos': orvos
    });
  }

  // brew list from snapshot
  List<Vizsgalat> _vizsgalatListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Vizsgalat(
        name: doc.get('name') ?? '',
        idopont: doc.get('idopont') ?? '',
        orvos: doc.get('orvos') ?? ''
      );
    }).toList();
  }
  

  // get brews streams
  Stream<List<Vizsgalat>> get brews {
    return orvosCollection.snapshots()
      .map(_vizsgalatListFromSnapshot);
  }
}