import 'package:flutter/material.dart';

import 'models/Product.dart';

List<Product> cart = [];

Route createRoute(var routeName) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => routeName,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
