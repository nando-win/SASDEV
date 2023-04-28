import 'dart:convert';

import 'package:sasdev/models/get_model.dart';
import 'package:sasdev/models/post_model.dart';

import 'package:http/http.dart' as http;

class Api {
  static String baseUrl =
      'https://sys-dev.searchandstay.com/api/admin/house_rules';
  static String bearerToken =
      '40fe071962846075452a4f6123ae71697463cad20f51e237e2035b41af0513d8';

  Future<List<GetModel>> list() async {
    try {
      http.Response response = await http.get(Uri.parse(baseUrl), headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $bearerToken'
      });
      if (response.statusCode == 200) {
        print(response.body);

        var json = jsonDecode(utf8.decode(response.bodyBytes));

        List<GetModel> list = [];

        for (var n in json) {
          list.add(GetModel.fromJson(n));
        }
        return list;
      } else {
        print("List : StatusCode: ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print("List : StatusCode: ${e.toString()}");
      return [];
    }
  }

  // Future<List<Post>> create() async {
  //   try {
  //     http.Response response = await http.post(url)
  //   } catch (e) {

  //   }
  // }
}
