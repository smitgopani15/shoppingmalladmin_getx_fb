import 'dart:convert';
import 'dart:io';
import 'dart:io' as Io;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled_getx_fb/screen/home/controller/home_controller.dart';
import 'package:untitled_getx_fb/utils/fb_helper.dart';

class InsertScreen extends StatefulWidget {
  const InsertScreen({Key? key}) : super(key: key);

  @override
  State<InsertScreen> createState() => _InsertScreenState();
}

class _InsertScreenState extends State<InsertScreen> {
  HomeController homeController = Get.put(
    HomeController(),
  );
  TextEditingController namec = TextEditingController();
  TextEditingController pricec = TextEditingController();
  TextEditingController descriptionc = TextEditingController();
  TextEditingController offerc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Insert Item",
            style: GoogleFonts.secularOne(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 2,
                  ),
                  child: Text(
                    "Product Name",
                    style: GoogleFonts.secularOne(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                          Icons.devices_other,
                          color: Colors.black,
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
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            controller: namec,
                            cursorColor: Colors.black,
                            style: GoogleFonts.secularOne(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "Laptop,Mobile,A/c...",
                              hintStyle: GoogleFonts.secularOne(
                                color: Colors.black54,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 2,
                  ),
                  child: Text(
                    "Product Price",
                    style: GoogleFonts.secularOne(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                          Icons.currency_rupee,
                          color: Colors.black,
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
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            controller: pricec,
                            cursorColor: Colors.black,
                            style: GoogleFonts.secularOne(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "10000,20000,30000...",
                              hintStyle: GoogleFonts.secularOne(
                                color: Colors.black54,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 2,
                  ),
                  child: Text(
                    "Product Description",
                    style: GoogleFonts.secularOne(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                          Icons.description,
                          color: Colors.black,
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
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            controller: descriptionc,
                            cursorColor: Colors.black,
                            style: GoogleFonts.secularOne(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "5G,12GB,A17 Chip...",
                              hintStyle: GoogleFonts.secularOne(
                                color: Colors.black54,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 2,
                  ),
                  child: Text(
                    "Product Offer",
                    style: GoogleFonts.secularOne(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                          Icons.campaign,
                          color: Colors.black,
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
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            controller: offerc,
                            cursorColor: Colors.black,
                            style: GoogleFonts.secularOne(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              hintText: "10,20,30...",
                              hintStyle: GoogleFonts.secularOne(
                                color: Colors.black54,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 2,
                  ),
                  child: Text(
                    "Product Category",
                    style: GoogleFonts.secularOne(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Icon(
                          Icons.category,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                          bottom: 15,
                        ),
                        child: Container(
                          height: double.infinity,
                          width: 3,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: DropdownButtonFormField(
                          value: homeController.selectedICategory.value,
                          items: homeController.iCategoryList
                              .map(
                                (element) => DropdownMenuItem(
                                  child: Text(element),
                                  value: element,
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            homeController.selectedICategory.value = value!;
                          },
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          dropdownColor: Colors.white,
                          style: GoogleFonts.secularOne(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2,
                  ),
                  child: Text(
                    "Product Image",
                    style: GoogleFonts.secularOne(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Obx(
                    () => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        homeController.imagePath.value.isEmpty
                            ? Image.asset(
                                "assets/images/2.png",
                                height: 150,
                                width: 150,
                              )
                            : Image.file(
                                File(homeController.imagePath.value),
                                height: 150,
                                width: 150,
                              ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          onTap: () async {
                            ImagePicker imagePicker = ImagePicker();
                            XFile? xFile = await imagePicker.pickImage(
                              source: ImageSource.gallery,
                            );
                            homeController.imagePath.value = xFile!.path;
                          },
                          child: Container(
                            height: 50,
                            width: 220,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                              ),
                              child: Text(
                                "Choose Image",
                                style: GoogleFonts.secularOne(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
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
                    FbHelper.fbHelper.insertItem(
                      name: namec.text,
                      price: pricec.text,
                      description: descriptionc.text,
                      offer: offerc.text,
                      category: homeController.selectedICategory.value,
                      image: homeController.imagePath.value,
                    );
                    Get.back();
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 1,
                      ),
                      child: Text(
                        "Insert Item",
                        style: GoogleFonts.secularOne(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
