import 'package:http/http.dart' as http;
import 'package:clima/app_data.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    Uri uri = Uri.http(apiDomain, apiDomainPath, apiArguments);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
