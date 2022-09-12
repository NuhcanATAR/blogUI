import 'package:blog_app/animation/slide_route.dart';
import 'package:blog_app/blog_detail_page/blog_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class buildHomePg extends StatefulWidget {
  const buildHomePg({super.key});

  @override
  State<buildHomePg> createState() => _buildHomePgState();
}

class _buildHomePgState extends State<buildHomePg> {
  int currentPage = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: _buildAppBarTitleContent,
        actions: [
          Container(
            width: 45,
            margin: EdgeInsets.only(top: 20, right: 15, bottom: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.black54,
              size: 20,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentPage,
        circleColor: Colors.redAccent,
        activeIconColor: Colors.white,
        circleSize: 55,
        barHeight: 50,
        circleOutline: -30,
        inactiveIconColor: Colors.grey,
        tabs: [
          TabData(icon: Icons.account_circle, iconSize: 20),
          TabData(icon: Icons.favorite, iconSize: 20),
          TabData(icon: Icons.home, iconSize: 20),
          TabData(icon: Icons.headphones, iconSize: 20),
          TabData(icon: Icons.settings, iconSize: 20),
        ],
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // user search content
              _buildUserSearchInputContent,
              // featured post blog content
              _buildFeaturePostBlogContent,
              // popularity post blog content
              _buildPopularityBlogContent,
              // recommended for you blog content
              _buildRecommendForYouBlogContent,
              SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // appBar widget content
  Widget get _buildAppBarTitleContent => Container(
        width: 240,
        padding: EdgeInsets.only(top: 5),
        child: Row(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl:
                  "https://media-exp1.licdn.com/dms/image/C4E03AQFFqLvpaxtEKw/profile-displayphoto-shrink_200_200/0/1645605479571?e=1668643200&v=beta&t=8HxhAkxN0chz-ff9PKMSS7vJZ8XREfUeV9eSsLCo7To",
              imageBuilder: (context, imageProvider) => Container(
                width: 47,
                height: 47,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 170,
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 170,
                    child: Text(
                      "Merhaba👋",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 170,
                    child: Text(
                      "Nuhcan ATAR",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  // feature blog content
  Widget get _buildFeaturePostBlogContent => Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Öne Çıkan Blog Yazıları",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 21,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              padding: EdgeInsets.only(bottom: 15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        SlideTopRoute(
                          page: blog_detail(),
                        ),
                      );
                    },
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://fosforludusunceler.com/wp-content/uploads/2019/09/Duvar-kagitlari-serisi-wallpaper-78.jpeg",
                      imageBuilder: (context, imageProvider) => Container(
                        width: 165,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.grey.withOpacity(0.3),
                                BlendMode.colorBurn),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Container(
                                width: 160,
                                margin: EdgeInsets.only(left: 8, right: 8),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Görebileceğiniz en güzel doğa harikası",
                                        style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 160,
                                      child: Row(
                                        children: <Widget>[
                                          CachedNetworkImage(
                                            imageUrl:
                                                "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(125)),
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            placeholder: (context, url) =>
                                                CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Rümeysa Kadak",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => blog_detail(),
                        ),
                      );
                    },
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://i.pinimg.com/236x/af/0c/db/af0cdbdb39d845b46f832afb633bd707.jpg",
                      imageBuilder: (context, imageProvider) => Container(
                        width: 165,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.grey.withOpacity(0.3),
                                BlendMode.colorBurn),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Container(
                                width: 160,
                                margin: EdgeInsets.only(left: 8, right: 8),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Yağmur Ormanları Hakkında",
                                        style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 160,
                                      child: Row(
                                        children: <Widget>[
                                          CachedNetworkImage(
                                            imageUrl:
                                                "https://listelist.com/wp-content/uploads/2019/02/her-tiklamada.jpg",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(125)),
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            placeholder: (context, url) =>
                                                CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Mehmet Erçetin",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => blog_detail(),
                        ),
                      );
                    },
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://icdn.ensonhaber.com/resimler/galeri/2_11884.jpg",
                      imageBuilder: (context, imageProvider) => Container(
                        width: 165,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.grey.withOpacity(0.3),
                                BlendMode.colorBurn),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Container(
                                width: 160,
                                margin: EdgeInsets.only(left: 8, right: 8),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Kışın Gezebileceğiniz Güzel Yerler",
                                        style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 160,
                                      child: Row(
                                        children: <Widget>[
                                          CachedNetworkImage(
                                            imageUrl:
                                                "https://imgrosetta.mynet.com.tr/file/12310939/12310939-728xauto.jpg",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(125)),
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            placeholder: (context, url) =>
                                                CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Rümeysa Akgedik",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  // popularity post blog content
  Widget get _buildPopularityBlogContent => Container(
        margin: EdgeInsets.only(bottom: 5),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Haftanın Popüler Blog Yazıları",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 21,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 310,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 280,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 0.8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        // top
                        CachedNetworkImage(
                          imageUrl:
                              "https://uploads-ssl.webflow.com/5d7e1006a3db08a2a535fb16/5efe12e6e7bd5e723f366c82_geyve.jpg",
                          imageBuilder: ((context, imageProvider) => Container(
                                width: 280,
                                height: 160,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                ),
                              )),
                        ), // body
                        // body
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 280,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Doğal Çevre",
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 280,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            "Dağ Tırmanışı Güvenli bi şekilde Nasıl Yapılır?",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        Container(
                          width: 280,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacı... ",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 280,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 0.8),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        // top
                        CachedNetworkImage(
                          imageUrl:
                              "http://3.bp.blogspot.com/-gEoHUbP7TkA/T5e4ngao89I/AAAAAAAAB80/tMQcEsrzQjs/s1600/orman_manzara_resimleri12.jpg",
                          imageBuilder: ((context, imageProvider) => Container(
                                width: 280,
                                height: 160,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    topRight: Radius.circular(4),
                                  ),
                                ),
                              )),
                        ), // body
                        // body
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 280,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Doğal Çevre",
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 280,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            "Doğa Yürüyüşü Yapılırken Nelere Dikkat Edilmeli?",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        Container(
                          width: 280,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacı... ",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  // recommend for you blog content
  Widget get _buildRecommendForYouBlogContent => Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Sizin İçin Tavsiye Edilenler",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 21,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  // blog content
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Turizm / Çevre",
                                    style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Harika Kayak Merkezi Bölgeleri Hakkında Bilmeni..",
                                    style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan  metinlerdir. ",
                                    style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              "https://mediap.flypgs.com/awh/1254/836//files/Ekstrem_Sporlar/kayak-sporunun-tarihcesi.jpg",
                          imageBuilder: ((context, imageProvider) => Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Spor / Yarış",
                                    style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Zorlu Arazilerin Sporu Off-Road Hakkında",
                                    style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan  metinlerdir. ",
                                    style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              "https://arabam-blog.mncdn.com/wp-content/uploads/2021/02/offroad-3747184_1920.jpg",
                          imageBuilder: ((context, imageProvider) => Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Spor / Futbol",
                                    style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Zorlu Maçlarda Yapılan Isınma Haraketleri",
                                    style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: double.infinity,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan  metinlerdir. ",
                                    style: GoogleFonts.notoSans(
                                      textStyle: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CachedNetworkImage(
                          imageUrl:
                              "https://cdn.ntvspor.net/f759e02e99384b2cafc228069d0725fe.jpg",
                          imageBuilder: ((context, imageProvider) => Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  // user search ınput content
  Widget get _buildUserSearchInputContent => Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 5),
        padding: EdgeInsets.all(2),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 20,
                    ),
                    hintText: "Ne Aramıştınız?",
                    hintStyle: TextStyle(fontSize: 15),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 42,
              height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: CachedNetworkImage(
                imageUrl:
                    "https://img.icons8.com/external-others-inmotus-design/67/000000/external-Settings-round-icons-others-inmotus-design-18.png",
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ],
        ),
      );
}
