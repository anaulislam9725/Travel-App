import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui_design/controller/switcsController.dart';
import 'package:ui_design/pages/email_sign_inPage.dart';
import 'package:ui_design/utils/appColors.dart';
import 'package:ui_design/widget/coustomField.dart';
import 'package:ui_design/widget/mountainsContainer.dart';

class ProfilePage extends StatefulWidget {
  static final String path = "/ProfilePage";
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ShowHideController controller = Get.put(ShowHideController());

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            "assets/LoginPage.png",
            fit: BoxFit.cover,
            height: h,
            width: w,
          ),
          Container(
            height: 220,
            width: double.infinity,

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Almost There!",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                GetBuilder<ShowHideController>(
                  builder: (controller) {
                    return Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          controller.image != null
                              ? Container(
                                  decoration: BoxDecoration(
                                    border: BoxBorder.all(
                                      width: 2.5,
                                      color: Colors.black.withValues(
                                        alpha: 0.6,
                                      ),
                                    ),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: MemoryImage(controller.image!),
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    border: BoxBorder.all(
                                      width: 2.5,
                                      color: Colors.black.withValues(
                                        alpha: 0.6,
                                      ),
                                    ),
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        "https://t3.ftcdn.net/jpg/03/02/88/46/360_F_302884605_actpipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg",
                                      ),
                                    ),
                                  ),
                                ),
                          IconButton(
                            onPressed: () {
                              ShowImagePickarOption(context);
                            },
                            icon: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[800],
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 160, left: 22, right: 22),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 12),
                      child: CustomField(
                        controller: controller.nameController,
                        hintText: "Full Name",
                      ),
                    ),
                    CustomField(
                      controller: controller.numberContainer,

                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      hintText: "Phone",
                      prefixIcon: Container(
                        width: 86,
                        child: Row(
                          children: [
                            SizedBox(width: 12),
                            Text(
                              "+880",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Container(
                                height: 30,
                                width: 2,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12),
                      child: dateOfBirthContainer(),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 58,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.fillColor,
                          ),
                          child: Center(
                            child: Text(
                              "Gender",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white.withValues(alpha: 0.7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        cityContainer(),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 26, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            "What do you prefer?",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MountainsContainer(
                            color: AppColors.fillColor,
                            text: "Mountains",
                            textcolor: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: MountainsContainer(
                              color: AppColors.fillColor,
                              text: "Rivers",
                              textcolor: Colors.white,
                            ),
                          ),
                          MountainsContainer(
                            color: Colors.white,
                            text: "Desert",
                            textcolor: AppColors.primaryColor,
                          ),
                          Gap(8),
                          MountainsContainer(
                            color: Colors.white,
                            text: "Sea",
                            textcolor: AppColors.primaryColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Text(
                          "Enable location for better experience",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Obx(
                            () => CupertinoSwitch(
                              inactiveTrackColor: Colors.white.withValues(
                                alpha: .4,
                              ),
                              value: controller.isHide.value,
                              onChanged: (bool value) {
                                controller.buttonController();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 22),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            Navigator.pop(context, EmailSignInPage.path);
                          },
                          child: Container(
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Go Back",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Skip for now",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container cityContainer() {
    return Container(
      height: 58,
      width: 238,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.fillColor,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "City",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white.withValues(alpha: 0.7),
              ),
            ),
            Text("Dhaka", style: TextStyle(fontSize: 22, color: Colors.white)),
          ],
        ),
      ),
    );
  }

  Container dateOfBirthContainer() {
    return Container(
      height: 58,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: AppColors.fillColor,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Birthday",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),

              Text(
                "day",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 18,
                ),
              ),
              Container(
                height: 30,
                width: 2,
                color: Colors.white.withValues(alpha: 0.7),
              ),
              Text(
                "month",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 18,
                ),
              ),
              Container(
                height: 30,
                width: 2,
                color: Colors.white.withValues(alpha: 0.7),
              ),

              Text(
                "year",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void ShowImagePickarOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: AppColors.bottomColor,
      context: context,
      builder: (builder) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width,

          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      controller.pickImageFormGallery(context);
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.image, size: 70, color: Colors.white),
                          Text(
                            "Gallery",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: InkWell(
                    onTap: () {
                      controller.pickImageFormCamera(context);
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Icon(Icons.camera_alt, size: 70, color: Colors.white),
                          Text("Camera", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
