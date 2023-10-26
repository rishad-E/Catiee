import 'package:dogiee/model/model.dart';
import 'package:dogiee/service/service.dart';
import 'package:flutter/material.dart';

class CatProvider with ChangeNotifier {
  List<dynamic>? responseDetails;
  List<Breed>? items;

  Future<void> getCatDetails() async {
    await ServiceClass().getDetails().then(
          (value) => {
            // responseDetails = value,
            responseDetails =value
           
          },
        );
        // log(responseDetails.toString());
  }
}
