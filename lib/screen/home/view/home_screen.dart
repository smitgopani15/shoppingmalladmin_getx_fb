import 'dart:convert';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled_getx_fb/screen/home/controller/home_controller.dart';
import 'package:untitled_getx_fb/screen/home/modal/home_modal.dart';
import 'package:untitled_getx_fb/utils/fb_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(
    HomeController(),
  );

  @override
  void initState() {
    super.initState();
    homeController.dataList.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffef2fe),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.teal,
                          size: 40,
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
                                  top: 7,
                                ),
                                child: Text(
                                  "Shopping City",
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
                      InkWell(
                        onTap: () {
                          FbHelper.fbHelper.signOut();
                          final snackBar = SnackBar(
                            elevation: 0,
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.transparent,
                            content: AwesomeSnackbarContent(
                              title: "Success",
                              message: "logout successfully !",
                              contentType: ContentType.success,
                            ),
                          );
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(snackBar);
                          Get.offAndToNamed('signin_screen');
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 6,
                          ),
                          child: Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.logout,
                              color: Colors.teal,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: StreamBuilder(
                    stream: FbHelper.fbHelper.readItem(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      } else if (snapshot.hasData) {
                        List<HomeModal> dataList = [];
                        QuerySnapshot? snapData = snapshot.data;
                        for (var x in snapData!.docs) {
                          Map? data = x.data() as Map;
                          String name = data['name'];
                          String price = data['price'];
                          String description = data['description'];
                          String offer = data['offer'];
                          String category = data['category'];
                          String? image = data['image'];
                          HomeModal homeModal = HomeModal(
                            name: name,
                            price: price,
                            category: category,
                            offer: offer,
                            description: description,
                            id: x.id,
                            image: image,
                          );
                          dataList.add(homeModal);
                        }
                        return ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                bottom: 10,
                                top: 10,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  homeController.dataList.clear();
                                  var id = dataList[index].id;
                                  var name = dataList[index].name;
                                  var description = dataList[index].description;
                                  var category = dataList[index].category;
                                  var price = dataList[index].price;
                                  var offer = dataList[index].offer;
                                  var image = dataList[index].image;
                                  UpdateModal updateModal = UpdateModal(
                                    id: id,
                                    description: description,
                                    offer: offer,
                                    category: category,
                                    price: price,
                                    name: name,
                                    image: image,
                                  );
                                  homeController.dataList.add(updateModal);
                                  homeController.selectedUCategory.value =
                                      "${homeController.dataList[0].category}";
                                  Get.toNamed('update_screen');
                                },
                                onDoubleTap: () {
                                  var id = dataList[index].id;
                                  FbHelper.fbHelper.deleteItem(
                                    id: id,
                                  );
                                  final snackBar = SnackBar(
                                    elevation: 0,
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    content: AwesomeSnackbarContent(
                                      title: "Success",
                                      message: "item delete successfully !",
                                      contentType: ContentType.success,
                                    ),
                                  );
                                  ScaffoldMessenger.of(context)
                                    ..hideCurrentSnackBar()
                                    ..showSnackBar(snackBar);
                                },
                                onLongPress: () {
                                  Get.toNamed('insert_screen');
                                },
                                child: Container(
                                  height: 150,
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
                                      top: 10,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          alignment: Alignment.center,
                                          child: dataList[index].image == null
                                              ? Image.asset(
                                                  "assets/images/2.png",
                                                  height: 150,
                                                  width: 150,
                                                )
                                              : Image.memory(
                                                  base64Decode(
                                                    dataList[index]
                                                        .image
                                                        .toString(),
                                                  ),
                                                  height: 150,
                                                  width: 150,
                                                ),
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
                                            color: Colors.teal,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: double.infinity,
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${dataList[index].name}",
                                                  style: GoogleFonts.secularOne(
                                                    color: Colors.teal,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "${dataList[index].description}",
                                                  style: GoogleFonts.secularOne(
                                                    color: Colors.teal,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "₹ ${dataList[index].price}.00",
                                                  style: GoogleFonts.secularOne(
                                                    color: Colors.teal,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  "${dataList[index].category}",
                                                  style: GoogleFonts.secularOne(
                                                    color: Colors.teal,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: dataList.length,
                        );
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.teal,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: FloatingActionButton(
                    onPressed: () {
                      Get.toNamed('insert_screen');
                    },
                    child: Icon(
                      Icons.add,
                      color: Color(0xfffef2fe),
                    ),
                    backgroundColor: Colors.teal,
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
