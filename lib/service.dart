import 'dart:convert';
import 'package:http/http.dart' as http;

class ImageRepo {
  final _apiKey = 'vq3nsPRo-XAmJesushKBrPFZ1CGsQ3yPUQrC3UTBjKE';

  Future<List> fetchImage() async {
    var responce = await http
        .get("https://api.unsplash.com/photos/?per_page=20&client_id=$_apiKey");

    return json.decode(responce.body);
  }
}
