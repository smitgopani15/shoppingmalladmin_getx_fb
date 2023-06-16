import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled_getx_fb/screen/home/controller/home_controller.dart';
import '../../../utils/fb_helper.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  TextEditingController resetemailc = TextEditingController();
  HomeController homeController = Get.put(
    HomeController(),
  );

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffef2fe),
        body: Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: GoogleFonts.secularOne(
                        color: Colors.teal.withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed('signup_screen');
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.secularOne(
                          color: Colors.teal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
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
                                obscureText: homeController.signinEye.value,
                                cursorColor: Colors.teal,
                                style: GoogleFonts.secularOne(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      homeController.signinEye.value =
                                          !homeController.signinEye.value;
                                    },
                                    icon: homeController.signinEye.value
                                        ? Icon(
                                            Icons.visibility_off,
                                            color: Colors.teal,
                                          )
                                        : Icon(
                                            Icons.visibility,
                                            color: Colors.teal,
                                          ),
                                  ),
                                  suffixIconColor: Colors.black,
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
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Color(0xfffef2fe),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.all(30),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Forgot Password",
                                      style: GoogleFonts.secularOne(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.teal,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.teal,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Enter your email and we'll send you a link to reset your password.",
                                  style: GoogleFonts.secularOne(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.teal.withOpacity(0.6),
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
                                            controller: resetemailc,
                                            cursorColor: Colors.teal,
                                            style: GoogleFonts.secularOne(
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: "Email",
                                              hintStyle: GoogleFonts.secularOne(
                                                color: Colors.teal
                                                    .withOpacity(0.6),
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
                                InkWell(
                                  onTap: () {
                                    FbHelper.fbHelper.resetPassword(
                                      email: resetemailc.text,
                                    );
                                    Get.back();
                                  },
                                  child: Container(
                                    height: 65,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 1,
                                      ),
                                      child: Text(
                                        "Send Email",
                                        style: GoogleFonts.secularOne(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Color(0xfffef2fe),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Forgot Password ?",
                      style: GoogleFonts.secularOne(
                        color: Colors.teal,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
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
                          color: Color(0xfffef2fe),
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
