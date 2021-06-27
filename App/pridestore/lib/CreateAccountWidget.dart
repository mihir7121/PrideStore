// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:pridestore/GlobalVars.dart';
// import 'package:pridestore/LoginPageWidget.dart';
// import 'package:pridestore/OptionsPage.dart';

// class CreateaccountWidget extends StatefulWidget {
//   @override
//   _CreateaccountWidgetState createState() => _CreateaccountWidgetState();
// }

// class _CreateaccountWidgetState extends State<CreateaccountWidget> {
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Container(
//         height: height,
//         width: width,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Color.fromRGBO(190, 53, 255, 0.6499999761581421),
//                 Color.fromRGBO(153, 50, 118, 0.8100000023841858),
//                 Color.fromRGBO(239, 74, 133, 0.8999999761581421),
//                 Color.fromRGBO(215, 130, 79, 0.9700000286102295)
//               ]),
//         ),
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//                 bottom: 0,
//                 left: 0,
//                 child: Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: MediaQuery.of(context).size.height * 0.59,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(64),
//                         topRight: Radius.circular(64),
//                         bottomLeft: Radius.circular(0),
//                         bottomRight: Radius.circular(0),
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                             color: Color.fromRGBO(0, 0, 0, 0.25),
//                             offset: Offset(0, 4),
//                             blurRadius: 4)
//                       ],
//                       color: Color.fromRGBO(12, 28, 61, 1),
//                     ))),
//             Positioned(
//                 top: 638 / 812 * height,
//                 left: 37 / 375 * width,
//                 child: Container(
//                     width: MediaQuery.of(context).size.width * 150 / 375,
//                     height: MediaQuery.of(context).size.height * 40 / 812,
//                     child: Stack(children: <Widget>[
//                       Positioned(
//                           top: 0,
//                           left: 0,
//                           child: Container(
//                               width: width * 150 / 375,
//                               height: height * 40 / 812,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(20),
//                                   topRight: Radius.circular(20),
//                                   bottomLeft: Radius.circular(20),
//                                   bottomRight: Radius.circular(20),
//                                 ),
//                                 color: Color.fromRGBO(0, 0, 0, 0.25),
//                               ))),
//                       Positioned(
//                           bottom: 15 / 812 * height,
//                           left: 16 / 375 * width,
//                           child: InkWell(
//                             onTap: () {
//                               Navigator.pushReplacement(
//                                   context, createRoute(OptionpageWidget()));
//                             },
//                             child: Text(
//                               'Create Account',
//                               textAlign: TextAlign.left,
//                               style: GoogleFonts.poppins(
//                                   color: Color.fromRGBO(255, 255, 255, 1),
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.normal,
//                                   height: 1),
//                             ),
//                           )),
//                     ]))),
//             Positioned(
//                 top: 458 / 812 * height,
//                 left: 37 / 375 * width,
//                 child: Container(
//                     width: 300 / 375 * width,
//                     height: 40 / 812 * height,
//                     child: Stack(children: <Widget>[
//                       Positioned(
//                           top: 0,
//                           left: 0,
//                           child: Container(
//                               width: 300 / 375 * width,
//                               height: 40 / 812 * height,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(20),
//                                   topRight: Radius.circular(20),
//                                   bottomLeft: Radius.circular(20),
//                                   bottomRight: Radius.circular(20),
//                                 ),
//                                 color: Color.fromRGBO(0, 0, 0, 0.25),
//                               ))),
//                       Positioned(
//                           // top: 11,
//                           // left: 17,
//                           child: Padding(
//                         padding:
//                             const EdgeInsets.fromLTRB(17.0, 13.0, 0.0, 6.0),
//                         child: Text(
//                           'Name',
//                           textAlign: TextAlign.left,
//                           style: GoogleFonts.poppins(
//                             color: Color.fromRGBO(186, 186, 189, 1),
//                             fontSize: 15,
//                             fontWeight: FontWeight.normal,
//                             height: 1,
//                           ),
//                         ),
//                       )),
//                     ]))),
//             Positioned(
//                 top: 518 / 812 * height,
//                 left: 37,
//                 child: Container(
//                     width: 300,
//                     height: 40 / 812 * height,
//                     child: Stack(children: <Widget>[
//                       Positioned(
//                           top: 0,
//                           left: 0,
//                           child: Container(
//                               width: 300,
//                               height: 40 / 812 * height,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(20),
//                                   topRight: Radius.circular(20),
//                                   bottomLeft: Radius.circular(20),
//                                   bottomRight: Radius.circular(20),
//                                 ),
//                                 color: Color.fromRGBO(0, 0, 0, 0.25),
//                               ))),
//                       Positioned(
//                           // top: 11,
//                           // left: 17,
//                           child: Padding(
//                         padding:
//                             const EdgeInsets.fromLTRB(17.0, 13.0, 0.0, 6.0),
//                         child: Text(
//                           'Email Id',
//                           textAlign: TextAlign.left,
//                           style: GoogleFonts.poppins(
//                               color: Color.fromRGBO(186, 186, 189, 1),
//                               // fontFamily: 'Poppins',
//                               fontSize: 15,
//                               letterSpacing:
//                                   0 /*percentages not used in flutter. defaulting to zero*/,
//                               fontWeight: FontWeight.normal,
//                               height: 1),
//                         ),
//                       )),
//                     ]))),
//             Positioned(
//                 top: 578 / 812 * height,
//                 left: 37,
//                 child: Container(
//                     width: 300,
//                     height: 40 / 812 * height,
//                     child: Stack(children: <Widget>[
//                       Positioned(
//                           top: 0,
//                           left: 0,
//                           child: Container(
//                               width: 300,
//                               height: 40 / 812 * height,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(20),
//                                   topRight: Radius.circular(20),
//                                   bottomLeft: Radius.circular(20),
//                                   bottomRight: Radius.circular(20),
//                                 ),
//                                 color: Color.fromRGBO(0, 0, 0, 0.25),
//                               ))),
//                       Positioned(
//                           // top: 11,
//                           // left: 17,
//                           child: Padding(
//                         padding:
//                             const EdgeInsets.fromLTRB(17.0, 13.0, 0.0, 6.0),
//                         child: Text(
//                           'Password',
//                           textAlign: TextAlign.left,
//                           style: GoogleFonts.poppins(
//                               color: Color.fromRGBO(186, 186, 189, 1),
//                               // fontFamily: 'Poppins',
//                               fontSize: 15,
//                               fontWeight: FontWeight.normal,
//                               height: 1),
//                         ),
//                       )),
//                     ]))),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 24.0),
//               child: Center(
//                 child: Text(
//                   'Create Account',
//                   // textAlign: TextAlign.center,
//                   style: GoogleFonts.poppins(
//                       color: Color.fromRGBO(255, 255, 255, 1),
//                       // fontFamily: 'Poppins',
//                       fontSize: MediaQuery.of(context).size.height * 0.044,
//                       fontWeight: FontWeight.normal,
//                       height: 1),
//                 ),
//               ),
//             ),
//             Positioned(
//                 top: 698 / 812 * height,
//                 left: 22,
//                 child: Container(
//                     width: 331,
//                     height: 2 / 812 * height,
//                     decoration: BoxDecoration(
//                       color: Color.fromRGBO(196, 196, 196, 0.5),
//                     ))),
//             Positioned(
//               top: 746 / 812 * height,
//               left: 57,
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(context, createRoute(LoginWidget()));
//                 },
//                 child: Text(
//                   'Already have an account? Log In',
//                   textAlign: TextAlign.left,
//                   style: GoogleFonts.poppins(
//                       color: Colors.blue,
//                       // fontFamily: 'Poppins',
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                       height: 1),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 75 / 812 * height,
//               left: 125,
//               child: Center(
//                 child: SvgPicture.asset('assets/images/vector.svg',
//                     semanticsLabel: 'vector'),
//               ),
//             ),
//             Positioned(
//               top: 0,
//               left: 0,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 44 / 812 * height,
//                 decoration: BoxDecoration(),
//                 child: Stack(
//                   children: <Widget>[
//                     Positioned(
//                       top: 17.333343505859375 / 812 * height,
//                       left: 336.33331298828125,
//                       child: Container(
//                         width: 24.32803726196289,
//                         height: 11.333333015441895 / 812 * height,
//                         child: Stack(
//                           children: <Widget>[
//                             Positioned(
//                                 top: 0,
//                                 left: 0,
//                                 child: Container(
//                                     width: 22,
//                                     height: 11.333333015441895 / 812 * height,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.only(
//                                         topLeft:
//                                             Radius.circular(2.6666667461395264),
//                                         topRight:
//                                             Radius.circular(2.6666667461395264),
//                                         bottomLeft:
//                                             Radius.circular(2.6666667461395264),
//                                         bottomRight:
//                                             Radius.circular(2.6666667461395264),
//                                       ),
//                                       border: Border.all(
//                                         color: Color.fromRGBO(0, 0, 0, 1),
//                                         width: 1,
//                                       ),
//                                     ))),
//                             Positioned(
//                               top: 1.9999998807907104 / 812 * height,
//                               left: 2,
//                               child: Container(
//                                 width: 18,
//                                 height: 7.333333492279053 / 812 * height,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.only(
//                                     topLeft:
//                                         Radius.circular(1.3333333730697632),
//                                     topRight:
//                                         Radius.circular(1.3333333730697632),
//                                     bottomLeft:
//                                         Radius.circular(1.3333333730697632),
//                                     bottomRight:
//                                         Radius.circular(1.3333333730697632),
//                                   ),
//                                   color: Color.fromRGBO(255, 255, 255, 1),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pridestore/GlobalVars.dart';
import 'package:pridestore/LoginPageWidget.dart';
import 'package:pridestore/OptionsPage.dart';
import 'Auth.dart';

