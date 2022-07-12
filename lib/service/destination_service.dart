// ignore_for_file: use_rethrow_when_possible

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelholic/models/model_destination.dart';

class DestinationService {
  final CollectionReference _desReference =
      FirebaseFirestore.instance.collection('destinations');

  Future<List<ModelDestination>> fetchModel() async {
    try {
      QuerySnapshot result = await _desReference.get();

      List<ModelDestination> model = result.docs.map((e) {
        return ModelDestination.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return model;
    } catch (e) {
      throw e;
    }
  }
}
