import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metroapp_flutter/components/custom_button_widget.dart';
import 'package:pinput/pinput.dart';

class Otpscreen extends StatefulWidget {
  final String email;
  const Otpscreen({super.key, required this.email});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  final TextEditingController _otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final defaultpintheme = PinTheme(
      width: 50.w,
      height: 50.h,
      textStyle: TextStyle(
          fontSize: 18.spMin,
          color: Colors.teal,
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontWeight: FontWeight.w500),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(60.r)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
                    child: Icon(
                      Icons.email_outlined,
                      size: 27.h,
                      color: Colors.teal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Verify Email",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 18.spMin,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Verification code has been send to",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 13.spMin,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      widget.email,
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 14.spMin,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          Pinput(
                            controller: _otpController,
                            length: 6,
                            defaultPinTheme: defaultpintheme,
                            focusedPinTheme: defaultpintheme.copyWith(
                              decoration: defaultpintheme.decoration!.copyWith(
                                color: Colors.teal.withOpacity(0.1),
                                border: Border.all(color: Colors.teal),
                              ),
                            ),
                            pinAnimationType: PinAnimationType.fade,
                            showCursor: true,
                            // on change
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 90.h,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 15.h),
                child: Column(
                  children: [
                    CustomButton(
                      buttonText: 'Continue',
                    ),
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
