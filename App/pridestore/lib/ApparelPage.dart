import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pridestore/GlobalVars.dart';
import 'package:pridestore/ProductPage.dart';

import 'models/Product.dart';

class ApparelPage extends StatefulWidget {
  const ApparelPage({Key? key}) : super(key: key);

  @override
  _ApparelPageState createState() => _ApparelPageState();
}

class _ApparelPageState extends State<ApparelPage> {
  List<Product> apparels = [];
  List<Product> others = [];

  bool isApparel = true;

  bool isProductsLoaded = false;

  bool? isLiked = false;
  @override
  void initState() {
    super.initState();
    getProducts();
  }

  getProducts() async {
    await FirebaseFirestore.instance.collection('products').get().then((value) {
      for (var doc in value.docs) {
        print(doc.data());
        if (doc.data()["type"] == "Apparel") {
          Product prod = Product(
            description: doc.data()["description"],
            designUrl: doc.data()["designUrl"],
            designer: doc.data()["designer"],
            id: doc.data()["id"],
            name: doc.data()["name"],
            price: doc.data()["price"],
            type: doc.data()["type"],
          );
          apparels.add(prod);
        } else if (doc.data()["type"] == "Others") {
          Product prod = Product(
            description: doc.data()["description"],
            designUrl: doc.data()["designUrl"],
            designer: doc.data()["designer"],
            id: doc.data()["id"],
            name: doc.data()["name"],
            price: doc.data()["price"],
            type: doc.data()["type"],
          );
          others.add(prod);
        }
      }
      setState(() {
        isProductsLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print('Height: $height');
    print('Width: $width');
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 28, 61, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 375 / 375 * width,
              height: 63 / 812 * height,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 375 / 375 * width,
                          height: 63 / 812 * height,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(190, 53, 255, 1),
                                  Color.fromRGBO(
                                      153, 50, 118, 0.949999988079071),
                                  Color.fromRGBO(
                                      239, 74, 133, 0.8600000143051147),
                                  Color.fromRGBO(215, 130, 79, 1)
                                ]),
                          ))),
                  Positioned(
                      top: 22 / 812 * height,
                      left: 121 / 375 * width,
                      child: Text(
                        'Pride Store',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            // fontFamily: 'Poppins',
                            fontSize: 24 / 812 * height,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      )),
                  Positioned(
                    top: 15 / 812 * height,
                    left: 24 / 375 * width,
                    child: SvgPicture.asset(
                      'assets/images/vector.svg',
                      semanticsLabel: 'vector',
                      height: 36,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 1.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 105 / 375 * width,
                    height: 36 / 812 * height,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              if (isApparel != true) {
                                setState(() {
                                  isApparel = !isApparel;
                                });
                              }
                            },
                            child: Text(
                              'Apparel',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(225, 230, 241, 1),
                                  // fontFamily: 'Poppins',
                                  fontSize: 18 / 812 * height,
                                  // letterSpacing: -0.30000001192092896,
                                  fontWeight: FontWeight.w600,
                                  height: 1),
                            ),
                          ),
                          isApparel
                              ? Container(
                                  width: 75 / 375 * width,
                                  height: 2 / 812 * height,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                )
                              : Offstage(),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 105 / 375 * width,
                    height: 36 / 812 * height,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              if (isApparel == true) {
                                setState(() {
                                  isApparel = !isApparel;
                                });
                              }
                            },
                            child: Text(
                              'Others',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(225, 230, 241, 1),
                                  // fontFamily: 'Poppins',
                                  fontSize: 18 / 812 * height,
                                  // letterSpacing: -0.30000001192092896,
                                  fontWeight: FontWeight.w600,
                                  height: 1),
                            ),
                          ),
                          !isApparel
                              ? Container(
                                  width: 75,
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                )
                              : Offstage(),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 163 / 375 * width,
                    height: 47 / 812 * height,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                width: 163,
                                height: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(14),
                                    topRight: Radius.circular(14),
                                    bottomLeft: Radius.circular(14),
                                    bottomRight: Radius.circular(14),
                                  ),
                                  color: Color.fromRGBO(24, 38, 69, 1),
                                ))),
                        Positioned(
                            top: 11 / 375 * width,
                            left: 33 / 812 * height,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 4.0, 0, 0),
                              child: Text(
                                'Search',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(225, 230, 241, 1),
                                    // fontFamily: 'Poppins',
                                    fontSize: 14,
                                    // letterSpacing: -0.30000001192092896,
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                              ),
                            )),
                        Positioned(
                          top: 9 / 812 * height,
                          left: 11 / 375 * width,
                          child: Icon(
                            FontAwesomeIcons.search,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            isProductsLoaded
                ? isApparel
                    ? drawApparels(context, height, width)
                    : drawOthers(context, height, width)
                : Offstage(),
          ],
        ),
      ),
    );
  }

  drawApparels(context, height, width) {
    return Column(
      children: [
        ...apparels.map((e) => InkWell(
              onTap: () {
                Navigator.push(context, createRoute(ProductPage(prod: e)));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 172 * 2 / 375 * width,
                  height: 262 * 1.25 / 812 * height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(83, 83, 83, 0.25),
                          offset: Offset(0, 5),
                          blurRadius: 4)
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(190, 53, 255, 1),
                        Color.fromRGBO(153, 51, 119, 1),
                        Color.fromRGBO(239, 74, 133, 0.8600000143051147),
                        Color.fromRGBO(215, 130, 79, 1),
                        // Color.fromRGBO(214, 243, 33, 0.6700000166893005),
                        // Color.fromRGBO(228, 255, 61, 0.2083333283662796)
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          e.designUrl,
                          height: height * 0.25,
                        ),
                        // child: SvgPicture.asset('assets/images/im1.svg'),
                      ),
                      Text(
                        '${e.name}',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            // fontFamily: 'Poppins',
                            fontSize: 24 / 812 * height,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      ),
                      Container(
                          width: 153 * 2 / 375 * width,
                          height: 35 / 812 * height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                              bottomLeft: Radius.circular(14),
                              bottomRight: Radius.circular(14),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  '${e.price}',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      // fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 8.0, 8.0),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isLiked != isLiked;
                                      print(isLiked);
                                    });
                                  },
                                  icon: isLiked == false
                                      ? Icon(
                                          FontAwesomeIcons.heart,
                                          size: 18,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.solidHeart,
                                          size: 18,
                                        ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }

  drawOthers(context, height, width) {
    return Column(
      children: [
        ...others.map((e) => InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    createRoute(ProductPage(
                      prod: e,
                    )));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 172 * 2 / 375 * width,
                  height: 262 * 1.25 / 812 * height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(83, 83, 83, 0.25),
                          offset: Offset(0, 5),
                          blurRadius: 4)
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(190, 53, 255, 1),
                        Color.fromRGBO(153, 51, 119, 1),
                        Color.fromRGBO(239, 74, 133, 0.8600000143051147),
                        Color.fromRGBO(215, 130, 79, 1),
                        // Color.fromRGBO(214, 243, 33, 0.6700000166893005),
                        // Color.fromRGBO(228, 255, 61, 0.2083333283662796)
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          e.designUrl,
                          height: height * 0.25,
                        ),
                        // child: SvgPicture.asset('assets/images/im1.svg'),
                      ),
                      Text(
                        '${e.name}',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            // fontFamily: 'Poppins',
                            fontSize: 24 / 812 * height,
                            fontWeight: FontWeight.bold,
                            height: 1),
                      ),
                      Container(
                          width: 153 * 2 / 375 * width,
                          height: 35 / 812 * height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                              bottomLeft: Radius.circular(14),
                              bottomRight: Radius.circular(14),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  '${e.price}',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      // fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 8.0, 8.0),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isLiked != isLiked;
                                      print(isLiked);
                                    });
                                  },
                                  icon: isLiked == false
                                      ? Icon(
                                          FontAwesomeIcons.heart,
                                          size: 18,
                                        )
                                      : Icon(
                                          FontAwesomeIcons.solidHeart,
                                          size: 18,
                                        ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
