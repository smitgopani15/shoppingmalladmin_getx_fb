import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../modal/home_modal.dart';

class HomeController extends GetxController {
  var selectedICategory = "Other".obs;
  var resetSelectedICategory = "Other".obs;
  RxList<String> iCategoryList = <String>[
    "Mobiles",
    "Wearables",
    "TVs",
    "Monitors",
    "Tablets",
    "Laptops",
    "Computers",
    "Printers",
    "Scanners",
    "Other",
  ].obs;

  void resetICategory() {
    selectedICategory.value = resetSelectedICategory.value;
  }

  List<UpdateModal> dataList = <UpdateModal>[];

  var selectedUCategory = "Other".obs;
  RxList<String> uCategoryList = <String>[
    "Mobiles",
    "Wearables",
    "TVs",
    "Monitors",
    "Tablets",
    "Laptops",
    "Computers",
    "Printers",
    "Scanners",
    "Other",
  ].obs;

  RxString iImagePath = "empty".obs;

  RxString iDefaultImagePath = "".obs;

  RxString uImagePath = "".obs;

  void resetIImage() {
    iImagePath.value = "empty";
  }

  void resetUImage() {
    uImagePath.value = "";
  }

  String convertFileImageToBase64String(String image) {
    File imageFile = File(image);
    List<int> imageBytes = imageFile.readAsBytesSync();
    String base64String = base64Encode(imageBytes);
    return base64String;
  }
}
