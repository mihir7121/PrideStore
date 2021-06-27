import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pridestore/CreateAccountWidget.dart';
import 'package:pridestore/GlobalVars.dart';
import 'package:pridestore/OptionsPage.dart';

import 'Auth.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  String email = '';

  String password = '';
  AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print('Height: $height');
    print('Width: $width');
    return Scaffold(
      // body: Container(
      //     width: width,
      //     height: height,
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight,
      //           colors: [
      //             Color.fromRGBO(190, 53, 255, 0.6499999761581421),
      //             Color.fromRGBO(153, 50, 118, 0.8100000023841858),
      //             Color.fromRGBO(239, 74, 133, 0.8999999761581421),
      //             Color.fromRGBO(215, 130, 79, 1)
      //           ]),
      //     ),
      //     child: Stack(children: <Widget>[
      //       Positioned(
      //           bottom: 0,
      //           left: 0,
      //           child: Container(
      //               width: width,
      //               height: 489,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.only(
      //                   topLeft: Radius.circular(64),
      //                   topRight: Radius.circular(64),
      //                   bottomLeft: Radius.circular(0),
      //                   bottomRight: Radius.circular(0),
      //                 ),
      //                 boxShadow: [
      //                   BoxShadow(
      //                       color: Color.fromRGBO(0, 0, 0, 0.25),
      //                       offset: Offset(0, 4),
      //                       blurRadius: 4)
      //                 ],
      //                 color: Color.fromRGBO(12, 28, 61, 1),
      //               ))),
      //       Positioned(
      //         top: height * (458 / 812),
      //         left: width * (37 / 375),
      //         child: Container(
      //           width: width * 0.8,
      //           height: height * (40 / 375),
      //           child: Stack(
      //             children: <Widget>[
      //               Positioned(
      //                   top: 0,
      //                   left: 0,
      //                   child: Container(
      //                       width: width * (300 / 375),
      //                       height: height * (40 / 812),
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.only(
      //                           topLeft: Radius.circular(20),
      //                           topRight: Radius.circular(20),
      //                           bottomLeft: Radius.circular(20),
      //                           bottomRight: Radius.circular(20),
      //                         ),
      //                         color: Color.fromRGBO(0, 0, 0, 0.25),
      //                       ))),
      //               Positioned(
      //                 top: 11 / 812 * height,
      //                 left: 17 / 375 * width,
      //                 child: Text(
      //                   'Username ',
      //                   textAlign: TextAlign.left,
      //                   style: GoogleFonts.poppins(
      //                     color: Color.fromRGBO(186, 186, 189, 1),
      //                     fontSize: 15,
      //                     fontWeight: FontWeight.normal,
      //                     height: 1,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Positioned(
      //           top: height * (518 / 812),
      //           left: width * (37 / 375),
      //           child: Container(
      //               width: width * 0.8,
      //               height: 40 / 812 * height,
      //               child: Stack(children: <Widget>[
      //                 Positioned(
      //                     top: 0,
      //                     left: 0,
      //                     child: Container(
      //                         width: 300 / 375 * width,
      //                         height: (40 / 812) * height,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.only(
      //                             topLeft: Radius.circular(20),
      //                             topRight: Radius.circular(20),
      //                             bottomLeft: Radius.circular(20),
      //                             bottomRight: Radius.circular(20),
      //                           ),
      //                           color: Color.fromRGBO(0, 0, 0, 0.25),
      //                         ))),
      //                 Positioned(
      //                     top: 11,
      //                     left: 17,
      //                     child: Text(
      //                       'Password',
      //                       textAlign: TextAlign.left,
      //                       style: GoogleFonts.poppins(
      //                           color: Color.fromRGBO(186, 186, 189, 1),
      //                           fontSize: 15,
      //                           letterSpacing:
      //                               0 /*percentages not used in flutter. defaulting to zero*/,
      //                           fontWeight: FontWeight.normal,
      //                           height: 1),
      //                     )),
      //               ]))),
      //       Positioned(
      //           top: 578 / 812 * height,
      //           left: 37 / 375 * width,
      //           child: Container(
      //             width: 150 / 375 * width,
      //             height: 40 / 812 * height,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.only(
      //                 topLeft: Radius.circular(20),
      //                 topRight: Radius.circular(20),
      //                 bottomLeft: Radius.circular(20),
      //                 bottomRight: Radius.circular(20),
      //               ),
      //             ),
      //             child: Card(
      //                 color: Color.fromRGBO(0, 0, 0, 0.25),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(20),
      //                 ),
      //                 child: InkWell(
      //                   onTap: () {
      //                     Navigator.pushReplacement(
      //                         context, createRoute(OptionpageWidget()));
      //                   },
      //                   child: Padding(
      //                     padding:
      //                         const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      //                     child: Text(
      //                       'Log In',
      //                       textAlign: TextAlign.center,
      //                       style: GoogleFonts.poppins(
      //                           color: Color.fromRGBO(255, 255, 255, 1),
      //                           fontSize: 15,
      //                           fontWeight: FontWeight.normal,
      //                           height: 1),
      //                     ),
      //                   ),
      //                 )),
      //           )),
      //       Positioned(
      //           top: height * (375 / 812),
      //           left: width * (125 / 375),
      //           child: Text(
      //             'Log In',
      //             textAlign: TextAlign.center,
      //             style: GoogleFonts.poppins(
      //                 color: Color.fromRGBO(255, 255, 255, 1),
      //                 fontSize: height * 0.0443,
      //                 fontWeight: FontWeight.normal,
      //                 height: 1),
      //           )),
      //       Positioned(
      //           top: height * (648 / 812),
      //           left: width * (22 / 375),
      //           child: Container(
      //               width: 331,
      //               height: 2,
      //               decoration: BoxDecoration(
      //                 color: Color.fromRGBO(196, 196, 196, 0.5),
      //               ))),
      //       Positioned(
      //           top: 688 / 812 * height,
      //           left: 162 / 375 * width,
      //           child: Container(
      //               width: 50 / 375 * width,
      //               height: 50 / 375 * width,
      //               child: IconButton(
      //                   onPressed: () {}, icon: Icon(FontAwesomeIcons.google)),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.only(
      //                   topLeft: Radius.circular(14),
      //                   topRight: Radius.circular(14),
      //                   bottomLeft: Radius.circular(14),
      //                   bottomRight: Radius.circular(14),
      //                 ),
      //                 gradient: LinearGradient(
      //                     begin: Alignment.topLeft,
      //                     end: Alignment.bottomRight,
      //                     colors: [
      //                       Color.fromRGBO(190, 53, 255, 1),
      //                       Color.fromRGBO(215, 130, 79, 1)
      //                     ]),
      //               ))),
      //       // Positioned(
      //       //     top: 688 / 812 * height,
      //       //     left: 152 / 375 * width,
      //       //     child: Container(
      //       //         width: 50 / 375 * width,
      //       //         height: 50 / 375 * width,
      //       //         decoration: BoxDecoration(
      //       //           borderRadius: BorderRadius.only(
      //       //             topLeft: Radius.circular(14),
      //       //             topRight: Radius.circular(14),
      //       //             bottomLeft: Radius.circular(14),
      //       //             bottomRight: Radius.circular(14),
      //       //           ),
      //       //           gradient: LinearGradient(
      //       //               begin: Alignment(6.123234262925839e-17, 1),
      //       //               end: Alignment(-1, 6.123234262925839e-17),
      //       //               colors: [
      //       //                 Color.fromRGBO(190, 53, 255, 1),
      //       //                 Color.fromRGBO(215, 130, 79, 1)
      //       //               ]),
      //       //         ))),
      //       // Positioned(
      //       //     top: 688 / 812 * height,
      //       //     left: 240 / 375 * width,
      //       //     child: Container(
      //       //         width: 50 / 375 * width,
      //       //         height: 50 / 375 * width,
      //       //         child: IconButton(
      //       //             onPressed: () {}, icon: Icon(FontAwesomeIcons.google)),
      //       //         decoration: BoxDecoration(
      //       //           borderRadius: BorderRadius.only(
      //       //             topLeft: Radius.circular(14),
      //       //             topRight: Radius.circular(14),
      //       //             bottomLeft: Radius.circular(14),
      //       //             bottomRight: Radius.circular(14),
      //       //           ),
      //       //           gradient: LinearGradient(
      //       //               begin: Alignment(6.123234262925839e-17, 1),
      //       //               end: Alignment(-1, 6.123234262925839e-17),
      //       //               colors: [
      //       //                 Color.fromRGBO(190, 53, 255, 1),
      //       //                 Color.fromRGBO(215, 130, 79, 1)
      //       //               ]),
      //       //         ))),
      //       Positioned(
      //           top: 763 / 812 * height,
      //           left: 27 / 375 * width,
      //           child: InkWell(
      //             onTap: () {
      //               Navigator.pop(context);
      //             },
      //             child: Text(
      //               'Don’t have an account? Create account',
      //               textAlign: TextAlign.left,
      //               style: GoogleFonts.poppins(
      //                   color: Colors.blue,
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.normal,
      //                   height: 1),
      //             ),
      //           )),
      //       Positioned(
      //         top: 83 / 812 * height,
      //         left: 112 / 375 * width,
      //         child: SvgPicture.asset('assets/images/vector.svg',
      //             semanticsLabel: 'vector'),
      //       ),
      //     ])),
      body: SingleChildScrollView(
        child: Container(
          width: 375 / 375 * width,
          height: 812 / 812 * height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xa5be35ff),
                Color(0xce993276),
                Color(0xe5ef4a85),
                Color(0xffd7824f)
              ],
            ),
          ),
          // padding: const EdgeInsets.only(
          //   top: 83 / 812 * height,
          // ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Container(
                  width: 154 / 375 * width,
                  height: 204 / 812 * height,
                  child: SvgPicture.asset('assets/images/vector.svg'),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 375 / 375 * width,
                height: 492 / 812 * height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(64),
                    topRight: Radius.circular(64),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                  color: Color(0xff0c1c3d),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 105 / 375 * width,
                      height: 75 / 812 * height,
                      child: Text(
                        "Log In",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 33.50),
                    // Container(
                    //   width: 300,
                    //   height: 40,
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       Container(
                    //         width: 300,
                    //         height: 40,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(20),
                    //           color: Color(0x3f000000),
                    //         ),
                    //         padding: const EdgeInsets.only(
                    //           left: 17,
                    //           right: 204,
                    //           top: 11,
                    //           bottom: 6,
                    //         ),
                    //         child: Row(
                    //           mainAxisSize: MainAxisSize.min,
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             Text(
                    //               "Username ",
                    //               style: GoogleFonts.poppins(
                    //                 color: Color(0xffbababd),
                    //                 fontSize: 15,
                    //                 fontWeight: FontWeight.w500,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 0, 17, 6),
                      child: Container(
                        width: 300 / 375 * width,
                        height: 40 / 812 * height,
                        child: TextField(
                          style: GoogleFonts.poppins(
                            color: Color(0xffbababd),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            labelText: "Email ID",
                            labelStyle: GoogleFonts.poppins(
                              color: Color(0xffbababd),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            fillColor: Color(0x3f000000),
                            filled: true,
                          ),
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 33.50),
                    // Container(
                    //   width: 300,
                    //   height: 40,
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       Container(
                    //         width: 300,
                    //         height: 40,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(20),
                    //           color: Color(0x3f000000),
                    //         ),
                    //         padding: const EdgeInsets.only(
                    //           left: 17,
                    //           right: 210,
                    //           top: 11,
                    //           bottom: 6,
                    //         ),
                    //         child: Row(
                    //           mainAxisSize: MainAxisSize.min,
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             Text(
                    //               "Password",
                    //               style: GoogleFonts.poppins(
                    //                 color: Color(0xffbababd),
                    //                 fontSize: 15,
                    //                 fontWeight: FontWeight.w500,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 0, 17, 6),
                      child: Container(
                        width: 300 / 375 * width,
                        height: 40 / 812 * height,
                        child: TextField(
                          style: GoogleFonts.poppins(
                            color: Color(0xffbababd),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                            // errorText: error,

                            labelText: "Password",
                            labelStyle: GoogleFonts.poppins(
                              color: Color(0xffbababd),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            fillColor: Color(0x3f000000),
                            filled: true,
                          ),
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 35 / 812 * height),
                    InkWell(
                      onTap: () async {
                        try {
                          var result = await _auth.signIn(email, password);
                          Navigator.pushAndRemoveUntil(
                              context,
                              createRoute(OptionpageWidget()),
                              (route) => false);
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0x3f000000),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 52,
                          vertical: 7,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Log In",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 33.50),
                    Container(
                      width: 331,
                      height: 2,
                      color: Color(0x7fc4c4c4),
                    ),
                    SizedBox(height: 33.50),

                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, createRoute(CreateaccountWidget()));
                      },
                      child: Text(
                        "Don’t have an account? Create account",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
