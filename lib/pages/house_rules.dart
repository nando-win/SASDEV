import 'package:flutter/material.dart';
import 'package:sasdev/api/api.dart';
import 'package:sasdev/models/get_model.dart';

class HouseRules extends StatefulWidget {
  final Map _data;

  HouseRules(this._data, {super.key});

  @override
  State<HouseRules> createState() => _HouseRulesState();
}

class _HouseRulesState extends State<HouseRules> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Api api = Api();

    List<GetModel> list = api.list() as List<GetModel>;

    for (var n in list) {
      print(n.toJson());
      print("----");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("House Rules")),
      body: const Align(alignment: Alignment.center),
    );
  }
}
