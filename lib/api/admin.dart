import 'dart:convert' as convert;
import 'dart:io';

import 'package:http/http.dart' as http;

void main() async {
  final json = await show(545);

  print(json);
}

void showID(int id) async {
  // const identifier = id;
  final json = await show(id);

  print(json);
}

const baseURL = 'https://sys-dev.searchandstay.com/api/admin/house_rules';
const bearerToken =
    '40fe071962846075452a4f6123ae71697463cad20f51e237e2035b41af0513d8';

Future list() async {
  var url = Uri.parse('$baseURL/2');

  var response = await http.get(url, headers: {
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': 'Bearer $bearerToken'
  });
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    return jsonResponse;
  }
}

Future show(int id) async {
  var url = Uri.parse('$baseURL/$id');

  var response = await http.get(url, headers: {
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': 'Bearer $bearerToken'
  });
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    return jsonResponse;
  }
}
