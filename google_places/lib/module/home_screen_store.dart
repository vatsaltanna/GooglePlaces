import 'dart:convert';

import 'package:google_places/api_base/repository.dart';
import 'package:google_places/models/places_reponse.dart';
import 'package:mobx/mobx.dart';

part 'home_screen_store.g.dart';

class HomeScreenStore = _HomeScreenStore with _$HomeScreenStore;

abstract class _HomeScreenStore with Store {
  @action
  Future getPlaces() async {
    final result = await repository.getPlaces();
    final placesResponse = PlacesResponse.fromJson(jsonDecode(result.body));
    print(placesResponse);
  }
}
