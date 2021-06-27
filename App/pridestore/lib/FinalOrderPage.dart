import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pridestore/OptionsPage.dart';

import 'GlobalVars.dart';

class FinalOrderPage extends StatefulWidget {
  const FinalOrderPage({Key? key}) : super(key: key);

  @override
  _FinalOrderPageState createState() => _FinalOrderPageState();
}

class _FinalOrderPageState extends State<FinalOrderPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
        backgroundColor: Color(0xff0c1c3d),
        body: ListView(children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 375 / 375 * width,
                height: 63 / 812 * height,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 375 / 375 * width,
                      height: 63 / 812 * height,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffbe35ff),
                            Color(0xf2993276),
                            Color(0xdbef4a85),
                            Color(0xffd7824f)
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 116,
                        top: 11,
                        bottom: 12,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 33,
                            height: 43,
                            /*decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                          color: Color(0x7f7f3a44),
                        ),*/
                            child: SvgPicture.asset(
                              'assets/images/vector.svg',
                              height: 40,
                            ),
                          ),
                          SizedBox(width: 65),
                          SizedBox(
                            width: 137,
                            height: 36,
                            child: Text(
                              "Pride Store",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 72.33),
              Container(
                width: 351,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f535353),
                      blurRadius: 4,
                      offset: Offset(0, 5),
                    ),
                  ],
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 76,
                  right: 69,
                  top: 11,
                  bottom: 12,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 174,
                      height: 36,
                      child: Text(
                        "Order Placed ",
                        style: GoogleFonts.poppins(
                          color: Color(0xff151515),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 24,
                      height: 24,
                      /*decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),*/
                      child: SvgPicture.asset(
                        'assets/images/Circled_Check.svg',
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 72.33),
              Container(
                width: 351,
                height: 303,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f535353),
                      blurRadius: 4,
                      offset: Offset(0, 5),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffbe35ff),
                      Color(0xf2993276),
                      Color(0xdbef4a85),
                      Color(0xffd7824f)
                    ],
                  ),
                ),
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 285,
                      height: 104,
                      child: Text(
                        "Thank you for shopping at Pride Store",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      width: 285,
                      height: 120,
                      child: Text(
                        "Your order has been placed succesfully and will be shipped very soon. You will recieve your order updates as soon as it is shipped.",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 72.33),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context, createRoute(OptionpageWidget()));
                },
                child: Container(
                  width: 351,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f535353),
                        blurRadius: 4,
                        offset: Offset(0, 5),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 53,
                    top: 12,
                    bottom: 11,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 11.11,
                        height: 18,
                        /*decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff151515),
                    ),*/
                        child: SvgPicture.asset(
                          'assets/images/Back.svg',
                          height: 40,
                        ),
                      ),
                      SizedBox(width: 39.89),
                      SizedBox(
                        width: 223,
                        height: 36,
                        child: Text(
                          "Back to Shopping",
                          style: GoogleFonts.poppins(
                            color: Color(0xff151515),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ]));
  }
}
