import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wallpaper_app/model/images_model.dart';

const apiKey = "14524688-14524688-887b725a7dd101f752e079dc8";
Future<ImagesModel> getData(
  String query,
  bool editorChoice,
  String color,
) async {
  print("started");
  http.Response response = await http.get(
    Uri.parse(
        "https://pixabay.com/api/?key=14524688-887b725a7dd101f752e079dc8&q=$query&editors_choice=$editorChoice&colors=$color"),
  );
  final parsed = jsonDecode(response.body);
  return ImagesModel.fromJson(parsed);
}
