import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/fb_helper.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef2fe),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Admin Only !",
                style: GoogleFonts.secularOne(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/1.png"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Color(0xfffef2fe),
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Container(
                              height: double.infinity,
                              width: 3,
                              color: Color(0xfffef2fe),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: TextField(
                              controller: emailc,
                              cursorColor: Color(0xfffef2fe),
                              style: GoogleFonts.secularOne(
                                color: Color(0xfffef2fe),
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: GoogleFonts.secularOne(
                                  color: Color(0xfffef2fe),
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
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Color(0xfffef2fe),
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Container(
                              height: double.infinity,
                              width: 3,
                              color: Color(0xfffef2fe),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: TextField(
                              controller: passwordc,
                              obscureText: true,
                              cursorColor: Color(0xfffef2fe),
                              style: GoogleFonts.secularOne(
                                color: Color(0xfffef2fe),
                                fontWeight: FontWeight.w500,
                              ),
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: GoogleFonts.secularOne(
                                  color: Color(0xfffef2fe),
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
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sign In",
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
                          onPressed: () async {
                            String? msg = await FbHelper.fbHelper.signIn(
                              email: emailc.text,
                              password: passwordc.text,
                            );
                            if (msg == "login successfully !") {
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
                              Get.offAndToNamed('home_screen');
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
                            color: Color(0xfffef2fe),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
