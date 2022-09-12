import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class blog_detail extends StatefulWidget {
  const blog_detail({super.key});

  @override
  State<blog_detail> createState() => _blog_detailState();
}

class _blog_detailState extends State<blog_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            width: 45,
            height: 35,
            alignment: Alignment.center,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.all(
                Radius.circular(125),
              ),
            ),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 21,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // blog back image content
              CachedNetworkImage(
                imageUrl:
                    "https://fosforludusunceler.com/wp-content/uploads/2019/09/Duvar-kagitlari-serisi-wallpaper-78.jpeg",
                imageBuilder: (context, imageProvider) => Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ), // blog author detail and date content
              // blog author detail and date content
              _buildBlogTopContent,
              // blog text content
              _buildBlogBodyContent,
              // blog comment create / list content
              _buildBlogListContent,
            ],
          ),
        ),
      ),
    );
  }

  // blog author detail and date content
  Widget get _buildBlogTopContent => Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: <Widget>[
                          CachedNetworkImage(
                            imageUrl:
                                "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                            imageBuilder: (context, imageProvider) => Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(125)),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Rümeysa Kadak",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "12 Eylül 2022",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 5),
              child: Text(
                "Görebileceğiniz En Güzel Doğa Harikası",
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  // blog text content
  Widget get _buildBlogBodyContent => Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
        child: Text(
          "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.",
          style: GoogleFonts.notoSans(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
              height: 1.7,
              letterSpacing: 0.5,
            ),
          ),
        ),
      );

  // blog comment create / list content
  Widget get _buildBlogListContent => Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 15, top: 15),
              child: Text(
                "Düşüncelerini Yaz",
                style: GoogleFonts.ubuntu(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            // comment add
            Container(
              width: double.infinity,
              height: 50,
              child: Row(
                children: <Widget>[
                  CachedNetworkImage(
                    imageUrl:
                        "https://media-exp1.licdn.com/dms/image/C4E03AQFFqLvpaxtEKw/profile-displayphoto-shrink_200_200/0/1645605479571?e=1668643200&v=beta&t=8HxhAkxN0chz-ff9PKMSS7vJZ8XREfUeV9eSsLCo7To",
                    imageBuilder: (context, imageProvider) => Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(125),
                        ),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Nuhcan ATAR",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                child: const TextField(
                  minLines: 6,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: "Yorum Yaz",
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: double.infinity,
              height: 30,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Yorumu Paylaş",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.send,
                      color: Colors.redAccent,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            // comment list
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 15),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      children: <Widget>[
                        // top
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      CachedNetworkImage(
                                        imageUrl:
                                            "https://iyikigormusum.com/public/uploads/files/foto1(1).jpg",
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          width: 36,
                                          height: 36,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(125)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "Ayşe Koçak",
                                        style: GoogleFonts.notoSans(
                                          textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "12.09.2022",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                        // body
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Gerçekten Harika Bir Yazı Olmuş!",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      children: <Widget>[
                        // top
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      CachedNetworkImage(
                                        imageUrl:
                                            "https://www.mobil13.com/wp-content/uploads/2019/02/yapay-zeka-sahte-yuz5.jpeg",
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          width: 36,
                                          height: 36,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(125)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        "Ahmet Demir",
                                        style: GoogleFonts.notoSans(
                                          textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                "12.09.2022",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ),
                        // body
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir!",
                          ),
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
}