class CreateaccountWidget extends StatefulWidget {
  const CreateaccountWidget({Key? key}) : super(key: key);

  @override
  _CreateaccountWidgetState createState() => _CreateaccountWidgetState();
}

class _CreateaccountWidgetState extends State<CreateaccountWidget> {
  String name = '';

  String email = '';

  String password = '';

  AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                Color(0xf7d7824f)
              ],
            ),
          ),
          padding: const EdgeInsets.only(
            top: 83,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/images/vector.svg',
                  semanticsLabel: 'vector',
                  height: height * 0.25,
                ),
              ),
              SizedBox(height: 36 / 812 * height),
              Container(
                width: 375 / 375 * width,
                height: 489 / 812 * height,
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
                padding: const EdgeInsets.only(
                  top: 34,
                  bottom: 42,
                ),
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Create Account",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 36,
                        // fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 31.83 / 812 * height),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 11, 17, 6),
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
                            labelText: "Name",
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
                              name = val;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
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
                    SizedBox(height: 10),
                    // Container(
                    //   width: 300 / 375 * width,
                    //   height: 40 / 812 * height,
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
                    //           right: 0,
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
                    //                 // fontFamily: "Poppins",
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
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () async {
                        try {
                          var result =
                              await _auth.register(email, password, name);
                        } catch (e) {
                          print(e);
                        }
                        Navigator.push(
                            context, createRoute(OptionpageWidget()));
                      },
                      child: Container(
                        width: 165 / 375 * width,
                        height: 40 / 812 * height,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 165 / 375 * width,
                              height: 40 / 812 * height,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0x3f000000),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Create Account",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15,
                                      // fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Container(
                      width: 331 / 375 * width,
                      height: 2 / 812 * height,
                      color: Color(0x7fc4c4c4),
                    ),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, createRoute(LoginWidget()));
                      },
                      child: Text(
                        "Already have an account? Log In",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.blue,
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
    );
  }
}
