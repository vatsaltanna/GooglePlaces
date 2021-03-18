import 'package:chopper/chopper.dart';
import 'package:google_places/api_base/api_service.dart';

Repository repository = Repository();

class Repository {
  ApiService apiService;

  Repository() {
    final chopper = ChopperClient(
      services: [ApiService.create()],
    );
    apiService = chopper.getService<ApiService>();
  }

  Future<Response> getPlaces() {
    return apiService.getTodo();
  }
}
