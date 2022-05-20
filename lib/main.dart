
import 'package:flutter/material.dart';
import 'package:gfood/list.dart';
import 'package:gfood/list_map_with_index_extension.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  List_Data(),
    );
  }
}
