// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled_getx_fb/screen/home/controller/home_controller.dart';
import 'package:untitled_getx_fb/utils/fb_helper.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({Key? key}) : super(key: key);

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  HomeController homeController = Get.put(
    HomeController(),
  );
  var name;
  var offer;
  var description;
  var price;
  var id;
  var imagePath;
  var image;

  @override
  void initState() {
    super.initState();
    name = homeController.dataList[0].name;
    id = homeController.dataList[0].id;
    description = homeController.dataList[0].description;
    offer = homeController.dataList[0].offer;
    price = homeController.dataList[0].price;
    image = homeController.dataList[0].image;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController namec = TextEditingController(text: "$name");
    TextEditingController pricec = TextEditingController(text: "$price");
    TextEditingController descriptionc =
        TextEditingController(text: "$description");
    TextEditingController offerc = TextEditingController(text: "$offer");
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffef2fe),
        body: Column(
          children: [
            SizedBox(
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
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.teal,
                        size: 25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 2,
                            ),
                            child: Text(
                              "Update Item",
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
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  top: 10,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                        ),
                        child: Text(
                          "Product Name",
                          style: GoogleFonts.secularOne(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 3,
                          ),
                          color: const Color(0xfffef2fe),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Icon(
                                  Icons.devices_other,
                                  color: Colors.teal,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                child: Container(
                                  height: double.infinity,
                                  width: 3,
                                  color: Colors.teal,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: namec,
                                  cursorColor: Colors.teal,
                                  style: GoogleFonts.secularOne(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Laptop,Mobile,A/c...",
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
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                        ),
                        child: Text(
                          "Product Price",
                          style: GoogleFonts.secularOne(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 3,
                          ),
                          color: const Color(0xfffef2fe),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Icon(
                                  Icons.currency_rupee,
                                  color: Colors.teal,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                child: Container(
                                  height: double.infinity,
                                  width: 3,
                                  color: Colors.teal,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: pricec,
                                  cursorColor: Colors.teal,
                                  style: GoogleFonts.secularOne(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "10000,20000,30000...",
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
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                        ),
                        child: Text(
                          "Product Description",
                          style: GoogleFonts.secularOne(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 3,
                          ),
                          color: const Color(0xfffef2fe),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Icon(
                                  Icons.description,
                                  color: Colors.teal,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                child: Container(
                                  height: double.infinity,
                                  width: 3,
                                  color: Colors.teal,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: descriptionc,
                                  cursorColor: Colors.teal,
                                  style: GoogleFonts.secularOne(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "5G,12GB,A17 Chip...",
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
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                        ),
                        child: Text(
                          "Product Offer",
                          style: GoogleFonts.secularOne(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 3,
                          ),
                          color: const Color(0xfffef2fe),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Icon(
                                  Icons.campaign,
                                  color: Colors.teal,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                child: Container(
                                  height: double.infinity,
                                  width: 3,
                                  color: Colors.teal,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: offerc,
                                  cursorColor: Colors.teal,
                                  style: GoogleFonts.secularOne(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "10,20,30...",
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
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                        ),
                        child: Text(
                          "Product Category",
                          style: GoogleFonts.secularOne(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 3,
                          ),
                          color: const Color(0xfffef2fe),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Icon(
                                  Icons.category,
                                  color: Colors.teal,
                                  size: 30,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                bottom: 12,
                              ),
                              child: Container(
                                height: double.infinity,
                                width: 3,
                                color: Colors.teal,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: DropdownButtonFormField(
                                value: homeController.selectedUCategory.value,
                                items: homeController.uCategoryList
                                    .map(
                                      (element) => DropdownMenuItem(
                                        value: element,
                                        child: Text(element),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  homeController.selectedUCategory.value =
                                      value!;
                                },
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.teal,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                                dropdownColor: const Color(0xfffef2fe),
                                style: GoogleFonts.secularOne(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 2,
                        ),
                        child: Text(
                          "Product Image",
                          style: GoogleFonts.secularOne(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 3,
                          ),
                          color: const Color(0xfffef2fe),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Obx(
                          () => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              homeController.uImagePath.value == "empty"
                                  ? image == null
                                      ? Image.asset(
                                          "assets/images/2.png",
                                          height: 150,
                                          width: 150,
                                        )
                                      : Image.memory(
                                          base64Decode(image),
                                          height: 150,
                                          width: 150,
                                        )
                                  : Image.memory(
                                      base64Decode(
                                        homeController.uImagePath.value,
                                      ),
                                      height: 150,
                                      width: 150,
                                    ),
                              const SizedBox(
                                height: 25,
                              ),
                              InkWell(
                                onTap: () async {
                                  ImagePicker imagePicker = ImagePicker();
                                  XFile? xFile = await imagePicker.pickImage(
                                    source: ImageSource.gallery,
                                  );
                                  homeController.uImagePath.value =
                                      homeController
                                          .convertFileImageToBase64String(
                                    xFile!.path,
                                  );
                                },
                                child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.teal,
                                      width: 3,
                                    ),
                                    color: const Color(0xfffef2fe),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 1,
                                    ),
                                    child: Text(
                                      "Update Image",
                                      style: GoogleFonts.secularOne(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.teal,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          FbHelper.fbHelper.updateItem(
                            id: id,
                            name: namec.text,
                            price: pricec.text,
                            description: descriptionc.text,
                            offer: offerc.text,
                            category: homeController.selectedUCategory.value,
                            image: homeController.uImagePath.value == "empty"
                                ? image
                                : homeController.uImagePath.value,
                          );
                          final snackBar = SnackBar(
                            elevation: 0,
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.transparent,
                            content: AwesomeSnackbarContent(
                              title: "Success",
                              message: "item Update successfully !",
                              contentType: ContentType.success,
                            ),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(snackBar);
                          Get.back();
                          homeController.resetUImage();
                          homeController.dataList.clear();
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 1,
                            ),
                            child: Text(
                              "Update Item",
                              style: GoogleFonts.secularOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: const Color(0xfffef2fe),
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
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('name', name));
  }
}
