import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pridestore/CartPage.dart';
import 'package:pridestore/GlobalVars.dart';

import 'models/Product.dart';

class ProductPage extends StatefulWidget {
  Product? prod;
  ProductPage({this.prod});
  @override
  _ProductPageState createState() => _ProductPageState(prod);
}

class _ProductPageState extends State<ProductPage> {
  Product? prod;

  bool isAddedtoCart = false;
  _ProductPageState(this.prod);
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 8.0),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.arrowLeft,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            prod!.designUrl,
                            height: height * 0.25,
                          ),
                          // child: SvgPicture.asset('assets/images/im1.svg'),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${prod!.price}',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      // fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      FontAwesomeIcons.heart,
                                      size: 18,
                                    ),
                                  ),
                                )
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '${prod!.name}',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    // fontFamily: 'Poppins',
                    fontSize: 30 / 812 * height,
                    fontWeight: FontWeight.bold,
                    height: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Designed by - ${prod!.designer}\n\n${prod!.description}',
                softWrap: true,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(186, 186, 189, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
            SizedBox(
              height: isAddedtoCart == false ? height * 0.15 : height * 0.15,
              child: isAddedtoCart
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Center(
                            child: Text(
                              "Added to Cart",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          width: 153,
                          height: 49,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: Colors.green,
                          ),
                        ),
                      ),
                    )
                  : Offstage(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    cart.add(prod!);
                    print(cart);
                    Navigator.push(
                        context, createRoute(CreateCartPage(cart: cart)));
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Buy Now",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color(0xff151515),
                          fontSize: 16,
                          // fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    width: 153,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    cart.add(prod!);
                    setState(() {
                      isAddedtoCart = true;
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Add to Cart",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color(0xff151515),
                          fontSize: 16,
                          // fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    width: 153,
                    height: 49,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
