import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pridestore/GlobalVars.dart';
import 'package:pridestore/HubPage2.dart';
import 'package:pridestore/models/User.dart';

class CreateHubPage1 extends StatefulWidget {
  AppUser? appUser;
  CreateHubPage1({this.appUser});
  @override
  _CreateHubPage1State createState() => _CreateHubPage1State(appUser: appUser);
}

class _CreateHubPage1State extends State<CreateHubPage1> {
  AppUser? appUser;
  _CreateHubPage1State({this.appUser});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      backgroundColor: Color(0xff0c1c3d),
      body: ListView(
        children: [
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
                      width: 375,
                      height: 63,
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
                            child: SvgPicture.asset(
                              'assets/images/vector.svg',
                              height: 40,
                            ),
                          ),
                          SizedBox(width: 65),
                          SizedBox(
                            //width: 140,
                            //height: 36,
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
              SizedBox(height: 100.33 / 812 * height),
              SizedBox(
                width: 351,
                height: 46,
                child: Text(
                  "Welcome to The Hub",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 60.33),
              Container(
                width: 351 / 375 * width,
                height: 512,
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
                      Color(0xff993377),
                      Color(0xdbef4a85),
                      Color(0xffd7824f)
                    ],
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 33,
                  right: 34,
                  top: 24,
                  bottom: 43,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 284,
                      height: 189,
                      child: Text(
                        "Here at Pride Store one of our goals is to uplift the creators and artists in the community.\nIntroducing, The Hub. \nFor the creators and artists who wish to monetize their art in the best way possible.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.33),
                    SizedBox(
                      width: 284,
                      height: 139,
                      child: Text(
                        "If you are a designer or an artists, feel free to submit your designs. These will be sold commercially and you will get paid for your contribution!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.33),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            createRoute(CreateHubPage2(appUser: appUser)));
                      },
                      child: Container(
                        width: 149,
                        height: 52,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Submit",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
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
                    //SizedBox(height: 10.33),
                    /*SizedBox(
                      width: 88,
                      height: 34,
                      child: Text(
                        "Submit",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),
              //SizedBox(height: 15.33),
            ],
          ),
        ],
      ),
    );
  }
}
