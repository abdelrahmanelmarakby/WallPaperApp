import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wallpaper_app/view/wallpaper_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              _buildSearchBar(),
              _buildColorTones(),
              _buildCatgories(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.search_outlined,
          color: Colors.grey.withOpacity(.54),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: "Find Wallpaper...",
        hintStyle: TextStyle(color: Colors.grey.withOpacity(.54)),
        border: UnderlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  Widget _buildColorTones() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Color Tones",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: [
              ColorTone(
                color: Colors.blue,
              ),
              ColorTone(
                color: Colors.green,
              ),
              ColorTone(
                color: Colors.pink,
              ),
              ColorTone(
                color: Colors.black,
              ),
              ColorTone(
                color: Colors.redAccent,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildCatgories(context) {
    return Column(
      children: [
        Text(
          "Color Tones",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2,
          child: GridView(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 70, sigmaX: 70),
                  child: Container(
                    child: Center(
                      child: Text(
                        "Nature",
                        style: TextStyle(fontSize: 70, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2021/04/22/06/40/duck-6198196_960_720.jpg"),
                        )),
                  ),
                ),
              ],
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              )),
        ),
      ],
    );
  }
}

class ColorTone extends StatelessWidget {
  const ColorTone({
    Key key,
    this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WallpaperView(
              color: color.toString(),
              query: "",
              editorChoice: true,
            ),
          )),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: color),
          height: 60,
          width: 60,
        ),
      ),
    );
  }
}
