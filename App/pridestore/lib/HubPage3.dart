import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pridestore/OptionsPage.dart';

import 'GlobalVars.dart';

class CreateHubPage3 extends StatefulWidget {
  const CreateHubPage3({Key? key}) : super(key: key);

  @override
  _CreateHubPage3State createState() => _CreateHubPage3State();
}

class _CreateHubPage3State extends State<CreateHubPage3> {
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
                    width: 33 / 375 * width,
                    height: 43 / 812 * height,
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
                  SizedBox(width: 55),
                  SizedBox(
                    width: 140 / 375 * width,
                    height: 36 / 812 * height,
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
            SizedBox(height: 69.33),
            SizedBox(
              //width: 296,
              //height: 36,
              child: Text(
                "Design Submitted",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 60),
            Container(
              width: 351 / 375 * width,
              height: 295 / 812 * height,
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
                right: 32,
                top: 30,
                bottom: 36,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 285 / 375 * width,
                    height: 107 / 812 * height,
                    child: Text(
                      "Thank you for submitting your designs.",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    width: 285 / 375 * width,
                    height: 98 / 812 * height,
                    child: Text(
                      "We have recieved your design and we will be getting back to you really soon. Thank you once again for your contribution.",
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
            SizedBox(height: 79.33 / 812 * height),
            InkWell(
              onTap: () {
                Navigator.push(context, createRoute(OptionpageWidget()));
              },
              child: Container(
                width: 149 / 375 * width,
                height: 52 / 812 * height,
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
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 26,
                  top: 11,
                  bottom: 7,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      /*decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),*/
                      child: SvgPicture.asset(
                        'assets/images/Back.svg',
                        height: 35,
                      ),
                    ),
                    SizedBox(width: 3),
                    SizedBox(
                      width: 88 / 375 * width,
                      height: 34 / 812 * height,
                      child: Text(
                        "Home",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
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
      ]),
    );
  }
}
