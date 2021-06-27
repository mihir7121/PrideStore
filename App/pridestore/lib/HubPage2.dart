import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pridestore/GlobalVars.dart';
import 'package:pridestore/HubPage3.dart';
import 'package:pridestore/models/Product.dart';

import 'models/User.dart';

class CreateHubPage2 extends StatefulWidget {
  AppUser? appUser;
  CreateHubPage2({this.appUser});
  @override
  _CreateHubPage2State createState() => _CreateHubPage2State(appUser: appUser);
}

class _CreateHubPage2State extends State<CreateHubPage2> {
  AppUser? appUser;
  final FirebaseAuth auth = FirebaseAuth.instance;
  var _selectedFile;

  var downloadAdresss;

  bool? isApparelChecked = false;

  bool? isOthersChecked = false;

  String? objectType = '';

  Product? product;

  _CreateHubPage2State({this.appUser});
  ImagePicker picker = ImagePicker();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _nameController.text = appUser!.name;
    _emailController.text = appUser!.email;
  }

  Future uploadImage() async {
    final User? user = auth.currentUser;

    if (_selectedFile == null) return null;
    Reference reference =
        FirebaseStorage.instance.ref().child('${DateTime.now()}');
    UploadTask uploadTask = reference.putFile(_selectedFile);
    // ignore: unused_local_variable
    TaskSnapshot snapshot = await uploadTask;
    downloadAdresss = await reference.getDownloadURL();
    print(downloadAdresss);
  }

  getImage(ImageSource source, BuildContext context) async {
    var image = await picker.getImage(source: source, imageQuality: 0);

    this.setState(() {
      if (image != null) {
        _selectedFile = File(image.path);
        print(_selectedFile);
      }
    });
  }

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
            mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(width: 65 / 375 * width),
                    SizedBox(
                      //width: 135,
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
              SizedBox(height: 40),
              SizedBox(
                width: 113 / 375 * width,
                height: 46 / 812 * height,
                child: Text(
                  "Details",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 351 / 375 * width,
                // height: 503 / 812 * height,
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
                  left: 15,
                  right: 9,
                  top: 15,
                  bottom: 23,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 210 / 375 * width,
                      height: 30 / 812 * height,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                        child: Text(
                          "Enter Your Name",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.43 / 812 * height),
                    Container(
                      child: TextField(
                        onChanged: (val) {
                          setState(() {
                            _nameController.text = val;
                          });
                        },
                        controller: _nameController,
                        style: GoogleFonts.poppins(),
                        decoration: InputDecoration(
                            hintText: "Name",
                            contentPadding:
                                EdgeInsets.fromLTRB(15.0, 5.0, 0.0, 0.0),
                            border: InputBorder.none),
                        obscureText: false,
                      ),
                      width: 322 / 375 * width,
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
                    ),
                    SizedBox(height: 15.43 / 812 * height),
                    SizedBox(
                      width: 217 / 375 * width,
                      height: 30 / 812 * height,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: Text(
                          "Enter Your Email",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.43 / 812 * height),
                    Container(
                      child: TextField(
                        onChanged: (val) {
                          setState(() {
                            _emailController.text = val;
                          });
                        },
                        controller: _emailController,
                        style: GoogleFonts.poppins(),
                        decoration: InputDecoration(
                            hintText: "pridestore@biz.com",
                            contentPadding:
                                EdgeInsets.fromLTRB(15.0, 5.0, 0.0, 0.0),
                            border: InputBorder.none),
                        obscureText: false,
                      ),
                      width: 322 / 375 * width,
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
                    ),
                    SizedBox(height: 15.43 / 812 * height),
                    SizedBox(
                      width: 210 / 375 * width,
                      height: 30 / 812 * height,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                        child: Text(
                          "Add Your Design",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.43),
                    _selectedFile == null
                        ? InkWell(
                            onTap: () {
                              getImage(ImageSource.gallery, context);
                            },
                            child: Container(
                              width: 322 * 0.25 / 375 * width,
                              height: 52 * 0.75 / 812 * height,
                              child: Center(
                                child: Text(
                                  "Add",
                                  style: GoogleFonts.poppins(),
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
                          )
                        : Container(
                            child: Image.file(_selectedFile),
                            width: 322 / 375 * width,
                            // height: 52 / 812 * height,
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
                    SizedBox(height: 15.43 / 812 * height),
                    SizedBox(
                      width: 230 / 375 * width,
                      height: 35 / 812 * height,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: Text(
                          "Enter the Category",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.43 / 812 * height),
                    // Container(
                    //   child: TextField(
                    //     onChanged: (val){

                    //     },
                    //     // controller: _emailController,
                    //     style: GoogleFonts.poppins(),
                    //     decoration: InputDecoration(
                    //         hintText: "Enter Category",
                    //         contentPadding:
                    //             EdgeInsets.fromLTRB(15.0, 5.0, 0.0, 0.0),
                    //         border: InputBorder.none),
                    //     obscureText: false,
                    //   ),
                    //   width: 322 / 375 * width,
                    //   height: 52 / 812 * height,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(14),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Color(0x3f000000),
                    //         blurRadius: 4,
                    //         offset: Offset(0, 4),
                    //       ),
                    //     ],
                    //     color: Colors.white,
                    //   ),
                    // ),
                    RadioListTile<String>(
                        value: "Apparel",
                        groupValue: objectType,
                        selectedTileColor: Colors.white,
                        activeColor: Colors.white,
                        selected: isApparelChecked!,
                        title: Text(
                          'Apparel',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() {
                            isApparelChecked = true;
                            isOthersChecked = false;
                            objectType = val;
                          });
                        }),
                    RadioListTile<String>(
                        value: "Others",
                        groupValue: objectType,
                        selectedTileColor: Colors.white,
                        activeColor: Colors.white,
                        selected: isApparelChecked!,
                        title: Text(
                          'Others',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() {
                            isApparelChecked = false;
                            isOthersChecked = true;
                            objectType = val;
                          });
                        }),
                    // CheckboxListTile(
                    //     selectedTileColor: Colors.white,
                    //     checkColor: Colors.white,
                    //     activeColor: Colors.white,
                    //     selected: isApparelChecked!,
                    //     title: Text(
                    //       'Apparel',
                    //       style: GoogleFonts.poppins(
                    //         color: Colors.white,
                    //         fontSize: 18.0,
                    //       ),
                    //     ),
                    //     value: isApparelChecked,
                    //     onChanged: (val) {
                    //       setState(() {
                    //         isApparelChecked = val;
                    //       });
                    //     }),
                    // CheckboxListTile(
                    //     selectedTileColor: Colors.white,
                    //     checkColor: Colors.white,
                    //     activeColor: Colors.white,
                    //     selected: isOthersChecked!,
                    //     title: Text(
                    //       'Others',
                    //       style: GoogleFonts.poppins(
                    //         color: Colors.white,
                    //         fontSize: 18.0,
                    //       ),
                    //     ),
                    //     value: isOthersChecked,
                    //     onChanged: (val) {
                    //       setState(() {
                    //         isOthersChecked = val;
                    //       });
                    //     }),
                    SizedBox(height: 15.43 / 812 * height),
                    InkWell(
                      onTap: () async {
                        uploadImage().then((value) async {
                          product = Product(
                            description: "A new design",
                            designUrl: downloadAdresss,
                            designer: _nameController.text,
                            id: "${DateTime.now()}-${appUser!.uid}",
                            name: "New Product",
                            price: "\$80",
                            type: objectType,
                          );
                          print(downloadAdresss);
                          await FirebaseFirestore.instance
                              .collection('products')
                              .doc('${product!.id}')
                              .set({
                            "description": product!.description,
                            "designUrl": downloadAdresss,
                            "designer": product!.designer,
                            "id": product!.id,
                            "name": product!.name,
                            "price": product!.price,
                            "type": objectType,
                          }).then((value) => print("Value set"));
                          Navigator.pushAndRemoveUntil(context,
                              createRoute(CreateHubPage3()), (route) => false);
                        });
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
                            Center(
                              child: SizedBox(
                                width: 88 / 375 * width,
                                height: 34 / 812 * height,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*
DropdownButton<String>(
                      underline: Divider(color: Colors.grey[850]),
                      hint: Text("Enter Gender"),
                      items:
                          genders.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedgender = val;
                        });
                      },
                      value: selectedgender,
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                      dropdownColor: Colors.grey[850],
                    ),
*/ 

/*

*/