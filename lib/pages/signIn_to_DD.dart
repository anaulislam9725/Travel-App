import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ui_design/pages/email_sign_inPage.dart';
import 'package:ui_design/utils/appColors.dart';
import 'package:ui_design/utils/dimensions.dart';
import 'package:ui_design/utils/styles.dart';
import 'package:ui_design/widget/socialContainer.dart';

class SignInToDD extends StatelessWidget {
  static final String path = "/SignInToDD";
  const SignInToDD({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/GetStarted.png", fit: BoxFit.cover, height: h),
          Positioned(
            top: 60,
            right: 0,
            left: 0,
            child: Image.asset("assets/logo.png", height: 110),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Center(
              child: Padding(
                padding: Dimensions.appDefaultPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Sign in to DD",
                      style: Styles.titleLarge.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 18),
                    Container(
                      height: 3,
                      width: 80,
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                    Gap(44),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              
                            },
                            child: SocialContainer(
                              image: Image.asset("assets/google.png"),
                              text: "Continue with Google",
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: SocialContainer(
                              image: Image.asset("assets/communication.png"),
                              text: "Continue with Facebook",
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: SocialContainer(
                              image: Image.asset("assets/apple.png"),
                              text: "Continue with Apple",
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, EmailSignInPage.path);
                      },
                      child: Container(
                        height: 60,
                        width: 220,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.whiteColor),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Center(
                          child: Text(
                            "Continue with Email",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      "Skip for now",
                      style: Styles.baseStyle.copyWith(
                        fontSize: 14,
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
}


 // CocialContainer(
  //   image: Image.asset("assets/google.png"),
 // ),