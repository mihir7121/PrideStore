import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pridestore/LoginPageWidget.dart';
import 'package:pridestore/OptionsPage.dart';

import 'GlobalVars.dart';

class HomepageWidget extends StatefulWidget {
  @override
  _HomepageWidgetState createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  @override
  void initState() {
    super.initState();
    _checkSession().then((status) {
      if (status) {
        _navigate();
      }
    });
  }

  Future<bool> _checkSession() async {
    await Future.delayed(Duration(seconds: 2), () {});
    return true;
  }

  void _navigate() async {
    final User? user = auth.currentUser;
    if (user == null) {
      Navigator.of(context)
          .pushAndRemoveUntil(createRoute(LoginWidget()), (route) => false);
    } else {
      Navigator.of(context).pushAndRemoveUntil(
          createRoute(OptionpageWidget()), (route) => false);
    }
  }

  // Route _createRoute(var routeName) {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => routeName,
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       var begin = Offset(1.0, 0.0);
  //       var end = Offset.zero;
  //       var curve = Curves.ease;

  //       var tween =
  //           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  //       return SlideTransition(
  //         position: animation.drive(tween),
  //         child: child,
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(190, 53, 255, 1),
              Color.fromRGBO(153, 50, 118, 0.949999988079071),
              Color.fromRGBO(239, 74, 133, 0.8999999761581421),
              Color.fromRGBO(215, 130, 79, 1)
            ],
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/images/splash_vector.svg',
            semanticsLabel: 'vector',
          ),
        ),
        // Positioned(
        //   top: MediaQuery.of(context).size.height * 0.565,
        //   left: MediaQuery.of(context).size.width * 0.35,
        //   child: Text(
        //     'Pride Store',
        //     textAlign: TextAlign.center,
        //     style: GoogleFonts.poppins(
        //         color: Color.fromRGBO(255, 255, 255, 1),
        //         fontSize: 36,
        //         fontWeight: FontWeight.w600,
        //         height: 1),
        //   ),
        // ),
      ),
    );
  }
}
