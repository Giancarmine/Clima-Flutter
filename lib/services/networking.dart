import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this._url);

  final String _url;

  Future getData() async {
    http.Response response = await http.get(_url);

    if (response.statusCode == 200) {
      var data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
