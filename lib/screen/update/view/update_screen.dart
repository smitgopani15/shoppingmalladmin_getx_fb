import 'dart:convert';
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
                        color: Color(0xffd7a5d3),
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
                              "Update Item",
                              style: GoogleFonts.secularOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color(0xffd7a5d3),
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
                        padding: EdgeInsets.only(
                          left: 2,
                        ),
                        child: Text(
                          "Product Name",
                          style: GoogleFonts.secularOne(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xffd7a5d3),
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
                          color: Color(0xffd7a5d3),
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
                                  controller: namec,
                                  cursorColor: Color(0xfffef2fe),
                                  style: GoogleFonts.secularOne(
                                    color: Color(0xfffef2fe),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Laptop,Mobile,A/c...",
                                    hintStyle: GoogleFonts.secularOne(
                                      color: Color(0xfffef2fe).withOpacity(0.6),
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
                            color: Color(0xffd7a5d3),
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
                          color: Color(0xffd7a5d3),
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
                                  controller: pricec,
                                  cursorColor: Color(0xfffef2fe),
                                  style: GoogleFonts.secularOne(
                                    color: Color(0xfffef2fe),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "10000,20000,30000...",
                                    hintStyle: GoogleFonts.secularOne(
                                      color: Color(0xfffef2fe).withOpacity(0.6),
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
                            color: Color(0xffd7a5d3),
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
                          color: Color(0xffd7a5d3),
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
                                  controller: descriptionc,
                                  cursorColor: Color(0xfffef2fe),
                                  style: GoogleFonts.secularOne(
                                    color: Color(0xfffef2fe),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "5G,12GB,A17 Chip...",
                                    hintStyle: GoogleFonts.secularOne(
                                      color: Color(0xfffef2fe).withOpacity(0.6),
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
                            color: Color(0xffd7a5d3),
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
                          color: Color(0xffd7a5d3),
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
                                  controller: offerc,
                                  cursorColor: Color(0xfffef2fe),
                                  style: GoogleFonts.secularOne(
                                    color: Color(0xfffef2fe),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "10,20,30...",
                                    hintStyle: GoogleFonts.secularOne(
                                      color: Color(0xfffef2fe).withOpacity(0.6),
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
                            color: Color(0xffd7a5d3),
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
                          color: Color(0xffd7a5d3),
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
                                color: Color(0xfffef2fe),
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
                                color: Color(0xfffef2fe),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: DropdownButtonFormField(
                                value: homeController.selectedUCategory.value,
                                items: homeController.uCategoryList
                                    .map(
                                      (element) => DropdownMenuItem(
                                        child: Text(element),
                                        value: element,
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  homeController.selectedUCategory.value =
                                      value!;
                                },
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xfffef2fe),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                dropdownColor: Color(0xffd7a5d3),
                                style: GoogleFonts.secularOne(
                                  color: Color(0xfffef2fe),
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
                            color: Color(0xffd7a5d3),
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
                          color: Color(0xffd7a5d3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Obx(
                          () => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              homeController.uImagePath.value == "empty"
                                  ? Image.memory(
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
                              SizedBox(
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
                                  width: 220,
                                  decoration: BoxDecoration(
                                    color: Color(0xfffef2fe),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 1,
                                    ),
                                    child: Text(
                                      "Update Image",
                                      style: GoogleFonts.secularOne(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xffd7a5d3),
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
                          Get.back();
                          homeController.resetUImage();
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffd7a5d3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 1,
                            ),
                            child: Text(
                              "Update Item",
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
