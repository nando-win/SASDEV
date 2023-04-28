import 'dart:convert' as convert;
import 'dart:io';

import 'package:http/http.dart' as http;

void main() async {
  final json = await fetch();

  print(json);
}

Future fetch() async {
  var url =
      Uri.https('https://sys-dev.searchandstay.com/api/admin/house_rules');

  var response = await http.get(
      'https://sys-dev.searchandstay.com/api/admin/house_rules' as Uri,
      headers: {
        HttpHeaders.authorizationHeader:
            'Bearer 40fe071962846075452a4f6123ae71697463cad20f51e237e2035b41af0513d8'
      });
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    return jsonResponse;
  }
}
