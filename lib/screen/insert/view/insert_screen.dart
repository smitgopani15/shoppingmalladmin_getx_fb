import 'dart:convert';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
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
                              "Insert Item",
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
                                  textInputAction: TextInputAction.next,
                                  style: GoogleFonts.secularOne(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Laptop, Mobile, A/c...",
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
                                  textInputAction: TextInputAction.next,
                                  cursorColor: Colors.teal,
                                  style: GoogleFonts.secularOne(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "10000, 20000, 30000...",
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
                                  textInputAction: TextInputAction.next,
                                  cursorColor: Colors.teal,
                                  style: GoogleFonts.secularOne(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "5G, 12GB, A17 Chip...",
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
                                  textInputAction: TextInputAction.next,
                                  cursorColor: Colors.teal,
                                  style: GoogleFonts.secularOne(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "10, 20, 30...",
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
                                value: homeController.selectedICategory.value,
                                items: homeController.iCategoryList
                                    .map(
                                      (element) => DropdownMenuItem(
                                        value: element,
                                        child: Text(element),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  homeController.selectedICategory.value =
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                              () => homeController.iImagePath.value == "empty"
                                  ? Image.asset(
                                      "assets/images/2.png",
                                      height: 150,
                                      width: 150,
                                    )
                                  : Image.memory(
                                      base64Decode(
                                        homeController.iImagePath.value,
                                      ),
                                      height: 150,
                                      width: 150,
                                    ),
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
                                homeController.iImagePath.value = homeController
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
                                    "Choose Image",
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
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () async {
                          FbHelper.fbHelper.insertItem(
                            name: namec.text,
                            price: pricec.text,
                            description: descriptionc.text,
                            offer: offerc.text,
                            category: homeController.selectedICategory.value,
                            image: homeController.iImagePath.value == "empty"
                                ? null
                                : homeController.iImagePath.value,
                          );
                          final snackBar = SnackBar(
                            elevation: 0,
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.transparent,
                            content: AwesomeSnackbarContent(
                              title: "Success",
                              message: "item add successfully !",
                              contentType: ContentType.success,
                            ),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(snackBar);
                          Get.back();
                          homeController.resetICategory();
                          homeController.resetIImage();
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
                              "Insert Item",
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
}
