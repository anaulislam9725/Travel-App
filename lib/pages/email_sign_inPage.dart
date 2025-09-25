import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ui_design/controller/switcsController.dart';
import 'package:ui_design/pages/profile_page.dart';
import 'package:ui_design/utils/appColors.dart';
import 'package:ui_design/widget/coustomField.dart';

class EmailSignInPage extends StatefulWidget {
  static final String path = "/EmailSignInPage";
  const EmailSignInPage({super.key});

  @override
  State<EmailSignInPage> createState() => _EmailSignInPageState();
}

class _EmailSignInPageState extends State<EmailSignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ShowHideController controller = Get.put(ShowHideController());
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/LoginPage.png")),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image.asset("assets/logo.png", height: 110),
              ),
              SizedBox(height: h * .3),

              Column(
                children: [
                  Text(
                    "Email sign in",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 28),
                    child: Container(
                      height: 3,
                      width: 80,
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      bottom: 15,
                    ),
                    child: CustomField(
                      controller: emailController,
                      hintText: "Your email address",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      bottom: 15,
                    ),
                    child: Obx(
                      () => CustomField(
                        obscureText: controller.isHide.value,
                        controller: passwordController,
                        hintText: "A secure password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.buttonController();
                          },
                          icon: Icon(
                            controller.isHide.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 34),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ProfilePage.path);
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
                            "Continue",
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
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),
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
