import 'package:blog_app/blog_detail_page/blog_detail.dart';
import 'package:blog_app/home/home.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(buildRouteList());
}

class buildRouteList extends StatelessWidget {
  const buildRouteList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/homePg",
      routes: {
        "/homePg": (context) => buildHomePg(),
        "/blogDetailPg": (context) => blog_detail(),
      },
      home: buildHomePg(),
    );
  }
}
