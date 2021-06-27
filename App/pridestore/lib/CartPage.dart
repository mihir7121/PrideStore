import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pridestore/FinalOrderPage.dart';
import 'package:pridestore/GlobalVars.dart';
import 'package:pridestore/HubPage3.dart';

import 'models/Product.dart';

class CreateCartPage extends StatefulWidget {
  List<Product> cart;
  CreateCartPage({required this.cart});
  @override
  _CreateCartPage createState() => _CreateCartPage(this.cart);
}

class _CreateCartPage extends State<CreateCartPage> {
  List<Product> cart;
  _CreateCartPage(this.cart);
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
          // Column(
          //   mainAxisSize: MainAxisSize.min,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Container(
          //       width: 375 / 375 * width,
          //       height: 812 / 812 * height,
          //       color: Color(0xff0c1c3d),
          //       padding: const EdgeInsets.only(
          //         bottom: 30,
          //       ),
          //       child: Column(
          //         mainAxisSize: MainAxisSize.min,
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Container(
          //             width: 375 / 375 * width,
          //             height: 63 / 812 * height,
          //             decoration: BoxDecoration(
          //               gradient: LinearGradient(
          //                 begin: Alignment.centerLeft,
          //                 end: Alignment.centerRight,
          //                 colors: [
          //                   Color(0xffbe35ff),
          //                   Color(0xf2993276),
          //                   Color(0xdbef4a85),
          //                   Color(0xffd7824f)
          //                 ],
          //               ),
          //             ),
          //             padding: const EdgeInsets.only(
          //               left: 24,
          //               right: 0,
          //               top: 11,
          //               bottom: 12,
          //             ),
          //             child: Row(
          //               mainAxisSize: MainAxisSize.min,
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               children: [
          //                 Container(
          //                   width: 33,
          //                   height: 43,
          //                   // decoration: BoxDecoration(
          //                   //   borderRadius: BorderRadius.circular(8),
          //                   //   border: Border.all(
          //                   //     color: Colors.white,
          //                   //     width: 3,
          //                   //   ),
          //                   //   color: Color(0x7f7f3a44),
          //                   // ),
          //                   child: SvgPicture.asset(
          //                     'assets/images/vector.svg',
          //                     height: 40,
          //                   ),
          //                 ),
          //                 SizedBox(width: 95 / 375 * width),
          //                 SizedBox(
          //                   width: 140,
          //                   height: 36,
          //                   child: Text(
          //                     "Pride Store",
          //                     textAlign: TextAlign.center,
          //                     style: GoogleFonts.poppins(
          //                       color: Colors.white,
          //                       fontSize: 24,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //           SizedBox(height: 20.30),
          //           ...cart.map(
          //             (e) => Container(
          //               width: 351 / 375 * width,
          //               height: 198 / 812 * height,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(18),
          //                 boxShadow: [
          //                   BoxShadow(
          //                     color: Color(0x3f535353),
          //                     blurRadius: 4,
          //                     offset: Offset(0, 5),
          //                   ),
          //                 ],
          //                 gradient: LinearGradient(
          //                   begin: Alignment.topCenter,
          //                   end: Alignment.bottomCenter,
          //                   colors: [
          //                     Color(0xffbe35ff),
          //                     Color(0xff993377),
          //                     Color(0xdbef4a85),
          //                     Color(0xffd7824f)
          //                   ],
          //                 ),
          //               ),
          //               child: Stack(
          //                 children: [
          //                   Positioned(
          //                     left: 9 / 375 * width,
          //                     top: 8 / 812 * height,
          //                     child: Container(
          //                       child: SizedBox(
          //                         height: 20,
          //                         child: Image.network(
          //                           e.designUrl,
          //                         ),
          //                       ),
          //                       width: 182 / 375 * width,
          //                       height: 181 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(14),
          //                         boxShadow: [
          //                           BoxShadow(
          //                             color: Color(0x3f000000),
          //                             blurRadius: 4,
          //                             offset: Offset(0, 4),
          //                           ),
          //                         ],
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 215 / 375 * width,
          //                     top: 25 / 812 * height,
          //                     child: Container(
          //                       width: 115 / 375 * width,
          //                       height: 36 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(14),
          //                         boxShadow: [
          //                           BoxShadow(
          //                             color: Color(0x3f000000),
          //                             blurRadius: 4,
          //                             offset: Offset(0, 4),
          //                           ),
          //                         ],
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 215 / 375 * width,
          //                     top: 138 / 812 * height,
          //                     child: Container(
          //                       width: 115 / 375 * width,
          //                       height: 36 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(14),
          //                         boxShadow: [
          //                           BoxShadow(
          //                             color: Color(0x3f000000),
          //                             blurRadius: 4,
          //                             offset: Offset(0, 4),
          //                           ),
          //                         ],
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 215 / 375 * width,
          //                     top: 81 / 812 * height,
          //                     child: Container(
          //                       width: 115 / 375 * width,
          //                       height: 36 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(14),
          //                         boxShadow: [
          //                           BoxShadow(
          //                             color: Color(0x3f000000),
          //                             blurRadius: 4,
          //                             offset: Offset(0, 4),
          //                           ),
          //                         ],
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 23 / 375 * width,
          //                     top: 125 / 812 * height,
          //                     child: SizedBox(
          //                       // width: 70 / 375 * width,
          //                       height: 34 / 812 * height,
          //                       child: Text(
          //                         "${e.name}",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.poppins(
          //                           color: Colors.black,
          //                           fontSize: 20,
          //                           fontWeight: FontWeight.w700,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 214 / 375 * width,
          //                     top: 31 / 812 * height,
          //                     child: SizedBox(
          //                       width: 65 / 375 * width,
          //                       height: 25 / 812 * height,
          //                       child: Text(
          //                         "Size",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.poppins(
          //                           color: Colors.black,
          //                           fontSize: 20,
          //                           fontWeight: FontWeight.w700,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 213 / 375 * width,
          //                     top: 87 / 812 * height,
          //                     child: SizedBox(
          //                       width: 65 / 375 * width,
          //                       height: 25 / 812 * height,
          //                       child: Text(
          //                         "Color",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.poppins(
          //                           color: Colors.black,
          //                           fontSize: 20,
          //                           fontWeight: FontWeight.w700,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 239 / 375 * width,
          //                     top: 143 / 812 * height,
          //                     child: SizedBox(
          //                       width: 65 / 375 * width,
          //                       height: 25 / 812 * height,
          //                       child: Text(
          //                         "1",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.poppins(
          //                           color: Colors.black,
          //                           fontSize: 20,
          //                           fontWeight: FontWeight.w700,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 268 / 375 * width,
          //                     top: 31 / 812 * height,
          //                     child: SizedBox(
          //                       width: 65 / 375 * width,
          //                       height: 25 / 812 * height,
          //                       child: Text(
          //                         "M",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.poppins(
          //                           color: Colors.black,
          //                           fontSize: 20,
          //                           fontWeight: FontWeight.w700,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 284 / 375 * width,
          //                     top: 86 / 812 * height,
          //                     child: Container(
          //                       width: 35 / 375 * width,
          //                       height: 25 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(7),
          //                         border: Border.all(
          //                           color: Colors.white,
          //                           width: 1 / 375 * width,
          //                         ),
          //                         boxShadow: [
          //                           BoxShadow(
          //                             color: Color(0x3f000000),
          //                             blurRadius: 4,
          //                             offset: Offset(0, 4),
          //                           ),
          //                         ],
          //                         color: Colors.black,
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 23 / 375 * width,
          //                     top: 150 / 812 * height,
          //                     child: SizedBox(
          //                       width: 65 / 375 * width,
          //                       height: 25 / 812 * height,
          //                       child: Text(
          //                         "${e.price}",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.poppins(
          //                           color: Colors.black,
          //                           fontSize: 20,
          //                           fontWeight: FontWeight.w700,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 224 / 375 * width,
          //                     top: 143.61 / 812 * height,
          //                     child: Container(
          //                       width: 24 / 375 * width,
          //                       height: 23.97 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(8),
          //                       ),
          //                       // child: FlutterLogo(size: 23.99884033203125), Add "Add"Button here
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 297 / 375 * width,
          //                     top: 143 / 812 * height,
          //                     child: Container(
          //                       width: 24 / 375 * width,
          //                       height: 2 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(8),
          //                       ),
          //                       // child: FlutterLogo(size: 23.99884033203125), Add "Remove"Button here
          //                     ),
          //                   ),
          //                   Positioned(
          //                     left: 30 / 375 * width,
          //                     top: 11 / 812 * height,
          //                     child: Container(
          //                       width: 137 / 375 * width,
          //                       height: 137 / 812 * height,
          //                       // child: FlutterLogo(size: 137), Add Product Img here
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //           // Container(
          //           //   width: 351 / 375 * width,
          //           //   height: 198 / 812 * height,
          //           //   decoration: BoxDecoration(
          //           //     borderRadius: BorderRadius.circular(18),
          //           //     boxShadow: [
          //           //       BoxShadow(
          //           //         color: Color(0x3f535353),
          //           //         blurRadius: 4,
          //           //         offset: Offset(0, 5),
          //           //       ),
          //           //     ],
          //           //     gradient: LinearGradient(
          //           //       begin: Alignment.topCenter,
          //           //       end: Alignment.bottomCenter,
          //           //       colors: [
          //           //         Color(0xffbe35ff),
          //           //         Color(0xf2993276),
          //           //         Color(0xdbef4a85),
          //           //         Color(0xf7d7824f)
          //           //       ],
          //           //     ),
          //           //   ),
          //           //   child: Stack(
          //           //     children: [
          //           //       Positioned(
          //           //         left: 215 / 375 * width,
          //           //         top: 45 / 812 * height,
          //           //         child: Container(
          //           //           width: 115 / 375 * width,
          //           //           height: 36 / 812 * height,
          //           //           decoration: BoxDecoration(
          //           //             borderRadius: BorderRadius.circular(14),
          //           //             boxShadow: [
          //           //               BoxShadow(
          //           //                 color: Color(0x3f000000),
          //           //                 blurRadius: 4,
          //           //                 offset: Offset(0, 4),
          //           //               ),
          //           //             ],
          //           //             color: Colors.white,
          //           //           ),
          //           //         ),
          //           //       ),
          //           //       Positioned(
          //           //         left: 215 / 375 * width,
          //           //         top: 125 / 812 * height,
          //           //         child: Container(
          //           //           width: 115 / 375 * width,
          //           //           height: 36 / 812 * height,
          //           //           decoration: BoxDecoration(
          //           //             borderRadius: BorderRadius.circular(14),
          //           //             boxShadow: [
          //           //               BoxShadow(
          //           //                 color: Color(0x3f000000),
          //           //                 blurRadius: 4,
          //           //                 offset: Offset(0, 4),
          //           //               ),
          //           //             ],
          //           //             color: Colors.white,
          //           //           ),
          //           //         ),
          //           //       ),
          //           //       Positioned(
          //           //         left: 239 / 375 * width,
          //           //         top: 130 / 812 * height,
          //           //         child: SizedBox(
          //           //           width: 65 / 375 * width,
          //           //           height: 25 / 812 * height,
          //           //           child: Text(
          //           //             "1",
          //           //             textAlign: TextAlign.center,
          //           //             style: GoogleFonts.poppins(
          //           //               color: Colors.black,
          //           //               fontSize: 20,
          //           //               fontWeight: FontWeight.w700,
          //           //             ),
          //           //           ),
          //           //         ),
          //           //       ),
          //           //       Positioned(
          //           //         left: 226 / 375 * width,
          //           //         top: 132.32 / 812 * height,
          //           //         child: Container(
          //           //           width: 20 / 375 * width,
          //           //           height: 19.98 / 812 * height,
          //           //           decoration: BoxDecoration(
          //           //             borderRadius: BorderRadius.circular(8),
          //           //             // child: FlutterLogo(size: 23.99884033203125), Add "Add"Button here
          //           //             // color: Colors.black,
          //           //           ),
          //           //         ),
          //           //       ),
          //           //       Positioned(
          //           //         left: 298 / 375 * width,
          //           //         top: 130.32 / 812 * height,
          //           //         child: Container(
          //           //           width: 22 / 375 * width,
          //           //           height: 21.97 / 812 * height,
          //           //           decoration: BoxDecoration(
          //           //             borderRadius: BorderRadius.circular(8),
          //           //             // child: FlutterLogo(size: 23.99884033203125), Add "Remove"Button here
          //           //             // color: Colors.black,
          //           //           ),
          //           //         ),
          //           //       ),
          //           //       Positioned(
          //           //         left: 213 / 375 * width,
          //           //         top: 51 / 812 * height,
          //           //         child: SizedBox(
          //           //           width: 65 / 375 * width,
          //           //           height: 25 / 812 * height,
          //           //           child: Text(
          //           //             "Color",
          //           //             textAlign: TextAlign.center,
          //           //             style: GoogleFonts.poppins(
          //           //               color: Colors.black,
          //           //               fontSize: 20,
          //           //               fontWeight: FontWeight.w700,
          //           //             ),
          //           //           ),
          //           //         ),
          //           //       ),
          //           //       Positioned(
          //           //         left: 284 / 375 * width,
          //           //         top: 50 / 812 * height,
          //           //         child: Container(
          //           //           width: 35 / 375 * width,
          //           //           height: 25 / 812 * height,
          //           //           decoration: BoxDecoration(
          //           //             borderRadius: BorderRadius.circular(7),
          //           //             border: Border.all(
          //           //               color: Colors.white,
          //           //               width: 1,
          //           //             ),
          //           //             boxShadow: [
          //           //               BoxShadow(
          //           //                 color: Color(0x3f000000),
          //           //                 blurRadius: 4,
          //           //                 offset: Offset(0, 4),
          //           //               ),
          //           //             ],
          //           //             color: Colors.white,
          //           //             // color: Color(0xffd00b2a),
          //           //           ),
          //           //         ),
          //           //       ),
          //           //       Positioned(
          //           //         left: 9 / 375 * width,
          //           //         top: 8 / 812 * height,
          //           //         child: Container(
          //           //           width: 182 / 375 * width,
          //           //           height: 181 / 812 * height,
          //           //           decoration: BoxDecoration(
          //           //             borderRadius: BorderRadius.circular(14),
          //           //             boxShadow: [
          //           //               BoxShadow(
          //           //                 color: Color(0x3f000000),
          //           //                 blurRadius: 4,
          //           //                 offset: Offset(0, 4),
          //           //               ),
          //           //             ],
          //           //             color: Colors.white,
          //           //           ),
          //           //         ),
          //           //       ),
          //           //       Positioned(
          //           //         left: 122 / 375 * width,
          //           //         top: 151 / 812 * height,
          //           //         child: SizedBox(
          //           //           width: 65 / 375 * width,
          //           //           height: 25 / 812 * height,
          //           //           child: Text(
          //           //             "\$150",
          //           //             textAlign: TextAlign.center,
          //           //             style: GoogleFonts.poppins(
          //           //               color: Colors.black,
          //           //               fontSize: 20,
          //           //               fontWeight: FontWeight.w700,
          //           //             ),
          //           //           ),
          //           //         ),
          //           //       ),
          //           //       Positioned(
          //           //         left: 21 / 375 * width,
          //           //         top: 151 / 812 * height,
          //           //         child: SizedBox(
          //           //           width: 97 / 375 * width,
          //           //           height: 34 / 812 * height,
          //           //           child: Text(
          //           //             "Pride Mug",
          //           //             textAlign: TextAlign.center,
          //           //             style: GoogleFonts.poppins(
          //           //               color: Colors.black,
          //           //               fontSize: 20,
          //           //               fontWeight: FontWeight.w700,
          //           //             ),
          //           //           ),
          //           //         ),
          //           //       ),
          //           //     ],
          //           //   ),
          //           // ),
          //           SizedBox(height: 20.30),
          //           Container(
          //             width: 351 / 375 * width,
          //             height: 40 / 812 * height,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(18),
          //               boxShadow: [
          //                 BoxShadow(
          //                   color: Color(0x3f535353),
          //                   blurRadius: 4,
          //                   offset: Offset(0, 5),
          //                 ),
          //               ],
          //               gradient: LinearGradient(
          //                 begin: Alignment.topCenter,
          //                 end: Alignment.bottomCenter,
          //                 colors: [
          //                   Color(0xffbe35ff),
          //                   Color(0xf2993276),
          //                   Color(0xdbef4a85),
          //                   Color(0xffd7824f)
          //                 ],
          //               ),
          //             ),
          //             child: Stack(
          //               children: [
          //                 Positioned.fill(
          //                   child: Align(
          //                     alignment: Alignment.center,
          //                     child: Container(
          //                       width: 328 / 375 * width,
          //                       height: 28 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(14),
          //                         boxShadow: [
          //                           BoxShadow(
          //                             color: Color(0x3f000000),
          //                             blurRadius: 4,
          //                             offset: Offset(0, 4),
          //                           ),
          //                         ],
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Positioned(
          //                   left: 46 / 375 * width,
          //                   top: 4 / 812 * height,
          //                   child: Container(
          //                     width: 30 / 375 * width,
          //                     height: 30 / 812 * height,
          //                     child: Row(
          //                       mainAxisSize: MainAxisSize.min,
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       crossAxisAlignment: CrossAxisAlignment.center,
          //                       children: [
          //                         Container(
          //                           width: 30 / 375 * width,
          //                           height: 30 / 812 * height,
          //                           child: Row(
          //                             mainAxisSize: MainAxisSize.min,
          //                             mainAxisAlignment:
          //                                 MainAxisAlignment.center,
          //                             crossAxisAlignment:
          //                                 CrossAxisAlignment.center,
          //                             children: [
          //                               Container(
          //                                 width: 30 / 375 * width,
          //                                 height: 30 / 812 * height,
          //                                 decoration: BoxDecoration(
          //                                   borderRadius:
          //                                       BorderRadius.circular(8),
          //                                   color: Color(0x7f7f3a44),
          //                                 ),
          //                                 padding: const EdgeInsets.only(
          //                                   top: 5,
          //                                   bottom: 4,
          //                                 ),
          //                                 child: Row(
          //                                   mainAxisSize: MainAxisSize.min,
          //                                   mainAxisAlignment:
          //                                       MainAxisAlignment.center,
          //                                   crossAxisAlignment:
          //                                       CrossAxisAlignment.center,
          //                                   children: [
          //                                     Container(
          //                                       width: 29.59 / 375 * width,
          //                                       height: 20.51 / 812 * height,
          //                                       decoration: BoxDecoration(
          //                                         borderRadius:
          //                                             BorderRadius.circular(8),
          //                                       ),
          //                                     ),
          //                                   ],
          //                                 ),
          //                               ),
          //                             ],
          //                           ),
          //                         ),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //                 Positioned(
          //                   left: 125 / 375 * width,
          //                   top: 10 / 812 * height,
          //                   child: SizedBox(
          //                     width: 161 / 375 * width,
          //                     height: 25 / 812 * height,
          //                     child: Text(
          //                       "Arrives by June 1",
          //                       style: GoogleFonts.poppins(
          //                         color: Colors.black,
          //                         fontSize: 18,
          //                         fontWeight: FontWeight.w700,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //           SizedBox(height: 20.30),
          //           Container(
          //             width: 351 / 375 * width,
          //             height: 73 / 812 * height,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(18),
          //               boxShadow: [
          //                 BoxShadow(
          //                   color: Color(0x3f000000),
          //                   blurRadius: 4,
          //                   offset: Offset(0, 4),
          //                 ),
          //               ],
          //               gradient: LinearGradient(
          //                 begin: Alignment.topCenter,
          //                 end: Alignment.bottomCenter,
          //                 colors: [
          //                   Color(0xffbe35ff),
          //                   Color(0xf2993276),
          //                   Color(0xdbef4a85),
          //                   Color(0xffd7824f)
          //                 ],
          //               ),
          //             ),
          //             child: Stack(
          //               children: [
          //                 Positioned.fill(
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: Container(
          //                       width: 165 / 375 * width,
          //                       height: 52 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(14),
          //                         boxShadow: [
          //                           BoxShadow(
          //                             color: Color(0x3f000000),
          //                             blurRadius: 4,
          //                             offset: Offset(0, 4),
          //                           ),
          //                         ],
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Positioned.fill(
          //                   child: Align(
          //                     alignment: Alignment.centerRight,
          //                     child: Container(
          //                       width: 165 / 375 * width,
          //                       height: 52 / 812 * height,
          //                       decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(14),
          //                         boxShadow: [
          //                           BoxShadow(
          //                             color: Color(0x3f000000),
          //                             blurRadius: 4,
          //                             offset: Offset(0, 4),
          //                           ),
          //                         ],
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Positioned.fill(
          //                   child: Align(
          //                     alignment: Alignment.centerLeft,
          //                     child: SizedBox(
          //                       width: 92 / 375 * width,
          //                       height: 20 / 812 * height,
          //                       child: Text(
          //                         "Total",
          //                         textAlign: TextAlign.center,
          //                         style: GoogleFonts.poppins(
          //                           color: Colors.black,
          //                           fontSize: 20,
          //                           fontWeight: FontWeight.w700,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Positioned(
          //                   left: 200 / 375 * width,
          //                   top: 27 / 812 * height,
          //                   child: SizedBox(
          //                     width: 128 / 375 * width,
          //                     height: 34 / 812 * height,
          //                     child: Text(
          //                       "Checkout",
          //                       textAlign: TextAlign.center,
          //                       style: GoogleFonts.poppins(
          //                         color: Colors.black,
          //                         fontSize: 20,
          //                         fontWeight: FontWeight.w700,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //                 Positioned(
          //                   left: 85 / 375 * width,
          //                   top: 27 / 812 * height,
          //                   child: SizedBox(
          //                     width: 65 / 375 * width,
          //                     height: 25 / 812 * height,
          //                     child: Text(
          //                       "\$230",
          //                       textAlign: TextAlign.center,
          //                       style: GoogleFonts.poppins(
          //                         color: Colors.black,
          //                         fontSize: 20,
          //                         fontWeight: FontWeight.w700,
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
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
                                Color.fromRGBO(153, 50, 118, 0.949999988079071),
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
          SizedBox(
            height: height * 0.06,
          ),
          ...cart.map(
            (e) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Image.network(e.designUrl),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${e.name}",
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${e.price}',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        width: 181 / 375 * width,
                        height: 250 / 812 * height,
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
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Size",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "M",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            width: 115 / 375 * width,
                            height: 36 / 812 * height,
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
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Color",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 35 / 375 * width,
                                  height: 25 / 812 * height,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            width: 115 / 375 * width,
                            height: 36 / 812 * height,
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
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 24,
                                    height: 23.97,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(FontAwesomeIcons.plus),
                                  ),
                                ),
                                Text(
                                  "1",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(FontAwesomeIcons.minus),
                                  ),
                                )
                              ],
                            ),
                            width: 115 / 375 * width,
                            height: 36 / 812 * height,
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
                        ],
                      ),
                    )
                  ],
                ),
                width: 351 / 375 * width,
                height: 198 * 1.25 / 812 * height,
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
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/images/truck.svg'),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Arrives by July 1",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              width: 351 / 375 * width,
              height: 40 / 812 * height,
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
            ),
          ),
          SizedBox(
            height: 20 / 812 * height,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32.0, 20.0, 32.0, 20.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, createRoute(FinalOrderPage()));
              },
              child: Container(
                width: 165,
                height: 52,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Checkout",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(FontAwesomeIcons.chevronRight),
                    )
                  ],
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
          ),
        ],
      ),
    );
  }
}
