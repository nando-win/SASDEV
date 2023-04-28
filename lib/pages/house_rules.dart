import 'package:flutter/material.dart';

class HouseRules extends StatefulWidget {
  final Map _data;

  const HouseRules(this._data, {super.key});

  @override
  State<HouseRules> createState() => _HouseRulesState();
}

class _HouseRulesState extends State<HouseRules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("House Rules")),
      body: const Align(alignment: Alignment.center),
    );
  }
}
