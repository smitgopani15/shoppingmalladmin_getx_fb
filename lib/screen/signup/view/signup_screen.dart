import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled_getx_fb/utils/fb_helper.dart';

import '../../home/controller/home_controller.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController fnamec = TextEditingController();
  TextEditingController lnamec = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  HomeController homeController = Get.put(
    HomeController(),
  );

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffef2fe),
        body: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.teal,
                        size: 25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 2,
                            ),
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.secularOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.teal,
                                letterSpacing: 1,
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            height: 120,
                            width: 120,
                            alignment: Alignment.center,
                            child: Image.asset("assets/images/1.png"),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            ),
                            color: Color(0xfffef2fe),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Icon(
                                    Icons.looks_one_rounded,
                                    color: Colors.teal,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                  ),
                                  child: Container(
                                    height: double.infinity,
                                    width: 3,
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: fnamec,
                                    cursorColor: Colors.teal,
                                    style: GoogleFonts.secularOne(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "First Name",
                                      hintStyle: GoogleFonts.secularOne(
                                        color: Colors.teal.withOpacity(0.6),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            ),
                            color: Color(0xfffef2fe),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Icon(
                                    Icons.looks_two_rounded,
                                    color: Colors.teal,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                  ),
                                  child: Container(
                                    height: double.infinity,
                                    width: 3,
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: lnamec,
                                    cursorColor: Colors.teal,
                                    style: GoogleFonts.secularOne(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Last Name",
                                      hintStyle: GoogleFonts.secularOne(
                                        color: Colors.teal.withOpacity(0.6),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            ),
                            color: Color(0xfffef2fe),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Icon(
                                    Icons.email,
                                    color: Colors.teal,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                  ),
                                  child: Container(
                                    height: double.infinity,
                                    width: 3,
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: TextField(
                                    controller: emailc,
                                    cursorColor: Colors.teal,
                                    style: GoogleFonts.secularOne(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: GoogleFonts.secularOne(
                                        color: Colors.teal.withOpacity(0.6),
                                        fontWeight: FontWeight.w500,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.teal,
                              width: 3,
                            ),
                            color: Color(0xfffef2fe),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 10,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.teal,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                  ),
                                  child: Container(
                                    height: double.infinity,
                                    width: 3,
                                    color: Colors.teal,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Obx(
                                    () => TextField(
                                      controller: passwordc,
                                      obscureText:
                                          homeController.signupEye.value,
                                      cursorColor: Colors.teal,
                                      style: GoogleFonts.secularOne(
                                        color: Colors.teal,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            homeController.signupEye.value =
                                                !homeController.signupEye.value;
                                          },
                                          icon: homeController.signupEye.value
                                              ? Icon(
                                                  Icons.visibility_off,
                                                  color: Colors.teal,
                                                )
                                              : Icon(
                                                  Icons.visibility,
                                                  color: Colors.teal,
                                                ),
                                        ),
                                        suffixIconColor: Colors.teal,
                                        hintText: "Password",
                                        hintStyle: GoogleFonts.secularOne(
                                          color: Colors.teal.withOpacity(0.6),
                                          fontWeight: FontWeight.w500,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign Up",
                              style: GoogleFonts.secularOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.teal,
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.teal,
                              child: IconButton(
                                color: Color(0xfffef2fe),
                                onPressed: () async {
                                  var post = "admin";
                                  String? msg = await FbHelper.fbHelper.signUp(
                                    email: emailc.text,
                                    password: passwordc.text,
                                  );
                                  FbHelper.fbHelper.insertUser(
                                    email: emailc.text,
                                    post: post,
                                  );
                                  if (msg == "account successfully created !") {
                                    final snackBar = SnackBar(
                                      elevation: 0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.transparent,
                                      content: AwesomeSnackbarContent(
                                        title: "Success",
                                        message: "${msg}",
                                        contentType: ContentType.success,
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(snackBar);
                                    Get.back();
                                  } else {
                                    final snackBar = SnackBar(
                                      elevation: 0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.transparent,
                                      content: AwesomeSnackbarContent(
                                        title: "Failure",
                                        message: "${msg}",
                                        contentType: ContentType.failure,
                                      ),
                                    );
                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(snackBar);
                                  }
                                },
                                icon: Icon(
                                  Icons.arrow_forward,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
