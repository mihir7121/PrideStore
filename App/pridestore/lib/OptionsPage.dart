import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pridestore/ApparelPage.dart';
import 'package:pridestore/Auth.dart';
import 'package:pridestore/GlobalVars.dart';
import 'package:pridestore/HubPage1.dart';
import 'package:pridestore/LoginPageWidget.dart';
import 'package:pridestore/models/User.dart';

class OptionpageWidget extends StatefulWidget {
  @override
  _OptionpageWidgetState createState() => _OptionpageWidgetState();
}

class _OptionpageWidgetState extends State<OptionpageWidget> {
  final AuthService _auth = AuthService();
  AppUser? appUser;
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  @override
  void initState() {
    super.initState();
    user = auth.currentUser;
    getCurrentUserDetails();
  }

  getCurrentUserDetails() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc('${user!.uid}')
        .get()
        .then((value) {
      setState(() {
        appUser = AppUser(
          email: value.data()!["email"],
          name: value.data()!['name'],
          uid: user!.uid,
        );
      });
      print("Email: ${appUser!.email}");
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print('Height: $height');
    print('Width: $width');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 10,
      ),
      backgroundColor: Color.fromRGBO(12, 28, 61, 1),
      body: Stack(children: <Widget>[
        Positioned(
          top: 178 / 812 * height,
          left: 28 / 375 * width,
          child: Text(
            'For Buyers',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 36 / 812 * height,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
        ),
        Positioned(
          top: 489 / 812 * height,
          left: 28 / 375 * width,
          child: Text(
            'For Artists',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 36,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
        ),
        Positioned(
          top: 1 / 812 * height,
          // left: 2.842170943040401e-14,
          child: Container(
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
                          Color.fromRGBO(153, 50, 118, 0.949999988079071),
                          Color.fromRGBO(239, 74, 133, 0.8600000143051147),
                          Color.fromRGBO(215, 130, 79, 1)
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 22 / 812 * height,
                  left: 121 / 375 * width,
                  child: Text(
                    'Pride Store',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 24 / 812 * height,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                  ),
                ),
                Positioned(
                  top: 13 / 812 * height,
                  left: 24 / 375 * width,
                  child: SvgPicture.asset(
                    'assets/images/vector.svg',
                    semanticsLabel: 'vector',
                    height: 36 / 812 * height,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                    top: 20 / 812 * height,
                    right: 24 / 375 * width,
                    child: InkWell(
                      onTap: () {
                        _auth.signOut();
                        Navigator.pushAndRemoveUntil(context,
                            createRoute(LoginWidget()), (route) => false);
                      },
                      child: Icon(
                        FontAwesomeIcons.signOutAlt,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ),
        ),
        Positioned(
            top: 255 / 812 * height,
            left: 13 / 375 * width,
            child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Center(
                        child: Text(
                          'Rep what you\nRepresent!',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 24 / 812 * height,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context, createRoute(ApparelPage()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 16.0, 8.0, 16.0),
                                child: Text(
                                  'Store',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 20 / 812 * height,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                              )),
                          width: 149 / 375 * width * 0.75,
                          height: 52 / 812 * height,
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
                          )),
                    ),
                  ],
                ),
                width: 351 / 375 * width,
                height: 180 / 812 * height,
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
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(190, 53, 255, 1),
                        Color.fromRGBO(153, 51, 119, 1),
                        Color.fromRGBO(239, 74, 133, 0.8600000143051147),
                        Color.fromRGBO(215, 130, 79, 1)
                      ]),
                ))),
        Positioned(
            top: 566 / 812 * height,
            left: 13 / 375 * width,
            child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Leave Your Mark\nToday!',
                          softWrap: true,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 23 / 812 * height,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    createRoute(
                                        CreateHubPage1(appUser: appUser)));
                              },
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 16.0, 8.0, 16.0),
                                child: Text(
                                  'The Hub',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 20 / 812 * height,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                              )),
                          width: 149 / 375 * width * 0.75,
                          height: 52 / 812 * height,
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
                          )),
                    )
                  ],
                ),
                width: 351 / 375 * width,
                height: 180 / 812 * height,
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
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(190, 53, 255, 1),
                        Color.fromRGBO(153, 51, 119, 1),
                        Color.fromRGBO(239, 74, 133, 0.8600000143051147),
                        Color.fromRGBO(215, 130, 79, 1)
                      ]),
                ))),
        // Positioned(
        //     top: 312 / 812 * height,
        //     left: 28 / 375 * width,
        //     child: Text(
        //       'Rep what you Represent!',
        //       softWrap: true,
        //       textAlign: TextAlign.left,
        //       style: GoogleFonts.poppins(
        //           color: Color.fromRGBO(255, 255, 255, 1),
        //           fontSize: 24 / 812 * height,
        //           letterSpacing: -0.30000001192092896,
        //           fontWeight: FontWeight.normal,
        //           height: 1),
        //     )),
        // Positioned(
        //     top: 324 / 812 * height,
        //     left: 207 / 375 * width,
        //     child: Container(
        //         width: 149 / 375 * width,
        //         height: 52 / 812 * height,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(14),
        //             topRight: Radius.circular(14),
        //             bottomLeft: Radius.circular(14),
        //             bottomRight: Radius.circular(14),
        //           ),
        //           boxShadow: [
        //             BoxShadow(
        //                 color: Color.fromRGBO(0, 0, 0, 0.25),
        //                 offset: Offset(0, 4),
        //                 blurRadius: 4)
        //           ],
        //           color: Color.fromRGBO(255, 255, 255, 1),
        //         ))),
        // Positioned(
        //     top: 623 / 812 * height,
        //     left: 28 / 375 * width,
        //     child: Text(
        //       'Leave Your Mark Today!',
        //       softWrap: true,
        //       textAlign: TextAlign.left,
        //       style: GoogleFonts.poppins(
        //           color: Color.fromRGBO(255, 255, 255, 1),
        //           fontSize: 24 / 812 * height,
        //           fontWeight: FontWeight.normal,
        //           height: 1),
        //     )),
        // Positioned(
        //     top: 635 / 812 * height,
        //     left: 207 / 375 * width,
        //     child: Container(
        //         width: 149 / 375 * width,
        //         height: 52 / 812 * height,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.only(
        //             topLeft: Radius.circular(14),
        //             topRight: Radius.circular(14),
        //             bottomLeft: Radius.circular(14),
        //             bottomRight: Radius.circular(14),
        //           ),
        //           boxShadow: [
        //             BoxShadow(
        //                 color: Color.fromRGBO(0, 0, 0, 0.25),
        //                 offset: Offset(0, 4),
        //                 blurRadius: 4)
        //           ],
        //           color: Color.fromRGBO(255, 255, 255, 1),
        //         ))),
        // Positioned(
        //     top: 333 / 812 * height,
        //     left: 230 / 375 * width,
        //     child: Text(
        //       'Store',
        //       textAlign: TextAlign.center,
        //       style: GoogleFonts.poppins(
        //           color: Color.fromRGBO(0, 0, 0, 1),
        //           fontSize: 20 / 812 * height,
        //           fontWeight: FontWeight.bold,
        //           height: 1),
        //     )),
        // Positioned(
        //     top: 646 / 812 * height,
        //     left: 225 / 375 * width,
        //     child: Text(
        //       'The Hub',
        //       textAlign: TextAlign.center,
        //       style: GoogleFonts.poppins(
        //           color: Color.fromRGBO(0, 0, 0, 1),
        //           fontSize: 20 / 812 * height,
        //           fontWeight: FontWeight.bold,
        //           height: 1),
        //     )),
        // Positioned(
        //     top: 361 / 812 * height,
        //     left: 331 / 375 * width,
        //     child: Container(
        //         width: 24 / 375 * width,
        //         height: 24 / 812 * height,
        //         decoration: BoxDecoration(
        //           color: Color.fromRGBO(21, 21, 21, 0),
        //         ),
        //         child: Stack(children: <Widget>[
        //           Positioned(
        //             top: 6 / 812 * height,
        //             left: 8 / 375 * width,
        //             child: Icon(FontAwesomeIcons.arrowRight),
        //           ),
        //         ]))),
        // Positioned(
        //     top: 672 / 812 * height,
        //     left: 343 / 375 * width,
        //     child: Container(
        //         width: 24,
        //         height: 24 / 812 * height,
        //         decoration: BoxDecoration(
        //           color: Color.fromRGBO(21, 21, 21, 0),
        //         ),
        //         child: Stack(children: <Widget>[
        //           Positioned(
        //               top: 6 / 812 * height,
        //               left: 8 / 375 * width,
        //               child: SvgPicture.asset('assets/images/vector.svg',
        //                   semanticsLabel: 'vector')),
        //           Positioned(
        //               top: 0,
        //               left: 0,
        //               child: SvgPicture.asset('assets/images/vector.svg',
        //                   semanticsLabel: 'vector')),
        //         ]))),
      ]),
    );
  }
}
