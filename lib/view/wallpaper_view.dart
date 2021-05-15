import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallpaper_app/model/images_model.dart';
import 'package:wallpaper_app/viewmodel/HomeController.dart';

class WallpaperView extends StatelessWidget {
  final String query;
  final bool editorChoice;
  final String color;

  const WallpaperView({Key key, this.query, this.editorChoice, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<ImagesModel>(
          future: getData(query, editorChoice, color),
          builder: (context, snapshot) {
            ImagesModel images = snapshot.data;

            if (snapshot.hasData)
              return Column(
                children: [
                  Text(
                    "Color Tones",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height / 2,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Image.network(
                              images.hits[index].largeImageURL);
                        },
                      )),
                ],
              );
            else
              return Center(
                child: CircularProgressIndicator(),
              );
          }),
    );
  }
}
