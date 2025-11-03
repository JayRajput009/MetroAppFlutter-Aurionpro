import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metroapp_flutter/components/custom_button_widget.dart';
import 'package:metroapp_flutter/components/custom_inputfeild_widget.dart';
import 'package:metroapp_flutter/components/custom_label_text_widget.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // login form
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 18.spMin,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Register today to book tickets, save your travel history, and enjoy cashless rides across the city.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontSize: 13.spMin,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomLabelTextWidget(
                        labelText: 'Name',
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      // Name Input feild
                      const CustomInputfeild(
                        labelText: 'Enter full name',
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      CustomLabelTextWidget(
                        labelText: 'Email',
                      ),

                      SizedBox(
                        height: 5.h,
                      ),
                      // email input field
                      const CustomInputfeild(
                        labelText: 'Enter email address',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          // button at bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120.h,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 30.h),
                child: Column(
                  children: [
                    CustomButton(
                      buttonText: 'Send Otp',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 13.spMin,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          "Login Account",
                          style: TextStyle(
                            color: Colors.teal,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 14.spMin,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
