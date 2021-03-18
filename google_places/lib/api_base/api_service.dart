import "dart:async";
import 'package:chopper/chopper.dart';

// this is necessary for the generated code to find your class
part "api_service.chopper.dart";

@ChopperApi(baseUrl: "https://maps.googleapis.com/maps/api/place/search/json?location=23.03744,72.566&rankby=distance&types=bakery&sensor=true&key=AIzaSyB2Az9gVUzQULUc55xQD9AE7gj9Ni5hvJk")
abstract class ApiService extends ChopperService {

  // helper methods that help you instantiate your service
  static ApiService create([ChopperClient client]) =>
      _$ApiService(client);

  @Get(path: '')
  Future<Response> getTodo();
}