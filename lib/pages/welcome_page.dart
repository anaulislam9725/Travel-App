import 'package:flutter/material.dart';
import 'package:ui_design/pages/signIn_to_DD.dart';
import 'package:ui_design/utils/appColors.dart';

class WelcomePage extends StatelessWidget {
  static final String path = "/WelcomePage";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Text(
                    "Welcome to the",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "world of discounts",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    "Make your travel simple. Get awsome deals and save\n   more than 60% of travel cost! Enjoy your Traveling! ",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.6),
                      fontSize: 14,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 48),
                    child: Container(
                      height: 1.5,
                      width: 130,
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36, right: 36),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SignInToDD.path);
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Get Started Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 12),
                              Image.asset(
                                "assets/arrow.png",
                                color: Colors.white,
                                height: 60,
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
